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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    unisims_ver_m_00000000002549801008_1565138397_init();
    work_m_00000000000813848774_0153276014_init();
    work_m_00000000000311284962_3475488694_init();
    work_m_00000000000223042051_3280780489_init();
    work_m_00000000002756316678_2625067572_init();
    work_m_00000000001047675481_4113339697_init();
    work_m_00000000004109204592_0048617312_init();
    work_m_00000000000141330886_2799599381_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000141330886_2799599381");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
