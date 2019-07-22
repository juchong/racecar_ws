#ifndef PICOZENSE_TYPES_H
#define PICOZENSE_TYPES_H

#include <stdint.h>
#include "PicoZense_enums.h"

typedef uint16_t PsDepthPixel;  // Depth image pixel type in 16-bit
typedef uint16_t PsGray16Pixel; // Gray image pixel type in 16-bit
typedef uint8_t PsGray8Pixel;   // Gray image pixel type in 8-bit

#pragma pack (push, 1)
/* Color image pixel type in 24-bit RGB format */
typedef struct
{
	uint8_t r;	// red
	uint8_t g;	// green
	uint8_t b;	// blue
} PsRGB888Pixel;

/* Color image pixel type in 24-bit BGR format */
typedef struct
{
	uint8_t b;	// blue
	uint8_t g;	// green
	uint8_t r;	// red
} PsBGR888Pixel;

/* Description of the output: format and resolution */
typedef struct
{
	PsPixelFormat pixelFormat;
	int32_t       resolutionWidth;
	int32_t       resolutionHeight;
	int32_t       fps;
}PsFrameMode;

typedef struct  
{
	float x, y, z;
}PsVector3f;

/* Depth Image Coordination Vector*/
typedef struct
{
	int          depthX;    // x in pixel
	int          depthY;    // y in pixel
	PsDepthPixel depthZ;    // z in mm
}PsDepthVector3;

/* IMU data */
typedef struct
{
	PsVector3f acc;      // m/s^2
	PsVector3f gyro;     // rad/s
	uint8_t    frameNo;  // IMU frame number, 0~255
}PsImu;

/* IMU data with extra parameters */
typedef struct
{
	PsVector3f acc;      // m/s^2
	PsVector3f gyro;     // rad/s
	float      temp;     // Celsius temperature scale
	uint8_t    frameNo;  // IMU frame number, 0~255
}PsImuWithParams;

/* Camera intrinsic parameters and distortion coefficient */
typedef struct
{
	double	fx;  // Focal length x (pixel)
	double	fy;  // Focal length y (pixel)
	double	cx;  // Principal point x (pixel)
	double	cy;  // Principal point y (pixel)
	double	k1;  // Radial distortion coefficient, 1st-order
	double	k2;  // Radial distortion coefficient, 2nd-order
	double	p1;  // Tangential distortion coefficient
	double	p2;  // Tangential distortion coefficient
	double	k3;  // Radial distortion coefficient, 3rd-order
	double	k4;  // Radial distortion coefficient, 4st-order
	double	k5;  // Radial distortion coefficient, 5nd-order
	double	k6;  // Radial distortion coefficient, 6rd-order
}PsCameraParameters;

/* Camera extrinsic parameters */
typedef struct
{
	double rotation[9];     // 3x3 rotation matrix
	double translation[3];  // 3-D translation vector
}PsCameraExtrinsicParameters;

/* Image frame data structure for Depth/IR/RGB */
typedef struct
{
	uint32_t       frameIndex;    // Frame index
	PsFrameType    frameType;     // PsFrameType
	PsPixelFormat  pixelFormat;   // PsPixelFormat
	uint8_t        imuFrameNo;    // Used to synchronize with imu, 0~255
	uint8_t*       pFrameData;    // Frame buffer pointer
	uint32_t       dataLen;       // Frame data size in byte
	float          exposureTime;  // In ms
	PsDepthRange   depthRange;    // Depth range of current frame, only for depth frame
	uint16_t       width;		  // Resolution of width
	uint16_t       height;        // Resolution of height
}PsFrame;

/* Audio frame data structure */
typedef struct
{
	uint8_t  audioFormat;    //0:pcm
	uint8_t  numChannels;    //1:mono; 2:stereo
	uint8_t  bitsPerSample;  //16bit
	uint32_t sampleRate;     //16Khz	
	uint8_t* pData;          //Frame buffer pointer
	uint32_t dataLen;        //Frame data size in byte
}PsAudioFrame;

/* WDR(Wide Dynamic Range, e.g. Near/Far range fusion) output mode setting */
typedef struct
{	 
	PsWDRTotalRange totalRange;  //Currently only 2 or 3 ranges output setting supported, like Near/Far or Near/Mid/Far
	PsDepthRange    range1;      //First range
	uint8_t         range1Count; //Count of successive range1 frame
	PsDepthRange    range2;      //Second range
	uint8_t         range2Count; //Count of successive range2 frame
	PsDepthRange    range3;      //Third range, only take effect when totalRange is set to 3
	uint8_t         range3Count; //Count of successive range3 frame, only take effect when totalRange is set to 3
}PsWDROutputMode;


typedef struct
{
	uint8_t	enable;
	uint8_t	option;
}PsIRS2Enable;

typedef struct
{
	uint16_t gain;
	uint8_t	option;
}PsGMMGain;

#pragma pack (pop)

#endif /* PICOZENSE_TYPES_H */
