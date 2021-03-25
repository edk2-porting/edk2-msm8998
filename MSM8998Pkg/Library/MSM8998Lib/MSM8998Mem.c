/** @file
*
*  Copyright (c) 2011, ARM Limited. All rights reserved.
*  Copyright (c) 2019, RUIKAI LIU and MR TUNNEL. All rights reserved.
*
*  This program and the accompanying materials
*  are licensed and made available under the terms and conditions of the BSD License
*  which accompanies this distribution.  The full text of the license may be found at
*  http://opensource.org/licenses/bsd-license.php
*
*  THE PROGRAM IS DISTRIBUTED UNDER THE BSD LICENSE ON AN "AS IS" BASIS,
*  WITHOUT WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.
*
**/

#include <Library/ArmPlatformLib.h>
#include <Library/DebugLib.h>
#include <Library/HobLib.h>
#include <Configuration/DeviceMemoryMap.h>
/**
  Return the Virtual Memory Map of your platform
  This Virtual Memory Map is used by MemoryInitPei Module to initialize the MMU on your platform.
  @param[out]   VirtualMemoryMap    Array of ARM_MEMORY_REGION_DESCRIPTOR describing a Physical-to-
									Virtual Memory mapping. This array must be ended by a zero-filled
									entry
**/

STATIC
VOID
AddHob
(
	PARM_MEMORY_REGION_DESCRIPTOR_EX Desc
)
{
	BuildResourceDescriptorHob(
		Desc->ResourceType,
		Desc->ResourceAttribute,
		Desc->Address,
		Desc->Length
	);

	BuildMemoryAllocationHob(
		Desc->Address,
		Desc->Length,
		Desc->MemoryType
	);
}

VOID
ArmPlatformGetVirtualMemoryMap(
	IN ARM_MEMORY_REGION_DESCRIPTOR** VirtualMemoryMap
)
{
	//TO-DO:ADD MEMORY MAP HERE
	PARM_MEMORY_REGION_DESCRIPTOR_EX MemoryDescriptorEx = gDeviceMemoryDescriptorEx;
	ARM_MEMORY_REGION_DESCRIPTOR MemoryDescriptor[MAX_ARM_MEMORY_REGION_DESCRIPTOR_COUNT];
	UINTN Index = 0;

	// Run through each memory descriptor
	while (MemoryDescriptorEx->Address != (EFI_PHYSICAL_ADDRESS)0xFFFFFFFF)
	{
		switch (MemoryDescriptorEx->HobOption)
		{
		case AddMem:
		case AddDev:
			AddHob(MemoryDescriptorEx);
			break;
		case NoHob:
		default:
			goto update;
		}

	update:
		ASSERT(Index < MAX_ARM_MEMORY_REGION_DESCRIPTOR_COUNT);

		MemoryDescriptor[Index].PhysicalBase = MemoryDescriptorEx->Address;
		MemoryDescriptor[Index].VirtualBase = MemoryDescriptorEx->Address;
		MemoryDescriptor[Index].Length = MemoryDescriptorEx->Length;
		MemoryDescriptor[Index].Attributes = MemoryDescriptorEx->ArmAttributes;

		Index++;
		MemoryDescriptorEx++;
	}

	// Last one (terminator)
	ASSERT(Index < MAX_ARM_MEMORY_REGION_DESCRIPTOR_COUNT);

	*VirtualMemoryMap = MemoryDescriptor;
	//ASSERT(0);
}