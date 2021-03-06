cmake_minimum_required(VERSION 2.8.3)
project(adi_tof_melodic)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS 
  roscpp
  std_msgs
  sensor_msgs
  cv_bridge
  image_transport
  tf
)


option(USE_ARM "Using ARM" ON)

#set(PICO_LIBS ${PROJECT_SOURCE_DIR}/dependencies/PicoZenseSDK_aarch64_linux/Lib/libpicozense_api.so)
if(USE_ARM)
    set(PICO_DIR ${PROJECT_SOURCE_DIR}/dependencies/PicoZenseSDK_aarch64_linux)
    set(OpenCV_DIR ${PROJECT_SOURCE_DIR}/dependencies/PicoZenseSDK_aarch64_linux/Thirdparty/opencv-3.4.1)
else()
    set(PICO_DIR ${PROJECT_SOURCE_DIR}/dependencies/PicoZenseSDK_Ubuntu16.04_DCAM710/)
    set(OpenCV_DIR ${PROJECT_SOURCE_DIR}/dependencies/PicoZenseSDK_Ubuntu16.04_DCAM710/Thirdparty/opencv-3.4.1)
endif(USE_ARM)
unset(USE_ARM CACHE)

#set(CMAKE_INSTALL_RPATH "/home/analog/racecar_ws/racecar_ws/src/adi_tof_melodic/dependencies/PicoZenseSDK_aarch64_linux/Thirdparty/opencv-3.4.1/lib")
set(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)
## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)


## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html
# catkin_python_setup()

################################################
## Declare ROS messages, services and actions ##
################################################

## To declare and build messages, services or actions from within this
## package, follow these steps:
## * Let MSG_DEP_SET be the set of packages whose message types you use in
##   your messages/services/actions (e.g. std_msgs, actionlib_msgs, ...).
## * In the file package.xml:
##   * add a build_depend tag for "message_generation"
##   * add a build_depend and a exec_depend tag for each package in MSG_DEP_SET
##   * If MSG_DEP_SET isn't empty the following dependency has been pulled in
##     but can be declared for certainty nonetheless:
##     * add a exec_depend tag for "message_runtime"
## * In this file (CMakeLists.txt):
##   * add "message_generation" and every package in MSG_DEP_SET to
##     find_package(catkin REQUIRED COMPONENTS ...)
##   * add "message_runtime" and every package in MSG_DEP_SET to
##     catkin_package(CATKIN_DEPENDS ...)
##   * uncomment the add_*_files sections below as needed
##     and list every .msg/.srv/.action file to be processed
##   * uncomment the generate_messages entry below
##   * add every package in MSG_DEP_SET to generate_messages(DEPENDENCIES ...)

## Generate messages in the 'msg' folder
# add_message_files(
#   FILES
#   Message1.msg
#   Message2.msg
# )

## Generate services in the 'srv' folder
# add_service_files(
#   FILES
#   Service1.srv
#   Service2.srv
# )

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )

## Generate added messages and services with any dependencies listed here
# generate_messages(
#   DEPENDENCIES
#   std_msgs  # Or other packages containing msgs
# )

################################################
## Declare ROS dynamic reconfigure parameters ##
################################################

## To declare and build dynamic reconfigure parameters within this
## package, follow these steps:
## * In the file package.xml:
##   * add a build_depend and a exec_depend tag for "dynamic_reconfigure"
## * In this file (CMakeLists.txt):
##   * add "dynamic_reconfigure" to
##     find_package(catkin REQUIRED COMPONENTS ...)
##   * uncomment the "generate_dynamic_reconfigure_options" section below
##     and list every .cfg file to be processed

## Generate dynamic reconfigure parameters in the 'cfg' folder
# generate_dynamic_reconfigure_options(
#   cfg/DynReconf1.cfg
#   cfg/DynReconf2.cfg
# )

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if your package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
  INCLUDE_DIRS ${OpenCV_DIR}/include ${PICO_DIR}/Include
#  LIBRARIES pico_zense
  CATKIN_DEPENDS image_transport sensor_msgs
#  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  ${PICO_DIR}/Include
  ${OpenCV_DIR}/include

 ${catkin_INCLUDE_DIRS}
)
#
## Declare a C++ library
add_library(libpicozense_api SHARED IMPORTED)
set_property(TARGET libpicozense_api PROPERTY IMPORTED_LOCATION ${PICO_DIR}/Lib/libpicozense_api.so)

add_library(libopencv_calib3d SHARED IMPORTED)
set_property(TARGET libopencv_calib3d PROPERTY IMPORTED_LOCATION ${OpenCV_DIR}/lib/libopencv_calib3d.so)

