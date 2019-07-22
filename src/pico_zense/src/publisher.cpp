#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/opencv.hpp>
//#include <cv_bridge/cv_bridge.h>

#include <sensor_msgs/distortion_models.h>
#include <sensor_msgs/PointCloud.h>
#include <sensor_msgs/ChannelFloat32.h>
#include <geometry_msgs/Point32.h>
#include <tf/transform_broadcaster.h>

// comment out strings if need not needed
#include <cerrno>
#include <iostream>
#include <stdint.h>
#include <ctype.h>
#include <vector>
#include <fstream>

// Based on the archtecture it will detect which version your using and use that arch api
// For reference use this wiki https://sourceforge.net/p/predef/wiki/Architectures/

#ifdef __aarch64__
#include "PicoZense_api.h"
#define MAX_PATH_SIZE 1024
const int flag = 1;
#endif
#ifdef __x86_64__
#include "../dependencies/x86_dcam100/PicoZenseSDK_Linux/Include/PicoZense_api.h"
const int flag = 2;
#endif

using namespace std;
using std::cout;
using std::cin;
using namespace cv;

ros::Publisher point_cloud_pub;

static void Opencv_Depth(uint32_t slope, int height, int width, uint8_t*pData, cv::Mat& dispImg)
{
        dispImg = cv::Mat(height, width, CV_16UC1, pData);
        Point2d pointxy(width / 2, height / 2);
        int val = dispImg.at<ushort>(pointxy);
        char text[20];
#ifdef _WIN32
        sprintf_s(text, "%d", val);
#else
        snprintf(text, sizeof(text), "%d", val);
#endif
        dispImg.convertTo(dispImg, CV_8UC1, 255.0 / slope);
        applyColorMap(dispImg, dispImg, cv::COLORMAP_RAINBOW);
        int color;
        if (val > 2500) 
                color = 0;
        else
                color = 4096;
        circle(dispImg, pointxy, 4, Scalar(color, color, color), -1, 8, 0);
        putText(dispImg, text, pointxy, FONT_HERSHEY_DUPLEX, 2, Scalar(color, color, color));
}

static void point_cloud_to_ROS(PsFrame depthFrame, int deviceIndex) {
	sensor_msgs::PointCloud pcl;
	pcl.header.stamp = ros::Time::now();
	pcl.header.frame_id = "pico";

	const int len = depthFrame.width*depthFrame.height;
	PsVector3f* worldV = new PsVector3f[len];
	PsConvertDepthFrameToWorldVector(deviceIndex, depthFrame, worldV); //Convert Depth frame to World vectors.

	sensor_msgs::ChannelFloat32 distance_channel;
	distance_channel.name = "distance";
	std::vector <geometry_msgs::Point32>points = {};
	for(int i = 0; i<len; i++) {
		if(worldV[i].z == 0 || worldV[i].z == 0xFFFF)
			continue; //discard zero points
		geometry_msgs::Point32 point;
		point.x = worldV[i].z/1000.;
		point.y = worldV[i].x/1000.;
		point.z = worldV[i].y/-1000.;
		points.push_back(point);
		distance_channel.values.push_back(pow(pow(point.x,2)+pow(point.y,2)+pow(point.z,2), 0.5));
	}
	delete[] worldV;
	pcl.points = points;
	pcl.channels.push_back(distance_channel);
	point_cloud_pub.publish(pcl);
	std::vector<geometry_msgs::Point32>().swap(points);
}

