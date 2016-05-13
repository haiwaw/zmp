/******************************************************************************
*
* (c) Copyright 2007-2012 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information of Xilinx, Inc.
* and is protected under U.S. and international copyright and other
* intellectual property laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any rights to the
* materials distributed herewith. Except as otherwise provided in a valid
* license issued to you by Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
* and (2) Xilinx shall not be liable (whether in contract or tort, including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature related to, arising under or in connection with these
* materials, including for any direct, or any indirect, special, incidental,
* or consequential loss or damage (including loss of data, profits, goodwill,
* or any type of loss or damage suffered as a result of any action brought by
* a third party) even if such damage or loss was reasonably foreseeable or
* Xilinx had been advised of the possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-safe, or for use in
* any application requiring fail-safe performance, such as life-support or
* safety devices or systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any other applications
* that could lead to death, personal injury, or severe property or
* environmental damage (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and liability of any use of
* Xilinx products in Critical Applications, subject only to applicable laws
* and regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
* AT ALL TIMES.
*
******************************************************************************/
/*****************************************************************************/
/**
* @file xilflash_devicecontrol_example.c
*
* This file contains a design example using the Generic Flash Library.
* This example displays the Flash device geometry and properties. The geometry
* and properties are fetched using Device Control API.
*
*
* @note		None.
*
*<pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- ---------------------------------------------------------
* 1.01a mta  10/09/07 First release
* 2.00a ktn  12/04/09 Updated to use the HAL processor APIs/macros
* 3.00a sdm  03/03/11 Updated to pass BaseAddress and Flash Width to _Initialize
*		      API, as required by the new version of the library
*</pre>
******************************************************************************/

/***************************** Include Files *********************************/

#include <stdio.h>
#include <xilflash.h>
#include <xil_types.h>

/************************** Constant Definitions *****************************/

/*
 * The following constants define the baseaddress and width the flash memory.
 * These constants map to the XPAR parameters created in the xparameters.h file.
 * They are defined here such that a user can easily change all the needed
 * parameters in one place.
 */
#define FLASH_BASE_ADDRESS	XPAR_AXI_EMC_1_S_AXI_MEM0_BASEADDR

/*
 * The following constant defines the total byte width of the flash memory. The
 * user needs to update this width based on the flash width in the design/board.
 * The total flash width on some of the Xilinx boards is listed below.
 * -------------------------------
 * Board		Width
 * -------------------------------
 * ML403		4 (32 bit)
 * ML5xx		2 (16 bit)
 * Spartan3S 1600E	2 (16 bit)
 * Spartan-3A DSP	2 (16 bit)
 * Spartan-3A		2 (16 bit)
 * Spartan-3AN		2 (16 bit)
 * ML605		2 (16 bit)
 * SP605		2 (16 bit)
 * SP601		1 (8 bit)
 */
#define FLASH_MEM_WIDTH		2

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

int FlashDeviceControlExample(void);

/************************** Variable Definitions *****************************/

XFlash FlashInstance; /* XFlash Instance. */

/************************** Function Definitions ******************************/

/*****************************************************************************/
/**
*
* Main function to execute the Flash device control example.
*
* @param	None
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int main(void)
{
	int Status;

	Status = FlashDeviceControlExample();
	if(Status != XST_SUCCESS) {
		print("Flash Test Failed\r\n");
		return XST_FAILURE;
	}
	print("Flash Test Passed\r\n");
	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function fetches and displays the geometry and properties of the Flash *
* device.
*
* @param	None.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int FlashDeviceControlExample(void)
{
	int Status;
	u32 Index;
	DeviceCtrlParam IoctlParams;

	/*
	 * Initialize the Flash Library.
	 */
	Status = XFlash_Initialize(&FlashInstance, FLASH_BASE_ADDRESS,
				   FLASH_MEM_WIDTH, 0);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Reset the Flash Device. This clears the Status registers and puts
	 * the device in Read mode.
	 */