add_library(libopencv_imgcodecs SHARED IMPORTED)
set_property(TARGET libopencv_imgcodecs PROPERTY IMPORTED_LOCATION ${OpenCV_DIR}/lib/libopencv_imgcodecs.so)

add_library(libopencv_flann SHARED IMPORTED)
set_property(TARGET libopencv_flann PROPERTY IMPORTED_LOCATION ${OpenCV_DIR}/lib/libopencv_flann.so)

add_library(libopencv_imgproc SHARED IMPORTED)
set_property(TARGET libopencv_imgproc PROPERTY IMPORTED_LOCATION ${OpenCV_DIR}/lib/libopencv_imgproc.so)

add_library(libopencv_highgui SHARED IMPORTED)
set_property(TARGET libopencv_highgui PROPERTY IMPORTED_LOCATION ${OpenCV_DIR}/lib/libopencv_highgui.so)

add_library(libopencv_core SHARED IMPORTED)
set_property(TARGET libopencv_core PROPERTY IMPORTED_LOCATION ${OpenCV_DIR}/lib/libopencv_core.so)
#

## Add cmake target dependencies of the library
## as an example, code may need to be generated before libraries
## either from message generation or dynamic reconfigure
# add_dependencies(${PROJECT_NAME} ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Declare a C++ executable
## With catkin_make all packages are built within a single CMake context
## The recommended prefix ensures that target names across packages don't collide
#add_executable(FrameViewer samples/FrameViewer/FrameViewer.cpp)
add_executable(publisher src/publisher.cpp)
target_link_libraries(publisher 
  libpicozense_api
  libopencv_calib3d
  libopencv_imgcodecs
  libopencv_flann
  libopencv_imgproc
  libopencv_highgui
  libopencv_core
  ${catkin_LIBRARIES}
)


add_executable(point_cloud_thinner src/point_cloud_thinner.cpp)
target_link_libraries(point_cloud_thinner ${catkin_LIBRARIES}) 

#add_executable(IrFrameReader samples/IrFrameReader/IrFrameReader.cpp)
#target_link_libraries(IrFrameReader 
#  libpicozense_api
#  ${catkin_LIBRARIES}
#)
#
#add_executable(FrameViewer samples/FrameViewer/FrameViewer.cpp)
#target_link_libraries(FrameViewer 
#  libpicozense_api
#  libopencv_calib3d
#  libopencv_imgcodecs
#  libopencv_flann
#  libopencv_imgproc
#  libopencv_highgui
#  libopencv_core
#  ${catkin_LIBRARIES}
#)
#
#add_executable(DepthFrameReader samples/DepthFrameReader/DepthFrameReader.cpp)
#target_link_libraries(DepthFrameReader 
#  libpicozense_api
#  ${catkin_LIBRARIES}
#)
#
#add_executable(RGBFrameReader samples/RGBFrameReader/RGBFrameReader.cpp)
#target_link_libraries(RGBFrameReader 
#  libpicozense_api
#  ${catkin_LIBRARIES}
#)
#
#add_executable(WDR samples/WDR/WDR.cpp)
#target_link_libraries(WDR 
#  libpicozense_api
#  libopencv_calib3d
#  libopencv_imgcodecs
#  libopencv_flann
#  libopencv_imgproc
#  libopencv_highgui
#  libopencv_core
#  ${catkin_LIBRARIES}
#)
## Rename C++ executable without prefix
## The above recommended prefix causes long target names, the following renames the
## target back to the shorter version for ease of user use
## e.g. "rosrun someones_pkg node" instead of "rosrun someones_pkg someones_pkg_node"
# set_target_properties(${PROJECT_NAME}_node PROPERTIES OUTPUT_NAME node PREFIX "")

## Add cmake target dependencies of the executable
## same as for the library above
# add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Specify libraries to link a library or executable target against
# target_link_libraries(${PROJECT_NAME}_node
#   ${catkin_LIBRARIES}
# )

#############
## Install ##
#############

# all install targets should use catkin DESTINATION variables
# See http://ros.org/doc/api/catkin/html/adv_user_guide/variables.html

## Mark executable scripts (Python etc.) for installation
## in contrast to setup.py, you can choose the destination
# install(PROGRAMS
#   scripts/my_python_script
#   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

# Mark executables and/or libraries for installation
install(TARGETS publisher
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
#install(TARGETS DepthFrameReader IrFrameReader FrameViewer RGBFrameReader WDR
#  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
#)


## Mark other files for installation (e.g. launch and bag files, etc.)
# install(FILES
#   # myfile1
#   # myfile2
#   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
# )

#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# catkin_add_gtest(${PROJECT_NAME}-test test/test_pico_zense.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)
