/*********************************************************************
 * Software License Agreement (BSD License)
 *
 *  Copyright (c) 2015, PickNik LLC
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *   * Neither the name of PickNik LLC nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 *********************************************************************/

/* Original Author: Dave Coleman
Desc:   Helper ros_control hardware interface that loads configurations
*/

//PURPOSE: Stuff used by to run both hw and sim interfaces

#include <ros_control_boilerplate/frc_robot_interface.h>
#include <limits>

namespace ros_control_boilerplate
{

	FRCRobotInterface::FRCRobotInterface(ros::NodeHandle &nh, urdf::Model *urdf_model) :
		name_("generic_hw_interface")
		, nh_(nh)
		, num_can_talon_srxs_(0)
		, num_digital_inputs_(0)
		, num_digital_outputs_(0)
		, num_pwm_(0)
		, num_solenoids_(0)
		, num_double_solenoids_(0)
		, num_compressors_(0)
		, num_rumbles_(0)
		, num_imu_(0)
		, num_analog_inputs_(0)
		, num_dummy_joints_(0)
		, num_ready_signals_(0)
		, robot_code_ready_(false)
	{
		// Check if the URDF model needs to be loaded
		if (urdf_model == NULL)
			loadURDF(nh, "robot_description");
		else
			urdf_model_ = urdf_model;

		// Load rosparams
		ros::NodeHandle rpnh(nh_, "hardware_interface"); // TODO(davetcoleman): change the namespace to "frc_robot_interface" aka name_

		// Read a list of joint information from ROS parameters.  Each entry in the list
		// specifies a name for the joint and a hardware ID corresponding
		// to that value.  Joint types and locations are specified (by name)
		// in a URDF file loaded along with the controller.
		XmlRpc::XmlRpcValue joint_param_list;
		if (!rpnh.getParam("joints", joint_param_list))
			throw std::runtime_error("No joints were specified.");
		for (int i = 0; i < joint_param_list.size(); i++)
		{
			XmlRpc::XmlRpcValue &joint_params = joint_param_list[i];
			if (!joint_params.hasMember("name"))
				throw std::runtime_error("A joint name was not specified");
			XmlRpc::XmlRpcValue &xml_joint_name = joint_params["name"];
			if (!xml_joint_name.valid() ||
					xml_joint_name.getType() != XmlRpc::XmlRpcValue::TypeString)
				throw std::runtime_error("An invalid joint name was specified (expecting a string)");
			const std::string joint_name = xml_joint_name;

			if (!joint_params.hasMember("type"))
				throw std::runtime_error("A joint type was not specified for joint " + joint_name);
			XmlRpc::XmlRpcValue &xml_joint_type = joint_params["type"];
			if (!xml_joint_type.valid() ||
					xml_joint_type.getType() != XmlRpc::XmlRpcValue::TypeString)
				throw std::runtime_error("An invalid joint type was specified (expecting a string) for joint " + joint_name);
			const std::string joint_type = xml_joint_type;

			if (joint_type == "can_talon_srx")
			{
				const bool has_can_id = joint_params.hasMember("can_id");

				int can_id = 0;
				if (!has_can_id)
					throw std::runtime_error("A CAN Talon SRX can_id was not specified");
				XmlRpc::XmlRpcValue &xml_can_id = joint_params["can_id"];
				if (!xml_can_id.valid() ||
						xml_can_id.getType() != XmlRpc::XmlRpcValue::TypeInt)
					throw std::runtime_error("An invalid joint can_id was specified (expecting an int) for joint " + joint_name);
				can_id = xml_can_id;
				auto it = std::find(can_talon_srx_can_ids_.cbegin(), can_talon_srx_can_ids_.cend(), can_id);
				if (it != can_talon_srx_can_ids_.cend())
					throw std::runtime_error("A duplicate can_id was specified for joint " + joint_name);
				can_talon_srx_names_.push_back(joint_name);
				can_talon_srx_can_ids_.push_back(can_id);
			}
			else if (joint_type == "digital_input")
			{
				const bool has_dio_channel = joint_params.hasMember("dio_channel");
				int digital_input_dio_channel = 0;
				if (!has_dio_channel)
					throw std::runtime_error("A Digital Input dio_channel was not specified for joint " + joint_name);
				XmlRpc::XmlRpcValue &xml_digital_input_dio_channel = joint_params["dio_channel"];
				if (!xml_digital_input_dio_channel.valid() ||
						xml_digital_input_dio_channel.getType() != XmlRpc::XmlRpcValue::TypeInt)
					throw std::runtime_error("An invalid joint dio_channel was specified (expecting an int) for joint " + joint_name);
				digital_input_dio_channel = xml_digital_input_dio_channel;

				auto it = std::find(digital_input_dio_channels_.cbegin(), digital_input_dio_channels_.cend(), digital_input_dio_channel);
				if (it != digital_input_dio_channels_.cend())
					ROS_WARN_STREAM("A duplicate digital input dio_channel was specified for joint " << joint_name);

				bool invert = false;
				if (joint_params.hasMember("invert"))
				{
					XmlRpc::XmlRpcValue &xml_invert = joint_params["invert"];
					if (!xml_invert.valid() ||
							xml_invert.getType() != XmlRpc::XmlRpcValue::TypeBoolean)
						throw std::runtime_error("An invalid digital input joint invert was specified (expecting a boolean) for joint " + joint_name);
					invert = xml_invert;
				}

				digital_input_names_.push_back(joint_name);
				digital_input_dio_channels_.push_back(digital_input_dio_channel);
				digital_input_inverts_.push_back(invert);
			}
			else if (joint_type == "digital_output")
			{
				const bool has_dio_channel = joint_params.hasMember("dio_channel");
				int digital_output_dio_channel = 0;
				if (!has_dio_channel)
					throw std::runtime_error("A Digital Output dio_channel was not specified for joint " + joint_name);
				XmlRpc::XmlRpcValue &xml_digital_output_dio_channel = joint_params["dio_channel"];
				if (!xml_digital_output_dio_channel.valid() ||
						xml_digital_output_dio_channel.getType() != XmlRpc::XmlRpcValue::TypeInt)
					throw std::runtime_error("An invalid joint dio_channel was specified (expecting an int) for joint " + joint_name);
				digital_output_dio_channel = xml_digital_output_dio_channel;
				auto it = std::find(digital_output_dio_channels_.cbegin(), digital_output_dio_channels_.cend(), digital_output_dio_channel);
				if (it != digital_output_dio_channels_.cend())
					throw std::runtime_error("A duplicate digital output channel was specified for joint " + joint_name);

				bool invert = false;
				if (joint_params.hasMember("invert"))
				{
					XmlRpc::XmlRpcValue &xml_invert = joint_params["invert"];
					if (!xml_invert.valid() ||
							xml_invert.getType() != XmlRpc::XmlRpcValue::TypeBoolean)
						throw std::runtime_error("An invalid digital output joint invert was specified (expecting a boolean) for joint " + joint_name);
					invert = xml_invert;
				}

				digital_output_names_.push_back(joint_name);
				digital_output_dio_channels_.push_back(digital_output_dio_channel);
				digital_output_inverts_.push_back(invert);
			}
			else if (joint_type == "pwm")
			{
				const bool has_pwm_channel = joint_params.hasMember("pwm_channel");
				int pwm_pwm_channel = 0;
				if (!has_pwm_channel)
					throw std::runtime_error("A PWM pwm_channel was not specified for joint " + joint_name);
				XmlRpc::XmlRpcValue &xml_pwm_pwm_channel = joint_params["pwm_channel"];
				if (!xml_pwm_pwm_channel.valid() ||
						xml_pwm_pwm_channel.getType() != XmlRpc::XmlRpcValue::TypeInt)
					throw std::runtime_error("An invalid joint pwm_channel was specified (expecting an int) for joint " + joint_name);
				pwm_pwm_channel = xml_pwm_pwm_channel;
				auto it = std::find(pwm_pwm_channels_.cbegin(), pwm_pwm_channels_.cend(), pwm_pwm_channel);
				if (it != pwm_pwm_channels_.cend())
					throw std::runtime_error("A duplicate pwm channel was specified for joint " + joint_name);

				bool invert = false;
				if (joint_params.hasMember("invert"))
				{

					XmlRpc::XmlRpcValue &xml_invert = joint_params["invert"];
					if (!xml_invert.valid() ||
							xml_invert.getType() != XmlRpc::XmlRpcValue::TypeBoolean)
						throw std::runtime_error("An invalid pwm joint invert was specified (expecting a boolean) for joint " + joint_name);
					invert = xml_invert;
				}

				pwm_names_.push_back(joint_name);
				pwm_pwm_channels_.push_back(pwm_pwm_channel);
				pwm_inverts_.push_back(invert);
			}
			else if (joint_type == "solenoid")
			{
				const bool has_id = joint_params.hasMember("id");
				int solenoid_id = 0;
				if (!has_id)
					throw std::runtime_error("A solenoid id was not specified");
				XmlRpc::XmlRpcValue &xml_solenoid_id = joint_params["id"];
				if (!xml_solenoid_id.valid() ||
						xml_solenoid_id.getType() != XmlRpc::XmlRpcValue::TypeInt)
					throw std::runtime_error("An invalid joint solenoid id was specified (expecting an int) for joint " + joint_name);
				solenoid_id = xml_solenoid_id;

				const bool has_pcm = joint_params.hasMember("pcm");
				int solenoid_pcm = 0;
				if (!has_pcm)
					throw std::runtime_error("A solenoid pcm was not specified for joint " + joint_name);
				XmlRpc::XmlRpcValue &xml_solenoid_pcm = joint_params["pcm"];
				if (!xml_solenoid_pcm.valid() ||
						xml_solenoid_pcm.getType() != XmlRpc::XmlRpcValue::TypeInt)
					throw std::runtime_error("An invalid joint solenoid pcm was specified (expecting an int) for joint " + joint_name);
				solenoid_pcm = xml_solenoid_pcm;
				for (size_t j = 0; j < solenoid_pcms_.size(); j++)
					if ((solenoid_pcms_[j] == solenoid_pcm) &&
							(solenoid_ids_[j] == solenoid_id))
						throw std::runtime_error("Duplicate solenoid pcm & id was specified for joint " + joint_name);
				for (size_t j = 0; j < double_solenoid_pcms_.size(); j++)
					if ((double_solenoid_pcms_[j] == solenoid_pcm) &&
							((double_solenoid_forward_ids_[j] == solenoid_id) ||
							 (double_solenoid_reverse_ids_[j] == solenoid_id) ))
						throw std::runtime_error("Duplicate solenoid pcm & id was specified for joint " + joint_name);

				solenoid_names_.push_back(joint_name);
				solenoid_ids_.push_back(solenoid_id);
				solenoid_pcms_.push_back(solenoid_pcm);
			}
			else if (joint_type == "double_solenoid")
			{
				const bool has_forward_id = joint_params.hasMember("forward_id");
				int double_solenoid_forward_id = 0;
				if (!has_forward_id)
					throw std::runtime_error("A double solenoid forward_id was not specified for joint " + joint_name);
				XmlRpc::XmlRpcValue &xml_double_solenoid_forward_id = joint_params["forward_id"];
				if (!xml_double_solenoid_forward_id.valid() ||
						xml_double_solenoid_forward_id.getType() != XmlRpc::XmlRpcValue::TypeInt)
					throw std::runtime_error("An invalid joint double solenoid forward_id was specified (expecting an int) for joint " + joint_name);
				double_solenoid_forward_id = xml_double_solenoid_forward_id;

				const bool has_reverse_id = joint_params.hasMember("reverse_id");
				int double_solenoid_reverse_id = 0;
				if (!has_reverse_id)
					throw std::runtime_error("A double solenoid reverse_id was not specified for joint " + joint_name);
				XmlRpc::XmlRpcValue &xml_double_solenoid_reverse_id = joint_params["reverse_id"];
				if (!xml_double_solenoid_reverse_id.valid() ||
						xml_double_solenoid_reverse_id.getType() != XmlRpc::XmlRpcValue::TypeInt)
					throw std::runtime_error("An invalid joint double solenoid reverse_id was specified (expecting an int) for joint " + joint_name);
				double_solenoid_reverse_id = xml_double_solenoid_reverse_id;

				const bool has_pcm = joint_params.hasMember("pcm");
				int double_solenoid_pcm = 0;
				if (!has_pcm)
					throw std::runtime_error("A double solenoid pcm was not specified for joint " + joint_name);
				XmlRpc::XmlRpcValue &xml_double_solenoid_pcm = joint_params["pcm"];
				if (!xml_double_solenoid_pcm.valid() ||
						xml_double_solenoid_pcm.getType() != XmlRpc::XmlRpcValue::TypeInt)
					throw std::runtime_error("An invalid joint double solenoid pcm was specified (expecting an int) for joint " + joint_name);
				double_solenoid_pcm = xml_double_solenoid_pcm;

				for (size_t j = 0; j < solenoid_pcms_.size(); j++)
					if ((solenoid_pcms_[j] == double_solenoid_pcm) &&
							((solenoid_ids_[j] == double_solenoid_forward_id) ||
							 (solenoid_ids_[j] == double_solenoid_reverse_id) ))
						throw std::runtime_error("Duplicate solenoid pcm & id was specified for joint " + joint_name);
				for (size_t j = 0; j < double_solenoid_pcms_.size(); j++)
					if ((double_solenoid_pcms_[j] == double_solenoid_pcm) &&
							((double_solenoid_forward_ids_[j] == double_solenoid_forward_id) ||
							 (double_solenoid_forward_ids_[j] == double_solenoid_reverse_id) ||
							 (double_solenoid_reverse_ids_[j] == double_solenoid_forward_id) ||
							 (double_solenoid_reverse_ids_[j] == double_solenoid_reverse_id) ))
						throw std::runtime_error("Duplicate solenoid pcm & id was specified for joint " + joint_name);

				double_solenoid_names_.push_back(joint_name);
				double_solenoid_forward_ids_.push_back(double_solenoid_forward_id);
				double_solenoid_reverse_ids_.push_back(double_solenoid_reverse_id);
				double_solenoid_pcms_.push_back(double_solenoid_pcm);
			}
			else if (joint_type == "rumble")
			{
				const bool has_rumble_port = joint_params.hasMember("rumble_port");
				int rumble_port = 0;
				if (!has_rumble_port)
					throw std::runtime_error("A rumble_port was not specified for joint " + joint_name);
				XmlRpc::XmlRpcValue &xml_rumble_port = joint_params["rumble_port"];
				if (!xml_rumble_port.valid() ||
						xml_rumble_port.getType() != XmlRpc::XmlRpcValue::TypeInt)
					throw std::runtime_error("An invalid joint rumble_port was specified (expecting an int) for joint " + joint_name);
				rumble_port = xml_rumble_port;

				auto it = std::find(rumble_ports_.cbegin(), rumble_ports_.cend(), rumble_port);
				if (it != rumble_ports_.cend())
					throw std::runtime_error("A duplicate rumble port was specified for joint " + joint_name);

				rumble_names_.push_back(joint_name);
				rumble_ports_.push_back(rumble_port);
			}
			else if (joint_type == "imu")
			{
				// TODO : id might instead be a string - MXP, USB, etc
				// telling where the imu is attached?
				const bool has_id = joint_params.hasMember("id");
				int imu_id = 0;
				if (!has_id)
					throw std::runtime_error("A imu id was not specified for joint " + joint_name);
				XmlRpc::XmlRpcValue &xml_imu_id = joint_params["id"];
				if (!xml_imu_id.valid() ||
						xml_imu_id.getType() != XmlRpc::XmlRpcValue::TypeInt)
					throw std::runtime_error("An invalid joint id was specified (expecting an int) for joint " + joint_name);
				imu_id = xml_imu_id;
				auto it = std::find(imu_ids_.cbegin(), imu_ids_.cend(), imu_id);
				if (it != imu_ids_.cend())
					throw std::runtime_error("A duplicate imu_id was specified for joint " + joint_name);

				const bool has_frame_id = joint_params.hasMember("id");
				std::string frame_id;
				if (!has_frame_id)
					throw std::runtime_error("A imu frame_id was not specified for joint " + joint_name);
				XmlRpc::XmlRpcValue &xml_joint_frame_id= joint_params["frame_id"];
				if (!xml_joint_frame_id.valid() ||
						xml_joint_frame_id.getType() != XmlRpc::XmlRpcValue::TypeString)
					throw std::runtime_error("An invalid imu frame_id was specified (expecting a string) for joint " + joint_name);
				frame_id = std::string(xml_joint_frame_id);

				const bool has_device = joint_params.hasMember("device");
				std::string device;
				if (!has_device)
					throw std::runtime_error("A imu device was not specified for joint " + joint_name);
				XmlRpc::XmlRpcValue &xml_joint_device= joint_params["device"];
				if (!xml_joint_device.valid() ||
						xml_joint_device.getType() != XmlRpc::XmlRpcValue::TypeString)
					throw std::runtime_error("An invalid imu device was specified (expecting a string) for joint " + joint_name);
				device = std::string(xml_joint_device);

				imu_names_.push_back(joint_name);
				imu_frame_ids_.push_back(frame_id);
				imu_ids_.push_back(imu_id);
				imu_devices_.push_back(device);
			}
			else if (joint_type == "analog_input")
			{
				const bool has_analog_channel = joint_params.hasMember("analog_channel");
				int analog_input_analog_channel = 0;
				if (!has_analog_channel)
					throw std::runtime_error("A Analog input analog_channel was not specified for joint " + joint_name);
				XmlRpc::XmlRpcValue &xml_analog_input_analog_channel = joint_params["analog_channel"];
				if (!xml_analog_input_analog_channel.valid() ||
						xml_analog_input_analog_channel.getType() != XmlRpc::XmlRpcValue::TypeInt)
					throw std::runtime_error("An invalid joint analog_channel was specified (expecting an int) for joint " + joint_name);
				analog_input_analog_channel = xml_analog_input_analog_channel;
				auto it = std::find(analog_input_analog_channels_.cbegin(), analog_input_analog_channels_.cend(), analog_input_analog_channel);
				if (it != analog_input_analog_channels_.cend())
					ROS_WARN_STREAM("A duplicate analog input channel was specified for joint " << joint_name);

				double analog_input_a = 1;

				if (joint_params.hasMember("analog_a"))
				{
					XmlRpc::XmlRpcValue &xml_analog_input_a = joint_params["analog_a"];
					if (!xml_analog_input_a.valid() ||
							xml_analog_input_a.getType() != XmlRpc::XmlRpcValue::TypeDouble)
						throw std::runtime_error("An invalid joint a term was specified (expecting an double) for joint " + joint_name);
					analog_input_a = xml_analog_input_a;
				}

				double analog_input_b = 0;
				if (joint_params.hasMember("analog_b"))
				{
					XmlRpc::XmlRpcValue &xml_analog_input_b = joint_params["analog_b"];
					if (!xml_analog_input_b.valid() ||
							xml_analog_input_b.getType() != XmlRpc::XmlRpcValue::TypeDouble)
						throw std::runtime_error("An invalid joint b term was specified (expecting an double) for joint " + joint_name);
					analog_input_b = xml_analog_input_b;
				}

				analog_input_a_.push_back(analog_input_a);
				analog_input_b_.push_back(analog_input_b);
				analog_input_names_.push_back(joint_name);
				analog_input_analog_channels_.push_back(analog_input_analog_channel);
			}
			else if (joint_type == "compressor")
			{
				const bool has_pcm_id = joint_params.hasMember("pcm_id");
				int compressor_pcm_id = 0;
				if (!has_pcm_id)
					throw std::runtime_error("A compressor pcm id was not specified for joint " + joint_name);
				XmlRpc::XmlRpcValue &xml_compressor_pcm_id = joint_params["pcm_id"];
				if (!xml_compressor_pcm_id.valid() ||
						xml_compressor_pcm_id.getType() != XmlRpc::XmlRpcValue::TypeInt)
					throw std::runtime_error("An invalid compressor joint pcm id was specified (expecting an int) for joint " + joint_name);
				compressor_pcm_id = xml_compressor_pcm_id;
				auto it = std::find(compressor_pcm_ids_.cbegin(), compressor_pcm_ids_.cend(), compressor_pcm_id);
				if (it != compressor_pcm_ids_.cend())
					throw std::runtime_error("A duplicate compressor CAN id was specified for joint " + joint_name);

				compressor_names_.push_back(joint_name);
				compressor_pcm_ids_.push_back(compressor_pcm_id);
			}
			else if (joint_type == "dummy")
			{
				dummy_joint_names_.push_back(joint_name);
			}
			else if (joint_type == "ready")
			{
				ready_signal_names_.push_back(joint_name);
			}
			else if (joint_type == "joystick")
			{
				const bool has_id = joint_params.hasMember("id");
				int id = 0;
				if (!has_id)
					throw std::runtime_error("A joystick ID was not specified for joint " + joint_name);
				XmlRpc::XmlRpcValue &xml_id = joint_params["id"];
				if (!xml_id.valid() ||
						xml_id.getType() != XmlRpc::XmlRpcValue::TypeInt)
					throw std::runtime_error("An invalid joystick id was specified (expecting an int) for joint " + joint_name);
				id = xml_id;
				auto it = std::find(joystick_ids_.cbegin(), joystick_ids_.cend(), id);
				if (it != joystick_ids_.cend())
					throw std::runtime_error("A duplicate joystick ID was specified for joint " + joint_name);
				joystick_names_.push_back(joint_name);
				joystick_ids_.push_back(id);
			}
			else
			{
				std::stringstream s;
				s << "Unknown joint type " << joint_type << " specified for joint " + joint_name;
				throw std::runtime_error(s.str());
			}
		}
		run_hal_robot_ = rpnh.param<bool>("run_hal_robot", true);
		can_interface_ = rpnh.param<std::string>("can_interface", "can0");
	}

