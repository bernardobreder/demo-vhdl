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
static const char *ng0 = "C:/Users/TEMP.ELE.000/Downloads/mytest/mytest/shift_register.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1874319323_1819145463_p_0(char *t0)
{
    char t20[16];
    char t21[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2236);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(23, ng0);
    t7 = (t0 + 868U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 960U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB11;

LAB12:
LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 752U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(24, ng0);
    t7 = (t0 + 592U);
    t11 = *((char **)t7);
    t7 = (t0 + 2288);
    t12 = (t7 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 8U);
    xsi_driver_first_trans_fast(t7);
    goto LAB9;

LAB11:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1236U);
    t7 = *((char **)t2);
    t16 = (0 - 7);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t2 = (t7 + t19);
    t5 = *((unsigned char *)t2);
    t8 = (t0 + 2324);
    t11 = (t8 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t5;
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(27, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t2 = (t0 + 1236U);
    t7 = *((char **)t2);
    t17 = (7 - 7);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t2 = (t7 + t19);
    t11 = ((IEEE_P_2592010699) + 2332);
    t12 = (t21 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 7;
    t13 = (t12 + 4U);
    *((int *)t13) = 1;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t16 = (1 - 7);
    t22 = (t16 * -1);
    t22 = (t22 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t22;
    t8 = xsi_base_array_concat(t8, t20, t11, (char)99, t1, (char)97, t2, t21, (char)101);
    t22 = (1U + 7U);
    t4 = (8U != t22);
    if (t4 == 1)
        goto LAB13;

LAB14:    t13 = (t0 + 2288);
    t14 = (t13 + 32U);
    t15 = *((char **)t14);
    t23 = (t15 + 40U);
    t24 = *((char **)t23);
    memcpy(t24, t8, 8U);
    xsi_driver_first_trans_fast(t13);
    goto LAB9;

LAB13:    xsi_size_not_matching(8U, t22, 0);
    goto LAB14;

}

static void work_a_1874319323_1819145463_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(32, ng0);

LAB3:    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2360);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 2244);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1874319323_1819145463_init()
{
	static char *pe[] = {(void *)work_a_1874319323_1819145463_p_0,(void *)work_a_1874319323_1819145463_p_1};
	xsi_register_didat("work_a_1874319323_1819145463", "isim/shift_register_TB_isim_beh.exe.sim/work/a_1874319323_1819145463.didat");
	xsi_register_executes(pe);
}
