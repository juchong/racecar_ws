#pragma once
#include <stdint.h>

/* -------------------------------------------------------------------- */
/**
* Including source file can choose between producing exports versus prototypes.
* If compiling source file needs protos, either do nothing, or create CTRE_CREATE_PROTOS.
* This is useful for static-linking the functions.
*
* Alternatively if application is meant to run-time load the routines, then func ptr typedefs
* are useful.  Especially when the func ptr typedefs have names matching the routines in the DLL.
* This is allows for using ctre::phoenix::runtime::LibLoader (or similar strategies).
*/
#if !defined(CTRE_CREATE_PROTOS) && !defined(CTRE_CREATE_EXPORTS)
/* if nothing is specified, assume proto's */
#define CTRE_CREATE_PROTOS
#endif
/* did including source choose proto's */
#if defined CTRE_CREATE_PROTOS
/* TODO: add gcc versions */

#if defined(WIN32) || defined(_WIN32) || defined(_WIN64)
#define CTRE_EXPORT	__declspec(dllexport)
#else
#define CTRE_EXPORT	
#endif

#define CTRE_FUNC(funcName)	(funcName)
#endif
/* did including source choose exports */
#if defined CTRE_CREATE_EXPORTS
/* TODO: add gcc versions */
#define CTRE_EXPORT	typedef
#define CTRE_FUNC(funcName)	(*funcName)
#endif
/* -------------------------------------------------------------------- */

extern "C" {

	/**
	*
	*/
	CTRE_EXPORT int32_t CTRE_FUNC(ctre_phoenix_simulation_adapter_Start)(int32_t canDeviceId);
	/**
	*
	*/
	CTRE_EXPORT int32_t CTRE_FUNC(ctre_phoenix_simulation_adapter_SendCANFrame)(uint32_t messageID, const uint8_t * data, uint8_t dataSize);
	/**
	*
	*/
	CTRE_EXPORT int32_t CTRE_FUNC(ctre_phoenix_simulation_adapter_ReceiveCANFrame)(uint32_t * messageID, uint8_t * dataToFill, uint8_t * dataSizeFilled);
	/**
	*
	*/
	CTRE_EXPORT int32_t  CTRE_FUNC(ctre_phoenix_simulation_adapter_ConfigGet)(uint32_t param,
		uint32_t valueToSend,
		uint32_t & outValueReceived,
		uint32_t & outSubvalue,
		uint32_t ordinal);
	/**
	*
	*/
	CTRE_EXPORT int32_t CTRE_FUNC(ctre_phoenix_simulation_adapter_ConfigSet)(uint32_t param,
		uint32_t value,
		uint32_t subValue,
		uint32_t ordinal);
}