//	Status = XFlash_Reset(&FlashInstance);
//	if(Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}

	/*
	 * Fetch the flash device properties and display.
	 */
	Status = XFlash_DeviceControl(&FlashInstance,
				XFL_DEVCTL_GET_PROPERTIES, &IoctlParams);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	xil_printf("\n\r\t\tFlash Properties\n\r");
	xil_printf("FlashProperties->PartID.ManufacturerID = 0x%x\n\r",
			IoctlParams.PropertiesParam.PropertiesPtr->
						PartID.ManufacturerID);

	xil_printf("FlashProperties->PartID.DeviceID = 0x%x\n\r",
			IoctlParams.PropertiesParam.PropertiesPtr->
							PartID.DeviceID);

	xil_printf("FlashProperties->PartID.DeviceID = 0x%x\n\r",
			IoctlParams.PropertiesParam.PropertiesPtr->
							PartID.CommandSet);

	xil_printf("FlashProperties->TimeTypical.WriteSingle_Us = 0x%x\n\r",
			IoctlParams.PropertiesParam.PropertiesPtr->
						TimeTypical.WriteSingle_Us);

	xil_printf("FlashProperties->TimeTypical.WriteBuffer_Us = 0x%x\n\r",
			IoctlParams.PropertiesParam.PropertiesPtr->
						TimeTypical.WriteBuffer_Us);

	xil_printf("FlashProperties->TimeTypical.EraseBlock_Ms = 0x%x\n\r",
			IoctlParams.PropertiesParam.PropertiesPtr->
						TimeTypical.EraseBlock_Ms);

	xil_printf("FlashProperties->TimeTypical.EraseChip_Ms = 0x%x\n\r",
			IoctlParams.PropertiesParam.PropertiesPtr->
						TimeTypical.EraseChip_Ms);

	xil_printf("FlashProperties->TimeMax.WriteSingle_Us = 0x%x\n\r",
			IoctlParams.PropertiesParam.PropertiesPtr->
						TimeMax.WriteSingle_Us);

	xil_printf("FlashProperties->TimeMax.WriteBuffer_Us = 0x%x\n\r",
			IoctlParams.PropertiesParam.PropertiesPtr->
						TimeMax.WriteBuffer_Us);

	xil_printf("FlashProperties->TimeMax.EraseBlock_Ms = 0x%x\n\r",
			IoctlParams.PropertiesParam.PropertiesPtr->
						TimeMax.EraseBlock_Ms);

	xil_printf("FlashProperties->TimeMax.EraseChip_Ms = 0x%x\n\r",
			IoctlParams.PropertiesParam.PropertiesPtr->
						TimeMax.EraseChip_Ms);

	xil_printf("FlashProperties->ProgCap.WriteBufferSize = 0x%x\n\r",
			IoctlParams.PropertiesParam.PropertiesPtr->
						ProgCap.WriteBufferSize);

	xil_printf("FlashProperties->ProgCap.WriteBufferAlignMask = 0x%x\n\r",
			IoctlParams.PropertiesParam.PropertiesPtr->ProgCap.
						WriteBufferAlignmentMask);

	xil_printf("FlashProperties->ProgCap.EraseQueueSize = 0x%x\n\r",
			IoctlParams.PropertiesParam.PropertiesPtr->
						ProgCap.EraseQueueSize);

	/*
	 * Fetch the flash device geometry and display.
	 */
	Status = XFlash_DeviceControl(&FlashInstance,
				XFL_DEVCTL_GET_GEOMETRY, &IoctlParams);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	xil_printf("\n\r\n\r\t\tFlash Geometry\n\r");

	xil_printf("FlashGeometry->BaseAddress = 0x%x\n\r",
			IoctlParams.GeometryParam.GeometryPtr->BaseAddress);

	xil_printf("FlashGeometry->MemoryLayout = 0x%x\n\r",
			IoctlParams.GeometryParam.GeometryPtr->MemoryLayout);

	xil_printf("FlashGeometry->DeviceSize = 0x%x\n\r",
			IoctlParams.GeometryParam.GeometryPtr->DeviceSize);

	xil_printf("FlashGeometry->NumEraseRegions = 0x%x\n\r",
			IoctlParams.GeometryParam.GeometryPtr->NumEraseRegions);

	xil_printf("FlashGeometry->NumBlocks = 0x%x\n\r",
			IoctlParams.GeometryParam.GeometryPtr->NumBlocks);

	for(Index = 0; Index < IoctlParams.GeometryParam.GeometryPtr->
					NumEraseRegions; Index++) {
		xil_printf("\tErase region %d\n\r", Index);

		xil_printf("Absolute Offset = 0x%x\n\r",
				IoctlParams.GeometryParam.GeometryPtr->
					EraseRegion[Index].AbsoluteOffset);

		xil_printf("Absolute Block = 0x%x\n\r",
				IoctlParams.GeometryParam.GeometryPtr->
					EraseRegion[Index].AbsoluteBlock);

		xil_printf("Num Of Block = 0x%x\n\r",
				IoctlParams.GeometryParam.GeometryPtr->
						EraseRegion[Index].Number);

		xil_printf("Size Of Block = 0x%x\n\r",
				IoctlParams.GeometryParam.GeometryPtr->
						EraseRegion[Index].Size);
	}

	return XST_SUCCESS;
}