	void FRCRobotInterface::init()
	{
		num_can_talon_srxs_ = can_talon_srx_names_.size();
		// Create vectors of the correct size for
		// talon HW state and commands
		talon_command_.resize(num_can_talon_srxs_);

		// Loop through the list of joint names
		// specified as params for the hardware_interface.
		// For each of them, create a Talon object. This
		// object is used to send and recieve commands
		// and status to/from the physical Talon motor
		// controller on the robot.  Use this pointer
		// to initialize each Talon with various params
		// set for that motor controller in config files.
		for (size_t i = 0; i < num_can_talon_srxs_; i++)
		{
			ROS_INFO_STREAM_NAMED(name_, "FRCRobotInterface: Registering Talon Interface for " << can_talon_srx_names_[i] << " at hw ID " << can_talon_srx_can_ids_[i]);

			// Create joint state interface
			// Also register as JointStateInterface so that legacy
			// ROS code which uses that object type can
			// access basic state info from the talon
			// Code which needs more specific status should
			// get a TalonStateHandle instead.
			talon_state_.push_back(hardware_interface::TalonHWState(can_talon_srx_can_ids_[i]));
		}
		for (size_t i = 0; i < num_can_talon_srxs_; i++)
		{
			// Create state interface for the given Talon
			// and point it to the data stored in the
			// corresponding talon_state array entry
			hardware_interface::TalonStateHandle tsh(can_talon_srx_names_[i], &talon_state_[i]);
			talon_state_interface_.registerHandle(tsh);

			// Do the same for a command interface for
			// the same talon
			hardware_interface::TalonCommandHandle tch(tsh, &talon_command_[i]);
			talon_command_interface_.registerHandle(tch);
			custom_profile_state_.push_back(CustomProfileState());
		}

		num_digital_inputs_ = digital_input_names_.size();
		digital_input_state_.resize(num_digital_inputs_);
		for (size_t i = 0; i < num_digital_inputs_; i++)
		{
			ROS_INFO_STREAM_NAMED(name_, "FRCRobotInterface: Registering interface for : " << digital_input_names_[i] << " at DIO channel " << digital_input_dio_channels_[i] << " / invert " << digital_input_inverts_[i]);
			// Create state interface for the given digital input
			hardware_interface::JointStateHandle dish(digital_input_names_[i], &digital_input_state_[i], &digital_input_state_[i], &digital_input_state_[i]);
			joint_state_interface_.registerHandle(dish);
		}

		num_digital_outputs_ = digital_output_names_.size();
		digital_output_command_.resize(num_digital_outputs_);
		digital_output_state_.resize(num_digital_outputs_);
		for (size_t i = 0; i < num_digital_outputs_; i++)
		{
			digital_output_state_[i] = std::numeric_limits<double>::max();
			digital_output_command_[i] = 0;

			ROS_INFO_STREAM_NAMED(name_, "FRCRobotInterface: Registering interface for : " << digital_output_names_[i] << " at DIO channel " << digital_output_dio_channels_[i] << " / invert " << digital_output_inverts_[i]);

			hardware_interface::JointStateHandle dosh(digital_output_names_[i], &digital_output_state_[i], &digital_output_state_[i], &digital_output_state_[i]);
			joint_state_interface_.registerHandle(dosh);

			// Do the same for a command interface for
			// the digital output
			hardware_interface::JointHandle doh(dosh, &digital_output_command_[i]);
			joint_position_interface_.registerHandle(doh);
		}

		num_pwm_ = pwm_names_.size();
		pwm_state_.resize(num_pwm_);
		pwm_command_.resize(num_pwm_);
		for (size_t i = 0; i < num_pwm_; i++)
		{
			ROS_INFO_STREAM_NAMED(name_, "FRCRobotInterface: Registering interface for : " << pwm_names_[i] << " at PWM channel " << pwm_pwm_channels_[i] << " / invert " << pwm_inverts_[i]);
			pwm_state_[i] = std::numeric_limits<double>::max();
			pwm_command_[i] = 0;

			hardware_interface::JointStateHandle psh(pwm_names_[i], &pwm_state_[i], &pwm_state_[i], &pwm_state_[i]);
			joint_state_interface_.registerHandle(psh);

			hardware_interface::JointHandle ph(psh, &pwm_command_[i]);
			joint_velocity_interface_.registerHandle(ph);
		}
		num_solenoids_ = solenoid_names_.size();
		solenoid_state_.resize(num_solenoids_);
		solenoid_command_.resize(num_solenoids_);
		for (size_t i = 0; i < num_solenoids_; i++)
		{
			ROS_INFO_STREAM_NAMED(name_, "FRCRobotInterface: Registering interface for : " << solenoid_names_[i] << " at id " << solenoid_ids_[i]<< " at pcm " << solenoid_pcms_[i]);

			solenoid_state_[i] = std::numeric_limits<double>::max();
			solenoid_command_[i] = 0;

			hardware_interface::JointStateHandle ssh(solenoid_names_[i], &solenoid_state_[i], &solenoid_state_[i], &solenoid_state_[i]);
			joint_state_interface_.registerHandle(ssh);

			hardware_interface::JointHandle soh(ssh, &solenoid_command_[i]);
			joint_position_interface_.registerHandle(soh);
		}

		num_double_solenoids_ = double_solenoid_names_.size();
		double_solenoid_state_.resize(num_double_solenoids_);
		double_solenoid_command_.resize(num_double_solenoids_);
		for (size_t i = 0; i < num_double_solenoids_; i++)
		{
			ROS_INFO_STREAM_NAMED(name_, "FRCRobotInterface: Registering interface for : " << double_solenoid_names_[i] << " at forward id " << double_solenoid_forward_ids_[i] << " at reverse id " << double_solenoid_reverse_ids_[i] << " at pcm " << double_solenoid_pcms_[i]);

			double_solenoid_state_[i] = std::numeric_limits<double>::max();
			double_solenoid_command_[i] = 0;

			hardware_interface::JointStateHandle dssh(double_solenoid_names_[i], &double_solenoid_state_[i], &double_solenoid_state_[i], &double_solenoid_state_[i]);
			joint_state_interface_.registerHandle(dssh);

			hardware_interface::JointHandle dsoh(dssh, &double_solenoid_command_[i]);
			joint_position_interface_.registerHandle(dsoh);
		}
		num_rumbles_ = rumble_names_.size();
		rumble_state_.resize(num_rumbles_);
		rumble_command_.resize(num_rumbles_);
		for (size_t i = 0; i < num_rumbles_; i++)
		{
			ROS_INFO_STREAM_NAMED(name_, "FRCRobotInterface: Registering interface for : " << rumble_names_[i] << " at port " << rumble_ports_[i]);

			rumble_state_[i] = std::numeric_limits<double>::max();
			rumble_command_[i] = 0;
			hardware_interface::JointStateHandle rsh(rumble_names_[i], &rumble_state_[i], &rumble_state_[i], &rumble_state_[i]);
			joint_state_interface_.registerHandle(rsh);

			hardware_interface::JointHandle rh(rsh, &rumble_command_[i]);
			joint_position_interface_.registerHandle(rh);
		}
		//TODO generalize IMU definition
		// Differentiate between navX and IMU here
		// We might want more than 1 type of IMU
		// at some point - eventually allow this by making IMU
		// data sized to hold results from all IMU
		// hardware rather than just imu size
		num_imu_ = imu_names_.size();
		imu_orientations_.resize(num_imu_);
		imu_orientation_covariances_.resize(num_imu_);
		imu_angular_velocities_.resize(num_imu_);
		imu_angular_velocity_covariances_.resize(num_imu_);
		imu_linear_accelerations_.resize(num_imu_);
		imu_linear_acceleration_covariances_.resize(num_imu_);
		imu_state_.resize(num_imu_);
		offset_imu_.resize(num_imu_);

		for (size_t i = 0; i < num_imu_; i++)
		{
			ROS_INFO_STREAM_NAMED(name_, "FRCRobotInterface: Registering imu interface for : " << imu_names_[i] << " at id " << imu_ids_[i]);

			// Create state interface for the given IMU
			// and point it to the data stored in the
			// corresponding imu arrays
			hardware_interface::ImuSensorHandle::Data imu_data;
			imu_data.name = imu_names_[i];
			imu_data.frame_id = imu_frame_ids_[i];
			for (size_t j = 0; j < 3; j++)
			{
				imu_orientations_[i][j] = 0;
				imu_angular_velocities_[i][j] = 0;
				imu_linear_accelerations_[i][j] = 0;
			}
			imu_orientations_[i][3] = 1;
			imu_data.orientation = &imu_orientations_[i][0];
			imu_data.orientation_covariance = &imu_orientation_covariances_[i][0];
			imu_data.angular_velocity = &imu_angular_velocities_[i][0];
			imu_data.angular_velocity_covariance = &imu_angular_velocity_covariances_[i][0];
			imu_data.linear_acceleration = &imu_linear_accelerations_[i][0];
			imu_data.linear_acceleration_covariance = &imu_linear_acceleration_covariances_[i][0];

			hardware_interface::ImuSensorHandle imuh(imu_data);
			imu_interface_.registerHandle(imuh);

			// Set up a command interface to set an
			// offset for reported heading
			hardware_interface::JointStateHandle nxsh(imu_names_[i], &imu_state_[i], &imu_state_[i], &imu_state_[i]);
			joint_state_interface_.registerHandle(nxsh);

			offset_imu_[i] = 0;
		}

		num_analog_inputs_ = analog_input_names_.size();
		analog_input_state_.resize(num_analog_inputs_);
		for (size_t i = 0; i < num_analog_inputs_; i++)
		{
			ROS_INFO_STREAM_NAMED(name_, "FRCRobotInterface: Registering interface for : " << analog_input_names_[i] << " at analog channel " << analog_input_analog_channels_[i]);
			// Create state interface for the given analog input
			// and point it to the data stored in the
			// corresponding brushless_state array entry
			hardware_interface::JointStateHandle aish(analog_input_names_[i], &analog_input_state_[i], &analog_input_state_[i], &analog_input_state_[i]);
			joint_state_interface_.registerHandle(aish);
		}
		num_compressors_ = compressor_names_.size();
		compressor_state_.resize(num_compressors_);
		compressor_command_.resize(num_compressors_);
		for (size_t i = 0; i < num_compressors_; i++)
			pcm_state_.push_back(hardware_interface::PCMState(compressor_pcm_ids_[i]));
		for (size_t i = 0; i < num_compressors_; i++)
		{
			ROS_INFO_STREAM_NAMED(name_, "FRCRobotInterface: Registering interface for compressor / PCM : " << compressor_names_[i] << " at pcm_id " << compressor_pcm_ids_[i]);

			// Default compressors to running
			compressor_command_[i] = 1;
			compressor_state_[i] = std::numeric_limits<double>::max();

			hardware_interface::JointStateHandle csh(compressor_names_[i], &compressor_state_[i], &compressor_state_[i], &compressor_state_[i]);
			joint_state_interface_.registerHandle(csh);

			hardware_interface::JointHandle cch(csh, &compressor_command_[i]);
			joint_position_interface_.registerHandle(cch);

			hardware_interface::PCMStateHandle pcmsh(compressor_names_[i], &pcm_state_[i]);
			pcm_state_interface_.registerHandle(pcmsh);
		}

		num_dummy_joints_ = dummy_joint_names_.size();
		dummy_joint_position_.resize(num_dummy_joints_);
		dummy_joint_velocity_.resize(num_dummy_joints_);
		dummy_joint_effort_.resize(num_dummy_joints_);
		dummy_joint_command_.resize(num_dummy_joints_);
		for (size_t i = 0; i < num_dummy_joints_; i++)
		{
			ROS_INFO_STREAM_NAMED(name_, "FRCRobotInterface: Registering interface for dummy joint : " << dummy_joint_names_[i]);

			dummy_joint_command_[i] = 0;
			dummy_joint_position_[i] = 0;
			dummy_joint_velocity_[i] = 0;
			dummy_joint_effort_[i] = 0;

			hardware_interface::JointStateHandle dsh(dummy_joint_names_[i], &dummy_joint_position_[i],&dummy_joint_velocity_[i], &dummy_joint_effort_[i]);
			joint_state_interface_.registerHandle(dsh);

			hardware_interface::JointHandle dch(dsh, &dummy_joint_command_[i]);
			joint_command_interface_.registerHandle(dch);
			joint_position_interface_.registerHandle(dch);
			joint_velocity_interface_.registerHandle(dch);
		}

		num_ready_signals_ = ready_signal_names_.size();
		robot_ready_signals_.resize(num_ready_signals_);
		for (size_t i = 0; i < num_ready_signals_; i++)
		{
			// Add a flag which indicates we should signal
			// the driver station that robot code is initialized
			ROS_INFO_STREAM_NAMED(name_, "FRCRobotInterface: Registering interface for ready signal : " << ready_signal_names_[i]);
			hardware_interface::JointStateHandle sh(ready_signal_names_[i], &robot_ready_signals_[i],&robot_ready_signals_[i],&robot_ready_signals_[i]);
			joint_state_interface_.registerHandle(sh);

			hardware_interface::JointHandle ch(sh, &robot_ready_signals_[i]);
			joint_command_interface_.registerHandle(ch);
			joint_position_interface_.registerHandle(ch);
			joint_velocity_interface_.registerHandle(ch);
		}

		auto dummy_joints = getDummyJoints();
		for (auto d : dummy_joints)
		{
			ROS_INFO_STREAM_NAMED(name_, "FRCRobotInterface: Registering interface for DummyVar: " << d.name_);

			*d.address_ = 0;

			hardware_interface::JointStateHandle dsh(d.name_, d.address_, d.address_, d.address_);
			joint_state_interface_.registerHandle(dsh);

			hardware_interface::JointHandle dch(dsh, d.address_);
			joint_command_interface_.registerHandle(dch);
			joint_position_interface_.registerHandle(dch);
			joint_velocity_interface_.registerHandle(dch);
		}
		//TODO do we need anything here
		if (run_hal_robot_)
		{
			ROS_INFO("run_hal_robot");
		}
		else
		{
			ROS_ERROR("frc_robot_interface.cpp: Currently need to specify run_hal_robot");
		}

		// TODO : add joint interface for joysticks
		num_joysticks_ = joystick_names_.size();

		if (run_hal_robot_)
		{
			hardware_interface::RobotControllerStateHandle rcsh("robot_controller_name", &robot_controller_state_);
			robot_controller_state_interface_.registerHandle(rcsh);
		}

		// Publish various FRC-specific data using generic joint state for now
		// For simple things this might be OK, but for more complex state
		// (e.g. joystick) it probably makes more sense to write a
		// RealtimePublisher() for the data coming in from
		// the DS
		registerInterface(&talon_state_interface_);
		registerInterface(&joint_state_interface_);
		registerInterface(&talon_command_interface_);
		registerInterface(&joint_command_interface_);
		registerInterface(&joint_position_interface_);
		registerInterface(&joint_velocity_interface_);
		registerInterface(&joint_effort_interface_); // empty for now
		registerInterface(&imu_interface_);
		registerInterface(&pcm_state_interface_);
		registerInterface(&robot_controller_state_interface_);


		ROS_INFO_STREAM_NAMED(name_, "FRCRobotInterface Ready.");
	}

