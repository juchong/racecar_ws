#ifndef PICOZENSE_Factory_H
#define PICOZENSE_Factory_H

#include <stdint.h>
#include "PicoZense_define.h"

typedef enum
{
	PsNV12 = 0x01,
	PsH264 = 0x02,
}PsEncodeType;

typedef enum {
	PsCamDepthIntrinsic = 0,
	PsCamDepthDistortion,
	PsCamRGBIntrinsic,
	PsCamRGBDistortion,
	PsCamRotation,
	PsCamTransfer,
	PsCamE,
	PsCamF
}PsCameraParamsEnum;

typedef enum {
	PsDepthMode0 = 0,
	PsDepthMode1 = 1,
	PsDepthMode2 = 2,
}PsDepthMode;

typedef enum{
	PsFProperty						=	 0xF0000000,
	PsFPropertyHTP					=	 0xF0000001,
	PsFPropertyOFFSET				=	 0xF0000002,
	PsFPropertyMeasuringRange		=	 0xF0000003,
	PsFPropertyCameraParams			=	 0xF0000004,
	PsFPropertyDataMode_UInt8		=	 0xF0000005,
	PsFPropertyLDEnable				=	 0xF0000006,
	PsFPropertyISAEnable_UInt8		=	 0xF0000007,
	PsFPropertyTALEnable			=	 0xF0000008,
	PsFPropertyDepthMode_UInt8		=	 0xF0000009,
	PsFPropertyPCBA_Str				=	 0xF000000A,
	PsFPropertyWorkMode				=	 0xF000000B,
	PsFPropertyIRS2Enable_UInt8		=	 0xF000000C,
	PsFPropertyGMMGain_UInt16		=	 0xF000000D,
	PsFPropertyGMMParams			=	 0xF000000E,
	PsFPropertyACCSensitivity		=	 0xF000000F,
	PsFPropertyGyroSensitivity		=	 0xF0000010,
	PsFPropertyIMUDataMode			=	 0xF0000011,
	PsFPropertyRgbExpoTime_float	=	 0xF0000012, //ms
	PsFPropertyLensConfig			=	 0xF0000013,
	PsFPropertyPulseCountConfig		=	 0xF0000014,
	PsFPropertyACCOffset			=	 0xF0000015,
	PsFPropertyGyroOffset			=	 0xF0000016,
	PsFPropertyACCOffsetTemp		=	 0xF0000017,
	PsFPropertyGyroOffsetTemp		=	 0xF0000018,
	PsFPropertyFlashType			=	 0xF0000019,
	PsFPropertyMeasuringStatus		=	 0xF000001A
}PsFactoryPropertyType;

typedef enum 
{
	PsIMURawData = 0,
	PsIMUStandardData,
	PsIMUCorrectData,
	PsIMUCorrectFilterData
}PsIMUDataMode;

typedef struct 
{
	uint8_t	mode;
	uint8_t	bImuSwitch;
	uint8_t	bAudioSwitch;
	uint8_t	bDepthSwitch;
	uint8_t bRGBSwitch;
}PsWorkMode;

typedef struct 
{
	uint8_t	enable;
	uint8_t	option;
}PsTalEnable;

typedef struct 
{
	uint8_t	enable;
	uint8_t	option;
}PsLDEnable;

#pragma pack (push, 1)
typedef struct
{
	PsCameraParamsEnum type;
	union
	{
		//| fx | 0  | cx |
		//| 0  | fy | cy |
		//| 0  | 0  | 1  |
		double intrinsic[9];
		double rotation[9];
		double e[9];
		double f[9];

		struct
		{
			double d[8];
			double reserved;
		}distortion;

		struct
		{
			double t[3];
			double reserved[6];
		}transfer;

	}Parameters;
}PsCameraParams;