// Transfers image data to msg
sensor_msgs::ImagePtr imageToROSmsg(cv::Mat img, const std::string encodingType, std::string frameId, ros::Time t,int seqnum) {
	sensor_msgs::ImagePtr ptr = boost::make_shared<sensor_msgs::Image>();
	sensor_msgs::Image& imgMessage = *ptr;
	imgMessage.header.stamp = t;
	imgMessage.header.seq = seqnum;
	imgMessage.header.frame_id = frameId;
	imgMessage.height = img.rows;
	imgMessage.width = img.cols;
	imgMessage.encoding = encodingType;
	int num = 1; //for endianness detection
	imgMessage.is_bigendian = !(*(char *) &num == 1);
	imgMessage.step = img.cols * img.elemSize();
	size_t size = imgMessage.step * img.rows;
	imgMessage.data.resize(size);

	if (img.isContinuous())
		memcpy((char*) (&imgMessage.data[0]), img.data, size);
	else {
		uchar* opencvData = img.data;
		uchar* rosData = (uchar*) (&imgMessage.data[0]);
		for (unsigned int i = 0; i < img.rows; i++) {
			memcpy(rosData, opencvData, imgMessage.step);
			rosData += imgMessage.step;
			opencvData += img.step;
		}
	}
	return ptr;
}


// Setting the camera information. Picozense co-efficients are obtained from the sample program given by the vendor
// AARCH64 only
void PicofillCamInfo(sensor_msgs::CameraInfoPtr pico_cam_info_msg){

	pico_cam_info_msg->distortion_model =
		sensor_msgs::distortion_models::PLUMB_BOB;

	pico_cam_info_msg->D.resize(5);
	pico_cam_info_msg->D[0] = 0.347628;   // k1
	pico_cam_info_msg->D[1] = -0.946078;   // k2
	pico_cam_info_msg->D[2] = -0.000692125;   // k3
	pico_cam_info_msg->D[3] = 0.00159702;   // p1
	pico_cam_info_msg->D[4] = 0.575357;   // p2

	pico_cam_info_msg->K.fill(0.0);
	pico_cam_info_msg->K[0] = 462.446;
	pico_cam_info_msg->K[2] = 333.974;
	pico_cam_info_msg->K[4] = 463.194;
	pico_cam_info_msg->K[5] = 232.088;
	pico_cam_info_msg->K[8] = 1.0;

	pico_cam_info_msg->R.fill(0.0);

	for (int i = 0; i < 3; i++) {
		// identity
		pico_cam_info_msg->R[i + i * 3] = 1;
	}

	pico_cam_info_msg->P.fill(0.0);
	pico_cam_info_msg->P[0] = 462.446;
	pico_cam_info_msg->P[2] = 333.974;
	pico_cam_info_msg->P[5] = 463.194;
	pico_cam_info_msg->P[6] = 232.088;
	pico_cam_info_msg->P[10] = 1.0;

	pico_cam_info_msg->width = 640;
	pico_cam_info_msg->height = 480;

	pico_cam_info_msg->header.frame_id = "picoCam";

}

//Publishing camera information so that depth image to point cloud / laser scan can be done using ros nodelets
// AARCH64 only
void publishCamInfo(sensor_msgs::CameraInfoPtr camInfoMsg, ros::Publisher pubCamInfo, ros::Time t) {
	static int seq = 0;
	camInfoMsg->header.stamp = t;
	camInfoMsg->header.seq = seq;
	pubCamInfo.publish(camInfoMsg);
	seq++;
}

