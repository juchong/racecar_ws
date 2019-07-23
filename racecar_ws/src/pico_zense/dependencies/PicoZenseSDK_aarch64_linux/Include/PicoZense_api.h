#ifndef PICOZENSE_API_H
#define PICOZENSE_API_H

#include "PicoZense_define.h"

/*
*  Initialize PicoZense SDK, should be called first before calling any other api
*  @Parameters: None
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsInitialize();

/*
*  Shutdown PicoZense SDK, release all resources the SDK created, it is forbidden to call any other api after PsShutdown is called
*  @Parameters: None
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsShutdown();

/*
*  Get the count of all supported devices connected
*  @Parameters: 
*	pDeviceCount[Out]: pointer to the variable that used to store returned device count, you need to create an int32_t variable and pass its pointer to this api
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetDeviceCount(int32_t* pDeviceCount);

/*
*  Open the corresponding device indicated by the deviceIndex 
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsOpenDevice(int32_t deviceIndex);

/*
*  Close the corresponding device indicated by the deviceIndex
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsCloseDevice(int32_t deviceIndex);

/*
*  Start to capture the image frame indicated by frameType, currently not implemented in fact, when PsOpenDevce called, corresponding frames indicated by DataMode start to capture
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	frameType[In]: frame type, refer to PsFrameType
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsStartFrame(int32_t deviceIndex, PsFrameType frameType);

/*
*  Stop to capture the image frame indicated by frameType, currently not implemented in fact, when PsCloseDevice called, corresponding frames indicated by DataMode stop to capture
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	frameType[In]: frame type, refer to PsFrameType
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsStopFrame(int32_t deviceIndex, PsFrameType frameType);

/*
*  Read frame from the corresponding device by this api, it should be called first before you want to get one frame data through PsGetFrame
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsReadNextFrame(int32_t deviceIndex);

/*
*  Get one frame data by this api, it should be called after PsReadNextFrame
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	frameType[In]: frame type, refer to PsFrameType
*	pPsFrame[Out]: pointer to the variable that used to store returned PsFrame, 
*					which the pFrameData of PsFrame point to the buffer stored image frame, 
*					you need to create a PsFrame variable and pass its pointer to this api 
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetFrame(int32_t deviceIndex, PsFrameType frameType, PsFrame* pPsFrame);

/*
*  Get imu data (update rate 500hz)
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	pImuData[out]: pointer to the variable that used to store returned PsImu data, refer to PsImu
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetImu(int32_t deviceIndex, PsImu* pImuData);

/*
*  Get imu data with extra parameters (update rate 500hz)
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	pImuDataWithParams[out]: pointer to the variable that used to store returned PsImuWithParams data, refer to PsImuWithParams
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetImuWithParams(int32_t deviceIndex, PsImuWithParams* pImuDataWithParams);

/*
*  Get audio data
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	pAudio[out]: pointer to the variable that used to store returned PsAudioFrame data, refer to PsAudioFrame
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetAudio(int32_t deviceIndex, PsAudioFrame* pAudio);

/*
*  Get the frame mode
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	frameType[In]: frame type, refer to PsFrameType
*	pFrameMode[Out]: pointer to the variable that used to store returned frame mode, you need to create a PsFrameMode variable and pass its pointer to this api
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetFrameMode(int32_t deviceIndex, PsFrameType frameType, PsFrameMode* pFrameMode);

/*
*  Set the frame mode
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	frameType[In]: frame type, refer to PsFrameType
*	pFrameMode[In]: pointer to the variable that used to store frame mode, you need to create a PsFrameMode variable and pass its pointer to this api
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetFrameMode(int32_t deviceIndex, PsFrameType frameType, PsFrameMode* pFrameMode);

/*
*  Set the output data mode
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	dataMode[In]: output data mode, refer to PsDataMode
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetDataMode(int32_t deviceIndex, PsDataMode dataMode);

/*
*  Get the depth range that the corresponding device currently used
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	pDepthRange[Out]: pointer to the variable that used to store returned depth range, you need to create a PsDepthRange variable and pass its pointer to this api
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetDepthRange(int32_t deviceIndex, PsDepthRange* pDepthRange);

/*
*  Set the depth range to the corresponding device
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	depthRange[In]: the depth range mode, refer to PsDepthRange
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetDepthRange(int32_t deviceIndex, PsDepthRange depthRange);

/*  Get the threshold value
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	pThreshold[Out]: the threshold value
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetThreshold(int32_t deviceIndex, uint16_t* pThreshold);

/*  Set the threshold value
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	threshold[In]: the threshold value
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetThreshold(int32_t deviceIndex, uint16_t threshold);

/*
*  Get the device pulse count
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	pPulseCount[out]: pointer to the variable that used to store returned pulse count
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetPulseCount(int32_t deviceIndex, uint16_t* pPulseCount);

/*
*  Set the device pulse count
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	pulseCount[In]: the pulse count value
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetPulseCount(int32_t deviceIndex, uint16_t pulseCount);

/*
*  Get the corresponding property value
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	propertyType[In]: property type, refer to PsPropertyType
*	pData[Out]: pointer to the buffer that used to store returned property value, you need to create a buffer and pass its pointer to this api
*	pDataSize[Out]: pointer to the variable that used to store returned size in byte of returned property value, you need to create an int32_t variable and pass its pointer to this api
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetProperty(int32_t deviceIndex, int32_t propertyType, void* pData, int32_t* pDataSize);

/*
*  Set the corresponding property value
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	propertyType[In]: property type, refer to PsPropertyType
*	pData[In]: pointer to the buffer which stored the property value to be set, you need to create a buffer and set the property value to this buffer, then pass its pointer to this api
*	dataSize[In]: the property value size in byte
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetProperty(int32_t deviceIndex, int32_t propertyType, const void* pData, int32_t dataSize);

/*
*  Get camera intrinsic and distortion coefficient parameters
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	sensorType[In]: sensor type, indicate which sensor (depth or rgb) parameters to get, refer to PsSensorType
*	pCameraParameters[out]: pointer to the PsCameraParameters structure variable that used to store returned camera parameters
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetCameraParameters(int32_t deviceIndex, PsSensorType sensorType, PsCameraParameters* pCameraParameters);

/*
*  Get camera rotation and transfer coefficient parameters
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	pCameraExtrinsicParameters[out]: pointer to the PsCameraExtrinsicParameters structure variable that used to store returned extrinsic parameters
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetCameraExtrinsicParameters(int32_t deviceIndex, PsCameraExtrinsicParameters* pCameraExtrinsicParameters);

/*
*  Set the color image pixel format, currently only support RGB or BGR format
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	pixelFormat[In]: color pixel format, refer to PsPixelFormat, currently only PsPixelFormatRGB888 and PsPixelFormatBGR888 take effect
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetColorPixelFormat(int32_t deviceIndex, PsPixelFormat pixelFormat);

/*
*  Set to enable or disable the Filter feature
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	filterType[In]: filter type, refer to PsFilterType
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetFilter(int32_t deviceIndex, PsFilterType filterType, bool bEnabled);
/*
*  Get the Filter feature is enable or disable
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	filterType[In]: filter type, refer to PsFilterType
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/PICOZENSE_C_API_EXPORT PsReturnStatus PsGetFilter(int32_t deviceIndex, PsFilterType filterType, bool *bEnabled);

/*
*  Set to enable or disable the Depth distortion correction feature
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetDepthDistortionCorrectionEnabled(int32_t deviceIndex, bool bEnabled);
/*
*  Get the Depth distortion correction feature is enable or disable 
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetDepthDistortionCorrectionEnabled(int32_t deviceIndex, bool *bEnabled);
/*
*  Set to enable or disable the Ir distortion correction feature
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetIrDistortionCorrectionEnabled(int32_t deviceIndex, bool bEnabled);
/*
*  Get the Ir distortion correction feature is enable or disable 
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetIrDistortionCorrectionEnabled(int32_t deviceIndex, bool *bEnabled);
/*
*  Set to enable or disable the RGB distortion correction feature
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetRGBDistortionCorrectionEnabled(int32_t deviceIndex, bool bEnabled);
/*
*  Get the RGB distortion correction feature is enable or disable 
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetRGBDistortionCorrectionEnabled(int32_t deviceIndex, bool *bEnabled);
/*
*  Converts the input points from the World coordinate system to the Depth coordinate system
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	pWorldVector[In]: pointer to the buffer which stored the x,y,z value of world coordinate of the input points to be converted, measured in millimeters
*	pDepthVect[Out]: pointer to the buffer to store the output x,y,z value of depth coordinate
*	                 (x,y) is measured in pixels with (0,0) at the top left of the image
*	                 z is measured in millimeters, same as the reference of PsPixelFormat of depth frame
*	pointCount[In]: the point count to be converted
*	pCameraParam[In]: input pointer to the PsCameraParameters structure variable, refer to PsCameraParameters
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsConvertWorldToDepth(int32_t deviceIndex, PsVector3f* pWorldVector, PsDepthVector3* pDepthVector, int32_t pointCount, PsCameraParameters* pCameraParam);

/*
*  Converts the input points from the Depth coordinate system to the World coordinate system
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	pDepthVector[In]: pointer to the buffer which stored the x,y,z value of depth coordinate of the input points to be converted
*	                  (x,y) is measured in pixels with (0,0) at the top left of the image
*	                  z is measured in millimeters, same as the reference of PsPixelFormat of depth frame
*	pWorldVector[Out]: pointer to the buffer to store the output x,y,z value of world coordinate, measured in millimeters
*	pointCount[In]: the point count to be converted
*	pCameraParam[In]: input pointer to the PsCameraParameters structure variable, refer to PsCameraParameters
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsConvertDepthToWorld(int32_t deviceIndex, PsDepthVector3* pDepthVector, PsVector3f* pWorldVector, int32_t pointCount, PsCameraParameters* pCameraParam);

/*
*  Converts the input points from the Depth coordinate system to the World coordinate system
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	pDepthFrame[In]: pointer to the buffer which stored the depth frame
*	pWorldVector[Out]: pointer to the buffer to store the output x,y,z value of world coordinate, measured in millimeters.
*	                   The length of pWorldVector must be equal to pDepthFrame->width * pDepthFrame->height,otherwise it will cause a crash.
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsConvertDepthFrameToWorldVector(int32_t deviceIndex, const PsFrame& depthFrame, PsVector3f* pWorldVector);

/*
*  Set to enable or disable the feature of mapped rgb image in depth camera space
*  if this feature is enabled, the mapped rgb image can be get through PsGetFrame with input frame type "PsMappedRGBFrame"
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetMapperEnabledDepthToRGB(int32_t deviceIndex, bool bEnabled);
/*
*  Get the feature of mapped rgb image in depth camera space is enable or disable 
*  if this feature is enabled, the mapped rgb image can be get through PsGetFrame with input frame type "PsMappedRGBFrame"
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetMapperEnabledDepthToRGB(int32_t deviceIndex, bool *bEnabled);
/*
*  Set to enable or disable the feature of mapped depth image in rgb camera space 
*  if this feature is enabled, the mapped depth image can be get through PsGetFrame with input frame type "PsMappedDepthFrame"
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetMapperEnabledRGBToDepth(int32_t deviceIndex, bool bEnabled);
/*
*  Get the feature of mapped depth image in rgb camera space is enable or disable 
*  if this feature is enabled, the mapped depth image can be get through PsGetFrame with input frame type "PsMappedDepthFrame"
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetMapperEnabledRGBToDepth(int32_t deviceIndex, bool *bEnabled);
/*
*  Set to enable or disable the feature of mapped IR image in rgb camera space
*  if this feature is enabled, the mapped IR image can be get through PsGetFrame with input frame type "PsMappedIRFrame"
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetMapperEnabledRGBToIR(int32_t deviceIndex, bool bEnabled);
/*
*  Get the feature of mapped IR image in rgb camera space is enable or disable
*  if this feature is enabled, the mapped IR image can be get through PsGetFrame with input frame type "PsMappedIRFrame"
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetMapperEnabledRGBToIR(int32_t deviceIndex, bool *bEnabled);

/*
*  Set WDR output mode, refer to PsWDROutputMode
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	pWDRMode[In]: the WDR output mode, refer to PsWDROutputMode
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetWDROutputMode(int32_t deviceIndex, PsWDROutputMode* pWDRMode);

/*
*  Get WDR output mode, refer to PsWDROutputMode
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	pWDRMode[Out]: the WDR output mode, refer to PsWDROutputMode
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetWDROutputMode(int32_t deviceIndex, PsWDROutputMode* pWDRMode);

/*
*  Set fusion threshold of WDR mode 
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	threshold [In]: the threshold value
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetWDRFusionThreshold(int32_t deviceIndex, uint16_t threshold1, uint16_t threshold2);

/*
*  Set output style of WDR mode
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	wdrStyle[In]: the output style, in fusion or alternation, refer to PsWDRStyle
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetWDRStyle(int32_t deviceIndex, PsWDRStyle wdrStyle);

/*
*  Set to enable or disable the depth and RGB synchronize feature
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetSynchronizeEnabled(int32_t deviceIndex, bool bEnabled);
/*
*  Get the depth and RGB synchronize feature is enable or disable
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetSynchronizeEnabled(int32_t deviceIndex, bool *bEnabled);

/*
*  Get the device gmmgain
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	gmmgain[out]: pointer to the variable that used to store returned gmmgain
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetGMMGain(int32_t deviceIndex, uint16_t* gmmgain);

/*
*  Set the device gmmgain
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	gmmgain[In]: the gmmgain value
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetGMMGain(int32_t deviceIndex, PsGMMGain gmmgain);


/*
*  Set to enable or disable the ComputeRealDepth feature
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetComputeRealDepthCorrectionEnabled(int32_t deviceIndex, bool bEnabled);
/*
*  Get the ComputeRealDepth feature is enable or disable
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetComputeRealDepthCorrectionEnabled(int32_t deviceIndex, bool *bEnabled);
/*
*  Set to enable or disable the SmoothingFilter feature
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetSmoothingFilterEnabled(int32_t deviceIndex, bool bEnabled);
/*
*  Get the SmoothingFilter feature is enable or disable
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetSmoothingFilterEnabled(int32_t deviceIndex, bool *bEnabled);
/*
*  Set the device Resolution
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	resolution[In]: the resolution value, refer to PsResolution
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetResolution(int32_t deviceIndex, PsResolution resolution);
/*
*  Get the device Resolution
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	resolution[In]: the resolution value, refer to PsResolution
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetResolution(int32_t deviceIndex, uint16_t* resolution);

/*
*  Set to enable or disable the SpatialFilter feature
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetSpatialFilterEnabled(int32_t deviceIndex, bool bEnabled);
/*
*  Get the SpatialFilter feature is enable or disable 
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetSpatialFilterEnabled(int32_t deviceIndex, bool *bEnabled);
/*
*  Set to enable or disable the TimeFilter feature
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetTimeFilterEnabled(int32_t deviceIndex, bool bEnabled);
/*
*  Get the TimeFilter feature is enable or disable
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetTimeFilterEnabled(int32_t deviceIndex, bool *bEnabled);

#endif /* PICOZENSE_API_H */