typedef struct
{
	uint8_t depthMode;
	//Near
	uint16_t LD0_Near;
	uint16_t LD1_Near;
	uint16_t LD2_Near;
	uint16_t SUB0_Near;
	uint16_t SUB1_Near;
	uint16_t SUB2_Near;
	//Mid
	uint16_t LD0_Mid;
	uint16_t LD1_Mid;
	uint16_t LD2_Mid;
	uint16_t SUB0_Mid;
	uint16_t SUB1_Mid;
	uint16_t SUB2_Mid;
	//Far
	uint16_t LD0_Far;
	uint16_t LD1_Far;
	uint16_t LD2_Far;
	uint16_t SUB0_Far;
	uint16_t SUB1_Far;
	uint16_t SUB2_Far;

}PsHTP;

typedef struct
{
	uint8_t depthMode;
	uint8_t depthRange;
	int16_t offset[49];
}PsOFFSET;

typedef struct
{
	uint8_t		depthMode; //PsDepthMode
	uint16_t	depthMaxNear;
	uint16_t	depthMaxMid;
	uint16_t	depthMaxFar;

	uint16_t	effectDepthMaxNear;
	uint16_t	effectDepthMaxMid;
	uint16_t	effectDepthMaxFar;

	uint16_t	effectDepthMinNear;
	uint16_t	effectDepthMinMid;
	uint16_t	effectDepthMinFar;
}PsMeasuringRange;

typedef struct
{
	uint16_t params[12];
}PsGMMParams;

typedef struct 
{
	float matrix[9];
}PsIMUSensitivity;

typedef struct
{
	uint8_t sum; //[1, 10]
	uint8_t index; //[1, 10]
	int8_t temp;
	float x;
	float y;
	float z;
}PsIMUOffset;

typedef struct
{
	uint8_t sum; //[1, 10]
	int8_t temp1;
	int8_t temp2;
	int8_t temp3;
	int8_t temp4;
	int8_t temp5;
	int8_t temp6;
	int8_t temp7;
	int8_t temp8;
	int8_t temp9;
	int8_t temp10;
}PsIMUOffsetTemp;

typedef struct
{
	uint8_t type;
	uint8_t state;//0:OFF; 1:ON
	uint16_t width;
	uint16_t height;
	uint8_t fps;
	uint8_t encodeType;
}PsLensConfig;

typedef struct
{
	uint16_t pulseCount;
	uint8_t mode;
	uint8_t range;
	uint8_t option; // 0:To users, Effective immediately; 1:To factory calib
}PsPulseCountConfig;

typedef struct
{
	uint16_t pulseCount_Current; //current mode,current range,
	uint16_t pulseCount_M0_Near;
	uint16_t pulseCount_M0_Mid;
	uint16_t pulseCount_M0_Far;
	uint16_t pulseCount_M1_Near;
	uint16_t pulseCount_M1_Mid;
	uint16_t pulseCount_M1_Far;
	uint16_t pulseCount_M2_Near;
	uint16_t pulseCount_M2_Mid;
	uint16_t pulseCount_M2_Far;
}PsPulseCountGet;

typedef enum{
	PsMappedDepth = 0,
	PsMappedRGB = 1,
}PsMappingType;

typedef struct
{
	double intrinsic_depth[9];
	double distortion_depth[8];
	double intrinsic_rgb[9];
	double distortion_rgb[8];
	double rotation[9];
	double t[3];
	double f[9];
}PsMappingCameraParams;

typedef struct
{
	int32_t depth_Width;
	int32_t	depth_Height;
	uint8_t*	pframeDepthData;
	int32_t rgb_Width;
	int32_t rgb_Height;
	uint8_t*	pframeRGBData;
}PsMappingFrameParams;

typedef struct
{	 
	uint8_t range;
	uint8_t status;
}PsMeasuringStatusSet;

typedef struct
{	 
	uint8_t statusAllDone;
	uint8_t statusRange0;
	uint8_t statusRange1;
	uint8_t statusRange2;
	
	uint8_t statusRange3;
	uint8_t statusRange4;
	uint8_t statusRange5;
	
	uint8_t statusRange6;
	uint8_t statusRange7;
	uint8_t statusRange8;
}PsMeasuringStatusGet;


#pragma pack (pop)