	// Using the mode, setpoint, etc generated from a given Talon's custom profile,
	// update the talon command values for that Talon. This way the rest of the
	// write() command will use those values to update hardware / sim for the
	// motor controller
	void FRCRobotInterface::custom_profile_set_talon(hardware_interface::TalonMode mode,
			double setpoint, double fTerm,
			int joint_id, int pidSlot, bool zeroPos)
	{
		auto &tc = talon_command_[joint_id];
		if(zeroPos)
		{
			tc.setSelectedSensorPosition(0);
			ROS_INFO_STREAM("custom_profile_set_talon zeroing talon:" <<  joint_id);
		}
		ROS_INFO_STREAM("joint_id:" << joint_id << " mode:" << mode << " setpoint: " << setpoint << " fterm: " << fTerm << " slot: " << pidSlot);

		// Set talon mode based on profile type
		if(mode == hardware_interface::TalonMode_PercentOutput)
		{
			// Percent output doesn't use feedforward
			tc.setDemand1Type(hardware_interface::DemandType_Neutral);
		}
		else
		{
			tc.setDemand1Type(hardware_interface::DemandType_ArbitraryFeedForward);
			tc.setDemand1Value(fTerm);
		}

		tc.setMode(mode);
		tc.set(setpoint);

		tc.setPidfSlot(pidSlot);
	}

