#ifndef PICOZENSE_ENUMS_H
#define PICOZENSE_ENUMS_H

/* Different depth range setting, different range setting support different distance range */
typedef enum {
	PsNearRange = 0,               // Range0
	PsMidRange = 1,                // Range1
	PsFarRange = 2,                // Range2	
	PsXNearRange = 3,              // Range3
	PsXMidRange = 4,               // Range4
	PsXFarRange = 5,               // Range5
	PsXXNearRange = 6,             // Range6
	PsXXMidRange = 7,              // Range7
	PsXXFarRange = 8               // Range8
}PsDepthRange;

/* Data mode setting, determine which frame output from device and frame fps */
typedef enum{
	PsDepthAndRGB_30 = 0,           // Output both Depth and RGB frames in 30fps. Resolution of depth frame is 640*480. 
	                                // Resolution of RGB can be set by PsSetFrameMode api, which support 1920*1080/1280*720/640*360
	PsIRAndRGB_30 = 1,              // Output both IR and RGB frames in 30fps. Resolution of ir frame is 640*480. 
	                                // Resolution of RGB can be set by PsSetFrameMode api, which support 1920*1080/1280*720/640*360
	PsDepthAndIR_30 = 2,            // Output both Depth and IR frames in 30fps. Resolution of both Depth and IR frames is 640*480
	PsRaw_30 = 3,                   // Used only for internal debug, not for SDK user
	PsNoCCD_30 = 4,                 // Used only for internal debug, not for SDK user
	PsDepthAndIRAndRGB_30 = 7,      // Output Depth/IR/RGB frames in 30fps£¬Resolution of both Depth and IR frames is 640*360. 
	                                // Resolution of RGB can be set by PsSetFrameMode api, which support 1920*1080/1280*720/640*360
	PsRaw_60 = 8,                   // Used only for internal debug, not for SDK user
	PsNoCCD_60 = 9,                 // Used only for internal debug, not for SDK user
	PsDepthAndIR_15_RGB_30 = 10,    // Output Depth/IR frames alternatively in 15fps£¬Resolution of both Depth and IR frames is 640*480. 
	                                // Resolution of RGB can be set by PsSetFrameMode api, which support 1920*1080/1280*720/640*360
	PsWDR_Depth = 11,               // WDR(Wide Dynamic Range) Depth mode, support multi range depth frame output alternatively, like Near/Far/Near/Far/Near...
	PsWDR_IR = 12,                  // WDR(Wide Dynamic Range) IR mode, not implemented currently
	PsWDR_DepthAndIR = 13,          // WDR(Wide Dynamic Range) Depth and IR mode, not implemented currently
}PsDataMode;

/* Properties that can be get or set */
typedef enum{
	PsPropertySN_Str = 5,           // Device serial number, like PD7110CGC9270020W
	PsPropertyFWVer_Str = 6,        // Device firmware version number, like DCAM710_c086_pc_sv0.01_R6_20180917_b35
	PsPropertyHWVer_Str = 7,        // Device hardware version number, like R6
	PsPropertyDataMode_UInt8 = 8    // Set data mode, refer to PsDataMode, same with the api PsSetDataMode
}PsPropertyType;

/* Frame type used for e.g. PsGetFrame */
typedef enum{
	PsDepthFrame = 0,              // Depth frame with 16bits per pixel in mm currently
	PsIRFrame = 1,                 // IR frame with 16bits per pixel currently
	PsGrayFrame = 2,               // Mono gray frame with 8bits per pixel, not used on DCAM710 currently
	PsRGBFrame = 3,                // RGB frame with 24bits per pixel RGB/BGR format
	PsMappedRGBFrame = 4,          // RGB frame with 24bits per pixel RGB/BGR format that is mapped to depth camera space and resolution is same as depth frame's, 
	                               // this frame can be enabled through api PsSetMapperEnabledDepthToRGB
	PsMappedDepthFrame = 5,        // Depth frame with 16bits per pixel in mm that is mapped to RGB camera space and resolution is same as RGB frame's, 
	                               // this frame can be enabled through api PsSetMapperEnabledRGBToDepth
	PsMappedIRFrame = 6,           // IR frame with 16bits per pixel that is mapped to RGB camera space and resolution is same as RGB frame's, 
	                               // this frame can be enabled through api PsSetMapperEnabledRGBToIR
	PsConfidenceFrame = 8,         // Confidence frame with 16bits per pixel
	PsWDRDepthFrame = 9            // WDR depth frame with 16bits per pixel in mm, only take effect when data mode set to PsWDR_Depth
}PsFrameType;