int main(int argc, char** argv) {

	ros::init(argc, argv, "image_publisher");
	ros::NodeHandle nh;

	//creating publisher for image through ImageTransport
	image_transport::ImageTransport it(nh);
	image_transport::Publisher pub = it.advertise("camera/image", 1);
	// image_transport::Publisher pub = it.advertise("image_rect", 1);   // #looks better on aarch64 #depending on whether laser scan or point cloud, change the topic to image or image_rect respectively

	point_cloud_pub = nh.advertise<sensor_msgs::PointCloud>("camera/point_cloud", 1);

	/* Picozense API calls from this point onwards */
	//PsReturnStatus status;
	bool colorMap = true;
	int32_t deviceIndex = 0;
	uint32_t slope = 1450;//4400;//1450;  // Near mode
	uint16_t threshold = 10;
	int32_t dataMode = PsDepthAndRGB_30;

	PsReturnStatus status = PsInitialize();
	ROS_INFO_STREAM( "Init status: " << status << "\n");

	if (status != PsReturnStatus::PsRetOK)
	{
		ROS_INFO_STREAM("Initialize failed!" << "\n");
		system("pause");
		exit(0);
	}


	//publisher for camera information
	// aarch64 only
	ros::Publisher pubPicoCamInfo = nh.advertise<sensor_msgs::CameraInfo>("camera_info", 1);



	int32_t deviceCount = 0;
	status = PsGetDeviceCount(&deviceCount);
	ROS_INFO_STREAM( "Get device count status: " << status << " device count: " << deviceCount << "\n");

	status = PsSetThreshold(deviceIndex, threshold);
	cout << "Set threshold status: " << status << endl;

	//Set the Depth Range to Mid through PsSetDepthRange interface
	// PsNearRange, PsMidRange, PsFarRange
	status = PsSetDepthRange(deviceIndex, PsNearRange);
	if (status != PsReturnStatus::PsRetOK)
	{
		ROS_INFO_STREAM ("set depth range failed!" << "\n");
		system("pause");
		exit(0);
	}
	else {
		ROS_INFO("Set depth range near");
	}

	status = PsOpenDevice(deviceIndex);

	if (status != PsReturnStatus::PsRetOK)
	{
		ROS_INFO_STREAM ("OpenDevice failed!" << "\n");
		system("pause");
		exit(0);
	}
	
	PsSetColorPixelFormat(deviceIndex, PsPixelFormatBGR888);

	 //Set to DepthAndRGB_30 mode
        status = PsSetDataMode(deviceIndex, (PsDataMode)dataMode);
        if (status != PsReturnStatus::PsRetOK)
        {
                cout << "Set DataMode Failed failed!" << endl;
        }

	int32_t depthRange = -1;
	status = PsGetDepthRange(deviceIndex, (PsDepthRange*)&depthRange);
	ROS_INFO_STREAM( "Get depth range status: " << status << " depth range: " << depthRange << "\n");

	status = PsStartFrame(deviceIndex, PsDepthFrame);
	ROS_INFO_STREAM( "Start Depth Frame status: " << status << "\n");

	status = PsStartFrame(deviceIndex, PsIRFrame);
	ROS_INFO_STREAM( "Start IR Frame status: " << status << "\n");

	PsFrameMode depthFrameMode;
	PsFrameMode irFrameMode;

	status = PsGetFrameMode(deviceIndex, PsDepthFrame, &depthFrameMode);
	ROS_INFO_STREAM( "Get Depth Frame mode status: " << status << "\n");
	ROS_INFO_STREAM( "depthFrameMode.pixelFormat: " << depthFrameMode.pixelFormat << "\n");
	ROS_INFO_STREAM( "depthFrameMode.resolutionWidth: " << depthFrameMode.resolutionWidth << "\n");
	ROS_INFO_STREAM( "depthFrameMode.resolutionHeight: " << depthFrameMode.resolutionHeight << "\n");
	ROS_INFO_STREAM( "depthFrameMode.fps: " << depthFrameMode.fps << "\n");

	status = PsGetFrameMode(deviceIndex, PsIRFrame, &irFrameMode);
	ROS_INFO_STREAM( "Get IR Frame mode status: " << status << "\n");
	ROS_INFO_STREAM( "irFrameMode.pixelFormat: " << irFrameMode.pixelFormat << "\n");
	ROS_INFO_STREAM( "irFrameMode.resolutionWidth: " << irFrameMode.resolutionWidth << "\n");
	ROS_INFO_STREAM( "irFrameMode.resolutionHeight: " << irFrameMode.resolutionHeight << "\n");
	ROS_INFO_STREAM( "irFrameMode.fps: " << irFrameMode.fps << "\n");

	PsCameraParameters cameraParameters;
	status = PsGetCameraParameters(deviceIndex, PsDepthSensor, &cameraParameters);

	ROS_INFO_STREAM( "Get PsGetCameraParameters status: " << status << "\n");
	ROS_INFO_STREAM( "Camera Intinsic: " << "\n");
	ROS_INFO_STREAM( "Fx: " << cameraParameters.fx << "\n");
	ROS_INFO_STREAM( "Cx: " << cameraParameters.cx << "\n");
	ROS_INFO_STREAM( "Fy: " << cameraParameters.fy << "\n");
	ROS_INFO_STREAM( "Cy: " << cameraParameters.cy << "\n");
	ROS_INFO_STREAM( "Distortion Coefficient: " << "\n");
	ROS_INFO_STREAM( "K1: " << cameraParameters.k1 << "\n");
	ROS_INFO_STREAM( "K2: " << cameraParameters.k2 << "\n");
	ROS_INFO_STREAM( "K3: " << cameraParameters.k3 << "\n");
	ROS_INFO_STREAM( "P1: " << cameraParameters.p1 << "\n");
	ROS_INFO_STREAM( "P2: " << cameraParameters.p2 << "\n");

	char versionnumber[10] = {0};
	int32_t dataSize = sizeof(versionnumber);
	status = PsGetProperty(deviceIndex, PsPropertyHWVer_Str, versionnumber, &dataSize);
	ROS_INFO_STREAM( "version number:" << versionnumber << "\n");

	cv::Mat mDispImg;
	cv::Mat mDispImgdiv16; // Image (RAW12 representation converted to 16 bit)
	sensor_msgs::CameraInfoPtr pico_cam_info_msg_(new sensor_msgs::CameraInfo());

	static tf::TransformBroadcaster br;
	tf::Transform transform;
	tf::Quaternion q;


	if (flag == 1) {
		//creating a camera info message to be published
		PicofillCamInfo(pico_cam_info_msg_);
		/* Transform message construction. Values are set to 0. Update the values using the position of camera from the base */
		transform.setOrigin( tf::Vector3(0, 0, 0.25) ); // position with respect to base (in meters)
		q.setRPY(0, 0, 0); // describes rotation with respect to base
		transform.setRotation(q);
	}

	/* transforms */
	int counter = 0;
	const string DepthImageWindow = "Depth image or something like that.......";
	
	cv::Mat imageMat;
	while (nh.ok()) {

		PsReadNextFrame(deviceIndex);

		PsFrame depthFrame = { 0 };
		PsFrame irFrame = { 0 };

		PsGetFrame(deviceIndex, PsDepthFrame, &depthFrame);
		PsGetFrame(deviceIndex, PsIRFrame, &irFrame);

		if (depthFrame.pFrameData != NULL) {
			Opencv_Depth(slope, depthFrame.height, depthFrame.width, depthFrame.pFrameData, imageMat);
			cv::imshow(DepthImageWindow, imageMat);


			point_cloud_to_ROS(depthFrame, deviceIndex);
			unsigned char key = waitKey(1);
		}

		ros::Time present_time = ros::Time::now();

		sensor_msgs::ImagePtr msg = imageToROSmsg(imageMat, "bgr8", "camera_depth_frame" , present_time, counter);
		imageMat.release();

		counter++;

		pub.publish(msg);

		if (flag == 1) {
			publishCamInfo(pico_cam_info_msg_,pubPicoCamInfo,present_time);
		}

		mDispImg.release();
		ros::spinOnce();
	}

	status = PsStopFrame(deviceIndex, PsDepthFrame);
	ROS_INFO_STREAM( "Stop Depth Frame status: " << status << "\n");

	status = PsStopFrame(deviceIndex, PsIRFrame);
	ROS_INFO_STREAM( "Stop IR Frame status: " << status << "\n");

	status = PsCloseDevice(deviceIndex);
	ROS_INFO_STREAM( "CloseDevice status: " << status << "\n");

	status = PsShutdown();
	ROS_INFO_STREAM( "Shutdown status: " << status << "\n");

}
