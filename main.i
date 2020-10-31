# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "interrupt.h" 1
# 1 "BIT_Math.h" 1
# 2 "interrupt.h" 2
# 1 "STD.h" 1
# 12 "STD.h"
typedef unsigned char uint8;
typedef signed char sint8;
typedef unsigned short uint16;
typedef signed short sint16;
typedef unsigned long uint32;
typedef signed long sint32;
typedef float float32;
typedef double float64;
# 3 "interrupt.h" 2

void CpuDriver_EnableGlobalInterrupt(void);
void CpuDriver_DisableGlobalInterrupt(void);
void CpuDriver_StartCriticalSection(void);
void CpuDriver_StopCriticalSection(void);
# 2 "main.c" 2

int main()
{
 CpuDriver_DisableGlobalInterrupt();

}
