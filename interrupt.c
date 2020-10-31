#include "interrupt.h"

static counter =0;

void CpuDriver_EnableGlobalInterrupt(void)
{
	__asm (" CPSIE ,i");
}

void CpuDriver_DisableGlobalInterrupt(void)
{
	__asm (" CPSID ,i");
}

void CpuDriver_ StartCriticalSection(void)
{
	
	counter++;
	CpuDriver_DisableGlobalInterrupt();

}

void CpuDriver_ StopCriticalSection(void)
{
	
	if (counter == 1)
	{
		CpuDriver_EnableGlobalInterrupt();
		
	}
	else
		
	{
		
		CpuDriver_DisableGlobalInterrupt();
		counter--;
			
	}
		
}