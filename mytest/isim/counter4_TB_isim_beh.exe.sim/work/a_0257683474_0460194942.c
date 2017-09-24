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
static const char *ng0 = "C:/Users/TEMP.ELE.000/Downloads/mytest/mytest/counter4.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0257683474_0460194942_p_0(char *t0)
{
    char t17[16];
    char t18[16];
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
    char *t16;
    int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2328);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(28, ng0);
    t7 = (t0 + 960U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB11;

LAB12:    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB13;

LAB14:
LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 568U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(29, ng0);
    t7 = xsi_get_transient_memory(8U);
    memset(t7, 0, 8U);
    t11 = t7;
    memset(t11, (unsigned char)2, 8U);
    t12 = (t0 + 2380);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 8U);
    xsi_driver_first_trans_fast(t12);
    goto LAB9;

LAB11:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1052U);
    t7 = *((char **)t2);
    t2 = (t0 + 2380);
    t8 = (t2 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t7, 8U);
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

LAB13:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 868U);
    t7 = *((char **)t2);
    t5 = *((unsigned char *)t7);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1328U);
    t3 = *((char **)t2);
    t2 = (t0 + 4184U);
    t7 = (t0 + 4238);
    t11 = (t18 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 0;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t19 = (0 - 0);
    t20 = (t19 * 1);
    t20 = (t20 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t20;
    t12 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t17, t3, t2, t7, t18);
    t13 = (t17 + 12U);
    t20 = *((unsigned int *)t13);
    t21 = (1U * t20);
    t1 = (8U != t21);
    if (t1 == 1)
        goto LAB20;

LAB21:    t14 = (t0 + 2380);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t22 = (t16 + 40U);
    t23 = *((char **)t22);
    memcpy(t23, t12, 8U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1328U);
    t3 = *((char **)t2);
    t2 = (t0 + 2416);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 8U);
    xsi_driver_first_trans_fast(t2);

LAB16:    goto LAB9;

LAB15:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1328U);
    t8 = *((char **)t2);
    t2 = (t0 + 4184U);
    t11 = (t0 + 4237);
    t13 = (t18 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t19 = (0 - 0);
    t20 = (t19 * 1);
    t20 = (t20 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t20;
    t14 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t17, t8, t2, t11, t18);
    t15 = (t17 + 12U);
    t20 = *((unsigned int *)t15);
    t21 = (1U * t20);
    t9 = (8U != t21);
    if (t9 == 1)
        goto LAB18;

LAB19:    t16 = (t0 + 2380);
    t22 = (t16 + 32U);
    t23 = *((char **)t22);
    t24 = (t23 + 40U);
    t25 = *((char **)t24);
    memcpy(t25, t14, 8U);
    xsi_driver_first_trans_fast(t16);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1328U);
    t3 = *((char **)t2);
    t2 = (t0 + 2416);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 8U);
    xsi_driver_first_trans_fast(t2);
    goto LAB16;

LAB18:    xsi_size_not_matching(8U, t21, 0);
    goto LAB19;

LAB20:    xsi_size_not_matching(8U, t21, 0);
    goto LAB21;

}

static void work_a_0257683474_0460194942_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(44, ng0);

LAB3:    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t1 = (t0 + 2452);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 2336);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0257683474_0460194942_init()
{
	static char *pe[] = {(void *)work_a_0257683474_0460194942_p_0,(void *)work_a_0257683474_0460194942_p_1};
	xsi_register_didat("work_a_0257683474_0460194942", "isim/counter4_TB_isim_beh.exe.sim/work/a_0257683474_0460194942.didat");
	xsi_register_executes(pe);
}
