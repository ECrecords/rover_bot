##Pmod Header JB (Zybo Z7-20 only)
set_property -dict { PACKAGE_PIN V8    IOSTANDARD LVCMOS33     } [get_ports { jb_tri_io[0] }]; #IO_L15P_T2_DQS_13 Sch=jb_p[1]
set_property -dict { PACKAGE_PIN W8    IOSTANDARD LVCMOS33     } [get_ports { jb_tri_io[1] }]; #IO_L15N_T2_DQS_13 Sch=jb_n[1]
set_property -dict { PACKAGE_PIN U7    IOSTANDARD LVCMOS33     } [get_ports { jb_tri_io[2] }]; #IO_L11P_T1_SRCC_13 Sch=jb_p[2]
set_property -dict { PACKAGE_PIN V7    IOSTANDARD LVCMOS33     } [get_ports { jb_tri_io[3] }]; #IO_L11N_T1_SRCC_13 Sch=jb_n[2]
set_property -dict { PACKAGE_PIN Y7    IOSTANDARD LVCMOS33     } [get_ports { jb_tri_io[4] }]; #IO_L13P_T2_MRCC_13 Sch=jb_p[3]
set_property -dict { PACKAGE_PIN Y6    IOSTANDARD LVCMOS33     } [get_ports { jb_tri_io[5] }]; #IO_L13N_T2_MRCC_13 Sch=jb_n[3]
set_property -dict { PACKAGE_PIN V6    IOSTANDARD LVCMOS33     } [get_ports { jb_tri_io[6] }]; #IO_L22P_T3_13 Sch=jb_p[4]
set_property -dict { PACKAGE_PIN W6    IOSTANDARD LVCMOS33     } [get_ports { pwm_out_0 }]; #IO_L22N_T3_13 Sch=jb_n[4]

##Pmod Header JC
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33     } [get_ports { jc_tri_io[0] }]; #IO_L10P_T1_34 Sch=jc_p[1]
set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33     } [get_ports { jc_tri_io[1] }]; #IO_L10N_T1_34 Sch=jc_n[1]
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33     } [get_ports { jc_tri_io[2] }]; #IO_L1P_T0_34 Sch=jc_p[2]
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33     } [get_ports { jc_tri_io[3] }]; #IO_L1N_T0_34 Sch=jc_n[2]
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33     } [get_ports { jc_tri_io[4] }]; #IO_L8P_T1_34 Sch=jc_p[3]
set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33     } [get_ports { jc_tri_io[5] }]; #IO_L8N_T1_34 Sch=jc_n[3]
set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33     } [get_ports { jc_tri_io[6] }]; #IO_L2P_T0_34 Sch=jc_p[4]
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33     } [get_ports { pwm_out_1 }]; #IO_L2N_T0_34 Sch=jc_n[4]

##Pmod Header JD
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33     } [get_ports { jd_tri_io[0] }]; #IO_L5P_T0_34 Sch=jd_p[1]
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33     } [get_ports { jd_tri_io[1] }]; #IO_L5N_T0_34 Sch=jd_n[1]
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33     } [get_ports { jd_tri_io[2] }]; #IO_L6P_T0_34 Sch=jd_p[2]
set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33     } [get_ports { jd_tri_io[3] }]; #IO_L6N_T0_VREF_34 Sch=jd_n[2]
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33     } [get_ports { jd_tri_io[4] }]; #IO_L11P_T1_SRCC_34 Sch=jd_p[3]
set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33     } [get_ports { jd_tri_io[5] }]; #IO_L11N_T1_SRCC_34 Sch=jd_n[3]
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33     } [get_ports { jd_tri_io[6] }]; #IO_L21P_T3_DQS_34 Sch=jd_p[4]
set_property -dict { PACKAGE_PIN V18   IOSTANDARD LVCMOS33     } [get_ports { pwm_out_2 }]; #IO_L21N_T3_DQS_34 Sch=jd_n[4]


##Pmod Header JE
set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { je_tri_io[0] }]; #IO_L4P_T0_34 Sch=je[1]
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports { je_tri_io[1] }]; #IO_L18N_T2_34 Sch=je[2]
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { je_tri_io[2] }]; #IO_25_35 Sch=je[3]
set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { je_tri_io[3] }]; #IO_L19P_T3_35 Sch=je[4]
set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports { je_tri_io[4] }]; #IO_L3N_T0_DQS_34 Sch=je[7]
set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { je_tri_io[5] }]; #IO_L9N_T1_DQS_34 Sch=je[8]
set_property -dict { PACKAGE_PIN T17   IOSTANDARD LVCMOS33 } [get_ports { je_tri_io[6] }]; #IO_L20P_T3_34 Sch=je[9]
set_property -dict { PACKAGE_PIN Y17   IOSTANDARD LVCMOS33 } [get_ports { pwm_out_3 }]; #IO_L7N_T1_34 Sch=je[10]