	// Called once per talon in each write loop.  Used to generate
	// commands for that talon if it is running in custom
	// motion profile mode
	// TODO : see if there's a way to only zero out position once,
	// and then not send pt[0]'s zero pos command for points
	// interpolated from it
	void FRCRobotInterface::custom_profile_write(int joint_id)
	{
		auto &tc = talon_command_[joint_id];

		if (tc.getCustomProfileDisable())
		{
			return;
		}

		auto &ts = talon_state_[joint_id];
		auto &cps = custom_profile_state_[joint_id];
		auto &ps = cps.status_;

		// Grab points to hit and times to hit them from the
		// talon command buffer
		auto &prof_pts = cps.saved_points_;
		auto &prof_times = cps.saved_times_;

		tc.getCustomProfilePointsTimesChanged(prof_pts, prof_times);

		// TODO : add check for talon mode == disabled,, run, etc.
		// if so clear out getCustomProfileRun(), run, etc.
		if (ts.getTalonMode() == hardware_interface::TalonMode_Disabled)
		{
			tc.setCustomProfileRun(false);
		}

		const bool run = tc.getCustomProfileRun();

		// Clear out the current slot when profile status
		// transitions from running to stopped
		// This should also catch the case where a profile was being run
		// when the robot was disabled, because we force custom profile
		// run to false on robot disable
		if(ps.running && !run)
		{
			std::vector<hardware_interface::CustomProfilePoint> empty_points;
			tc.overwriteCustomProfilePoints(empty_points, ps.slotRunning);
			//Right now we wipe everything if the profile is stopped
			//This could be changed to a pause type feature in which the first point has zeroPos set and the other
			//positions get shifted
			cps.points_run_ = 0;
		}

		// Reset start time to now when switching from non-running to running
		if((run && !ps.running) || !run)
		{
			cps.time_start_ = ros::Time::now().toSec();
		}
		const int slot = tc.getCustomProfileSlot();

		if(slot != ps.slotRunning && run && ps.running)
		{
			ROS_WARN("transitioned between two profile slots without any break between. Intended?");
			std::vector<hardware_interface::CustomProfilePoint> empty_points;
			tc.overwriteCustomProfilePoints(empty_points, ps.slotRunning);
			//Right now we wipe everything if the slots are flipped
			//Should try to be analagous to having a break between
			cps.points_run_= 0;
			cps.time_start_= ros::Time::now().toSec();
		}
		ps.slotRunning = slot;
		// Actully run profile code for this talon
		if(run)
		{
			if(prof_pts[slot].size() == 0)
			{
				ROS_ERROR_THROTTLE(1.0, "Tried to run custom profile with no points buffered");
				//Potentially add more things to do if this exception is caught
				//Like maybe set talon to neutral mode or something
				return;
			}

			//Find the point just greater than time since start
			size_t end;
			ps.outOfPoints = true;
			const double time_since_start = ros::Time::now().toSec() - cps.time_start_;
			for(end = std::max(cps.points_run_ - 1, 0); end < prof_pts[slot].size(); end++)
			{
				if(prof_times[slot][end] > time_since_start)
				{
					ps.outOfPoints = false;
					break;
				}
			}

			// Save the current point found to run to speed up the
			// search for it next time through the loop.
			if(ps.outOfPoints)
			{
				cps.points_run_ = prof_pts[slot].size();
			}
			else
			{
				cps.points_run_ = std::max(static_cast<int>(end) - 1, 0);
			}
#if 0
			ROS_INFO_STREAM(" cps.points_run_:" << cps.points_run_
					<< " time_since_start:" << time_since_start
					<< " end:" << end
					<< " ps.outOfPoints:" << ps.outOfPoints);
#endif
			if(ps.outOfPoints)
			{
				auto next_slot = tc.getCustomProfileNextSlot();
				auto back = prof_pts[slot].back();

				//If all points have been exhausted, just use the last point
				custom_profile_set_talon(back.mode, back.setpoint, back.fTerm, joint_id, back.pidSlot, back.zeroPos);
				if (next_slot.size() > 0)
				{
					tc.setCustomProfileSlot(next_slot[0]);
					next_slot.erase(next_slot.begin());
					tc.setCustomProfileNextSlot(next_slot);
				}
			}
			else if(end == 0)
			{
				auto m = prof_pts[slot][0];
				//If we are still on the first point,just use the first point
				custom_profile_set_talon(m.mode, m.setpoint, m.fTerm, joint_id, m.pidSlot, m.zeroPos);
			}
			else
			{
				auto endp = prof_pts[slot][end];
				auto endpm1 = prof_pts[slot][end - 1];
				//Allows for mode flipping while in profile execution
				//We don't want to interpolate between positional and velocity setpoints
				if(endp.mode != endpm1.mode)
				{
					ROS_WARN_STREAM("mid profile mode flip. If intendped, Cooooooooollllll. If not, fix the code : " << endp.mode << " from " << endpm1.mode);
					custom_profile_set_talon(endp.mode, endp.setpoint, endp.fTerm, joint_id, endp.pidSlot, endp.zeroPos);
					// consider adding a check to see which is closer
				}
				else
				{
					// linear interpolation of the points this particular iteration time
					// falls between
#if 0
					ROS_INFO_STREAM("prof_pts[" << slot <<"]["<<end<<"] setpoint:" << endp.setpoint <<
							" fTerm:" << endp.fTerm);
					ROS_INFO_STREAM("prof_pts[" << slot <<"]["<<end-1<<"] setpoint:" << endpm1.setpoint <<
							" fTerm:" << endpm1.fTerm);
#endif

					const double time_percent = (time_since_start - prof_times[slot][end-1]) / (prof_times[slot][end] - prof_times[slot][end-1]);
					const double setpoint = endpm1.setpoint + (endp.setpoint - endpm1.setpoint) * time_percent;

					const double fTerm = endpm1.fTerm + (endp.fTerm - endpm1.fTerm) * time_percent;
					custom_profile_set_talon(endp.mode, setpoint, fTerm, joint_id, endp.pidSlot, endpm1.zeroPos);
				}
			}
		}
		else
		{
			ps.outOfPoints = false;
		}

		// Update talon profile status
		ps.remainingPoints.resize(prof_pts.size());

		for(size_t i = 0; i < prof_pts.size(); i++)
		{
			if(i == static_cast<size_t>(ps.slotRunning))
			{
				ps.remainingPoints[i] = tc.getCustomProfileCount(i) - cps.points_run_;
				if(tc.getCustomProfileTimeCount(i) > 0)
				{
					ps.remainingTime = tc.getCustomProfileEndTime(i) - (ros::Time::now().toSec() - cps.time_start_);
				}
				else
				{
					ps.remainingTime = 0.0;
				}
			}
			else
			{
				ps.remainingPoints[i] = tc.getCustomProfileCount(i);
			}
		}

		ps.running = run;
		ts.setCustomProfileStatus(ps);
	}