/* Camera type */
typedef enum{
	PsDepthSensor = 0x01,          // Depth camera
	PsRgbSensor = 0x02             // Color camera
}PsSensorType;

/* Image pixel format */
typedef enum{
	PsPixelFormatDepthMM16,        // Depth image pixel format, 16bits per pixel in mm
	PsPixelFormatGray16,           // IR image pixel format, 16bits per pixel
	PsPixelFormatGray8,            // Gray image pixel format, 8bits per pixel

	//Color
	PsPixelFormatRGB888,           // Color image pixel format, 24bits per pixel RGB format
	PsPixelFormatBGR888            // Color image pixel format, 24bits per pixel BGR format
}PsPixelFormat;

/* Return status for SDK api */
typedef enum{
	PsRetOK = 0,                     // Success
	PsRetNoDeviceConnected = -1,     // No DCAM device connected to host
	PsRetInvalidDeviceIndex = -2,    // Use invalid device index
	PsRetDevicePointerIsNull = -3,   // Device instance pointer is null
	PsRetInvalidFrameType = -4,      // Input frame type is invalid
	PsRetFramePointerIsNull = -5,    // Frame buffer pointer get is null
	PsRetNoPropertyValueGet = -6,    // This property is not for getting
	PsRetNoPropertyValueSet = -7,    // This property is not for setting
	PsRetPropertyPointerIsNull = -8, // Input property buffer pointer is null
	PsRetPropertySizeNotEnough = -9, // Input property buffer size is not enough
	PsRetInvalidDepthRange = -10,    // Input invalid depth range
	PsRetReadNextFrameError = -11,   // Error when call PsReadNextFrame
	PsRetInputPointerIsNull = -12,   // Input buffer pointer is null
	PsRetCameraNotOpened = -13,      // Camera is not open
	PsRetInvalidCameraType = -14,    // Input camera type is invalid
	PsRetInvalidParams = -15,        // Input parameters is invalid

	PsRetOthers = -255,	             // Other error return status
}PsReturnStatus;

/* Filter type */
typedef enum
{
	PsComputeRealDepthFilter = 0,   // Compute the real depth in depth camera coordinate system, default enable
	PsSmoothingFilter,              // Smoothing filter, default enable
	PsCompensationByIR
}PsFilterType;

/* Count of ranges alternatively output in WDR mode,
only support 2 or 3 ranges currently, like Near/Far or Near/Mid/Far */
typedef enum {
	PsWDRTotalRange_Two = 2,
	PsWDRTotalRange_Three = 3
}PsWDRTotalRange;

/* WDR style setting used for api PsSetWDRStyle,                                     */
/* which determine WDR image output is fusion from multi range(e.g. Near/Far fusion) */
/* or output alternatively(e.g. Near/Far/Near/Far...)                                */
typedef enum {
	PsWDR_FUSION = 0,              // WDR image output is fusion from multi range
	PsWDR_ALTERNATION = 1          // WDR image output alternatively(e.g. Near/Far/Near/Far...)
}PsWDRStyle;
	
/* Stream type */
typedef enum{
	PsStreamDepth = 0,             // Depth Stream
	PsStreamIR = 1,                // IR Stream
	PsStreamRGB = 2,               // RGB Stream
	PsStreamAudio = 3,             // Audio Stream
	PsStreamIMU = 4,               // IMU Data Stream
}PsStreamType;

/* Resolution */
typedef enum {
	PsRGB_Resolution_1920_1080 = 0,
	PsRGB_Resolution_1280_720 = 1,
	PsRGB_Resolution_640_480 = 2,
	PsRGB_Resolution_640_360 = 3,
}PsResolution;
#endif /* PICOZENSE_ENUMS_H */
