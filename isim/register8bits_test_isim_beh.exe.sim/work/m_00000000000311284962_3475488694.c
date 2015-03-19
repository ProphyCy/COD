/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Young/Desktop/Verilog Project/Project12/register_8bits.v";
static unsigned int ng1[] = {1U, 0U};



static void Initial_30_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(30, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);

LAB1:    return;
}


extern void work_m_00000000000311284962_3475488694_init()
{
	static char *pe[] = {(void *)Initial_30_0};
	xsi_register_didat("work_m_00000000000311284962_3475488694", "isim/register8bits_test_isim_beh.exe.sim/work/m_00000000000311284962_3475488694.didat");
	xsi_register_executes(pe);
}