//read and write register value
/*
*  write register value
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	addr[In]: register address
*	val[Out]:register value
*	regNum[In]: register number
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetRegVal(int32_t deviceIndex, uint16_t addr[], uint16_t val[], uint8_t regNum);

//read register value
/*
*  read register value
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	addr[In]: register address
*	val[Out]:register value
*	regNum[In]: register number
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetRegVal(int32_t deviceIndex, uint16_t addr[], uint16_t val[], uint8_t regNum);

/*
*  Set to enable or disable the Audio Record feature
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetAudioRecordEnabled(int32_t deviceIndex, bool bEnabled);

/*
*  Set to enable or disable the correction of depth feature
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetRealDepthCorrectionEnabled(int32_t deviceIndex, bool bEnabled);

/*
*  Set to enable or disable the RGBCorrection feature
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetRGBCorrectionEnabled(int32_t deviceIndex, bool bEnabled);
/*
*  Get the RGBCorrection feature is enable or disable 
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the feature, false to disable the feature
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetRGBCorrectionEnabled(int32_t deviceIndex, bool *bEnabled);

/*
*  Set to enable or disable the low power mode
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the low power mode, false to disable the low power mode
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetLowPowerModeEnabled(int32_t deviceIndex, bool bEnabled);

PICOZENSE_C_API_EXPORT PsReturnStatus PsGetMeasuringRange(int32_t deviceIndex, PsDepthRange depthRange, PsMeasuringRange* pMeasuringRange);

/*
*  Initialize Mapping, should be called first if you use mapping
*  @Parameters: None
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsMappingInitialize();

/*
*  Shutdown Mapping, release all resources the Mapping created, it is forbiden to call PsSetMapping api after PsMappingShutdown is called
*  @Parameters: None
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsMappingShutdown();

/*
*  Set Mapping ,should be called after PsMappingInitialize api and before PsMappingShutdown api
*  @Parameters:
*	type [In]: mapping type, refer to PsMappingType
*	parmas[In]: the camera params, refer to PsMappingCameraParams
*	frames [In]: the frame params, refer to PsMappingFrameParams
*	out_Width [out]: the width of out frame
*	out_Height [out]: the Height of out frame
*	ppFrame[Out]: pointer of pointer to frame buffer, you need to create a frame pointer variable and pass its pointer to this api
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetMapping(PsMappingType type, PsMappingCameraParams* parmas, PsMappingFrameParams* frames, int32_t* out_Width, int32_t* out_Height, void** ppFrame);

PICOZENSE_C_API_EXPORT PsReturnStatus PsSetRangeValue(int32_t deviceIndex, PsDepthRange depthRange, int minvalue, int maxvalue);

/*
*  Set to enable or disable the SlaveMode feature
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the SlaveMode, false to disable the SlaveMode
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetSlaveModeEnabled(int32_t deviceIndex, bool bEnabled);
/*
*  Set to enable or disable the AntiInterference feature
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	bEnabled [In]: true to enable the AntiInterference, false to disable the AntiInterference
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetAntiInterferenceEnabled(int32_t deviceIndex, bool bEnabled);

/*
*  Set Confidence bit count
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	confidence [In]: the bit count that confidence will Occupy
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetConfidenceBit(int32_t deviceIndex, uint8_t confidence);
/*
*  Get  bit count that Confidence occupy
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	confidence [out]: the bit count that confidence occupied
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetConfidenceBit(int32_t deviceIndex, uint8_t* confidence);

/*
*  Set Confidence based on which frame, Depth or IR frame
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	which [In]: which frame the confidence based on ,0 : IR, 1: Depth
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsSetConfidenceWhich(int32_t deviceIndex, uint8_t which);
/*
*  Get Confidence based on which frame, Depth or IR frame
*  @Parameters:
*	deviceIndex[In]: the device index, its range is 0 to deviceCount-1
*	which [out]: which frame the confidence based on ,0 : IR, 1: Depth
*  @Return: PsReturnStatus value, PsRetOK: Succeed, Others: Failed
*/
PICOZENSE_C_API_EXPORT PsReturnStatus PsGetConfidenceWhich(int32_t deviceIndex, uint8_t* pWhich);

#endif /* PICOZENSE_FACTORY_H */