	void FRCRobotInterface::reset()
	{
	}

	void FRCRobotInterface::printState()
	{
		// WARNING: THIS IS NOT REALTIME SAFE
		// FOR DEBUGGING ONLY, USE AT YOUR OWN ROBOT's RISK!
		ROS_INFO_STREAM_THROTTLE(1,
				std::endl << "State" <<
				std::endl << printStateHelper());
	}

	std::string FRCRobotInterface::printStateHelper()
	{
		std::stringstream ss;
		std::cout.precision(15);

		ss << "    CAN ID       position        velocity        effort" << std::endl;
		for (std::size_t i = 0; i < num_can_talon_srxs_; ++i)
		{
			ss << "j" << i << ":    " ;
			ss << talon_state_[i].getCANID() << "\t ";
			ss << std::fixed << talon_state_[i].getPosition() << "\t ";
			ss << std::fixed << talon_state_[i].getSpeed() << "\t ";
			ss << std::fixed << talon_state_[i].getOutputVoltage() << std::endl;
		}
		return ss.str();
	}

	std::string FRCRobotInterface::printCommandHelper()
	{
		std::stringstream ss;
		std::cout.precision(15);
		ss << "    setpoint" << std::endl;
		for (std::size_t i = 0; i < num_can_talon_srxs_; ++i)
			ss << "j" << i << ": " << std::fixed << talon_command_[i].get() << std::endl;
		return ss.str();
	}

	void FRCRobotInterface::loadURDF(ros::NodeHandle &/*nh*/, std::string /*param_name*/)
	{
		return;
#if 0
		std::string urdf_string;
		urdf_model_ = new urdf::Model();

		// search and wait for robot_description on param server
		while (urdf_string.empty() && ros::ok())
		{
			std::string search_param_name;
			if (nh.searchParam(param_name, search_param_name))
			{
				ROS_INFO_STREAM_NAMED(name_, "Waiting for model URDF on the ROS param server at location: " <<
						nh.getNamespace() << search_param_name);
				nh.getParam(search_param_name, urdf_string);
			}
			else
			{
				ROS_INFO_STREAM_NAMED(name_, "Waiting for model URDF on the ROS param server at location: " <<
						nh.getNamespace() << param_name);
				nh.getParam(param_name, urdf_string);
			}

			usleep(100000);
		}

		if (!urdf_model_->initString(urdf_string))
			ROS_ERROR_STREAM_NAMED(name_, "Unable to load URDF model");
		else
			ROS_DEBUG_STREAM_NAMED(name_, "Received URDF from param server");
#endif
	}

}  // namespace
