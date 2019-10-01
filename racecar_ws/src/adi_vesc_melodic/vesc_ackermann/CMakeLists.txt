cmake_minimum_required(VERSION 2.8.3)
project(vesc_ackermann)

find_package(catkin REQUIRED COMPONENTS
  nodelet
  pluginlib
  roscpp
  nav_msgs
  std_msgs
  geometry_msgs
  tf
  ackermann_msgs
  vesc_msgs
 roscpp tf
 roscpp tf2
rospy
)

catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS
    nodelet
    pluginlib
    roscpp
    rospy
    nav_msgs
    std_msgs
    geometry_msgs
    tf
    ackermann_msgs
    vesc_msgs
)

###########
## Build ##
###########

include_directories(
  include
  ${Boost_INCLUDE_DIRS}
  ${catkin_INCLUDE_DIRS}
)


# odom node executable
add_executable(vesc_to_odom_node src/vesc_to_odom_node.cpp
                                src/vesc_to_odom.cpp)
add_dependencies(vesc_to_odom_node ${catkin_EXPORTED_TARGETS})
target_link_libraries(vesc_to_odom_node
  ${catkin_LIBRARIES}
)

#imu
add_executable(vesc_to_imuodom_node src/vesc_to_imuodom_node.cpp
                                src/vesc_to_imuodom.cpp)
add_dependencies(vesc_to_imuodom_node ${catkin_EXPORTED_TARGETS})
target_link_libraries(vesc_to_imuodom_node
  ${catkin_LIBRARIES}
)

add_executable(angle_node src/data_gathering/joystick.cpp)
add_dependencies(angle_node ${catkin_EXPORTED_TARGETS})
target_link_libraries(angle_node
        ${catkin_LIBRARIES}
)

add_executable(odom_node src/data_gathering/odomsubs.cpp)
add_dependencies(odom_node ${catkin_EXPORTED_TARGETS})
target_link_libraries(odom_node
        ${catkin_LIBRARIES}
)

add_executable(imu_node src/data_gathering/imusubs.cpp)
add_dependencies(imu_node ${catkin_EXPORTED_TARGETS})
target_link_libraries(imu_node
        ${catkin_LIBRARIES}
)

add_executable(ackermann_to_vesc_node src/ackermann_to_vesc_node.cpp
                                      src/ackermann_to_vesc.cpp)
add_dependencies(ackermann_to_vesc_node ${catkin_EXPORTED_TARGETS})
target_link_libraries(ackermann_to_vesc_node
  ${catkin_LIBRARIES}
)

# nodelet library
add_library(vesc_ackermann_nodelet src/ackermann_to_vesc_nodelet.cpp
                                   src/ackermann_to_vesc.cpp
                                   src/vesc_to_odom_nodelet.cpp
				   src/vesc_to_imuodom_nodelet.cpp
				   src/vesc_to_odom.cpp
                                   src/vesc_to_imuodom.cpp)
add_dependencies(vesc_ackermann_nodelet ${catkin_EXPORTED_TARGETS})
target_link_libraries(vesc_ackermann_nodelet
  ${catkin_LIBRARIES}
)

#############
## Install ##
#############

install(TARGETS  ackermann_to_vesc_node  vesc_to_odom_node vesc_to_imuodom_node
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(TARGETS vesc_ackermann_nodelet
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
)

install(DIRECTORY include/${PROJECT_NAME}/
        DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION})
install(FILES vesc_ackermann_nodelet.xml
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
install(DIRECTORY launch/
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch)

#############
## Testing ##
#############

# TODO
