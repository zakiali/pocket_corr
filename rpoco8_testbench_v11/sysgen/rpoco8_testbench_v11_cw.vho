
-------------------------------------------------------------------
-- System Generator version 11.4 VHDL source file.
--
-- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component rpoco8_testbench_v11_cw  port (
    ce: in std_logic := '1'; 
    clk: in std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    rpoco8_testbench_v11_aa_real_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_acc_length_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_adc0_3_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_adc4_7_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_adc_s_quadc0_adc0_data: in std_logic_vector(7 downto 0); 
    rpoco8_testbench_v11_adc_s_quadc0_adc1_data: in std_logic_vector(7 downto 0); 
    rpoco8_testbench_v11_adc_s_quadc0_adc2_data: in std_logic_vector(7 downto 0); 
    rpoco8_testbench_v11_adc_s_quadc0_adc3_data: in std_logic_vector(7 downto 0); 
    rpoco8_testbench_v11_adc_s_quadc0_sync: in std_logic; 
    rpoco8_testbench_v11_adc_s_quadc0_valid: in std_logic; 
    rpoco8_testbench_v11_adc_s_quadc1_adc0_data: in std_logic_vector(7 downto 0); 
    rpoco8_testbench_v11_adc_s_quadc1_adc1_data: in std_logic_vector(7 downto 0); 
    rpoco8_testbench_v11_adc_s_quadc1_adc2_data: in std_logic_vector(7 downto 0); 
    rpoco8_testbench_v11_adc_s_quadc1_adc3_data: in std_logic_vector(7 downto 0); 
    rpoco8_testbench_v11_adc_s_quadc1_sync: in std_logic; 
    rpoco8_testbench_v11_adc_s_quadc1_valid: in std_logic; 
    rpoco8_testbench_v11_ctrl_sw_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_delay_delay_data_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_eq_coeff_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_fft_pol02_imag_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_fft_pol02_real_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_iadc0_3_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_iadc4_7_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_insel_insel_data_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_mux_sel_pfb_sync_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_mux_sel_pfb_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_new_raw_capture_trig_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_new_raw_capture_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_not_or_not_delay1_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_not_or_not_delay2_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_not_or_not_delay3_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_not_or_not_delay4_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_not_or_not_delay5_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_not_or_not_delay6_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_not_or_not_delay7_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_not_or_not_delay8_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_seed_seed_data_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_sync_arm_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_sync_sync_pulse_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_sync_sync_sel_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_walsh_codes_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_walsh_trig_sel_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_aa_real_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ab_real_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ac_real_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ad_real_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ae_real_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_af_imag_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_af_real_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bb_real_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bc_real_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bd_real_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_be_imag_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_be_real_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bf_real_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_cc_real_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_cd_real_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_cg_real_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ch_real_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_dd_real_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_dg_real_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_dh_real_data_out: in std_logic_vector(31 downto 0); 
    gateway_out4: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_aa_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_aa_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_aa_real_we: out std_logic; 
    rpoco8_testbench_v11_acc_num_user_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_adc0_3_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_adc0_3_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_adc0_3_we: out std_logic; 
    rpoco8_testbench_v11_adc4_7_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_adc4_7_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_adc4_7_we: out std_logic; 
    rpoco8_testbench_v11_fft_pol02_imag_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_fft_pol02_imag_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_fft_pol02_imag_we: out std_logic; 
    rpoco8_testbench_v11_fft_pol02_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_fft_pol02_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_fft_pol02_real_we: out std_logic; 
    rpoco8_testbench_v11_iadc0_3_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_iadc0_3_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_iadc0_3_we: out std_logic; 
    rpoco8_testbench_v11_iadc4_7_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_iadc4_7_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_iadc4_7_we: out std_logic; 
    rpoco8_testbench_v11_led_gateway: out std_logic; 
    rpoco8_testbench_v11_walsh_codes_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_walsh_codes_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_walsh_codes_we: out std_logic; 
    rpoco8_testbench_v11_walsh_walsh1_gateway: out std_logic; 
    rpoco8_testbench_v11_walsh_walsh2_gateway: out std_logic; 
    rpoco8_testbench_v11_walsh_walsh3_gateway: out std_logic; 
    rpoco8_testbench_v11_walsh_walsh4_gateway: out std_logic; 
    rpoco8_testbench_v11_walsh_walsh5_gateway: out std_logic; 
    rpoco8_testbench_v11_walsh_walsh6_gateway: out std_logic; 
    rpoco8_testbench_v11_walsh_walsh7_gateway: out std_logic; 
    rpoco8_testbench_v11_walsh_walsh8_gateway: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_aa_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_aa_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_aa_real_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_ab_imag_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ab_imag_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_ab_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ab_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ab_real_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_ac_imag_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ac_imag_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_ac_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ac_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ac_real_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_ad_imag_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ad_imag_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_ad_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ad_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ad_real_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_ae_imag_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ae_imag_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_ae_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ae_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ae_real_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_af_imag_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_af_imag_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_af_imag_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_af_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_af_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_af_real_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_bb_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bb_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bb_real_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_bc_imag_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bc_imag_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_bc_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bc_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bc_real_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_bd_imag_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bd_imag_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_bd_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bd_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bd_real_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_be_imag_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_be_imag_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_be_imag_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_be_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_be_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_be_real_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_bf_imag_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bf_imag_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_bf_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bf_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_bf_real_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_cc_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_cc_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_cc_real_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_cd_imag_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_cd_imag_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_cd_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_cd_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_cd_real_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_cg_imag_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_cg_imag_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_cg_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_cg_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_cg_real_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_ch_imag_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ch_imag_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_ch_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ch_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_ch_real_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_dd_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_dd_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_dd_real_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_dg_imag_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_dg_imag_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_dg_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_dg_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_dg_real_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_dh_imag_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_dh_imag_we: out std_logic; 
    rpoco8_testbench_v11_xengine8_muxed_dh_real_addr: out std_logic_vector(10 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_dh_real_data_in: out std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_xengine8_muxed_dh_real_we: out std_logic
  );
end component;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body.  Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : rpoco8_testbench_v11_cw
  port map (
    ce => ce,
    clk => clk,
    rpoco8_testbench_v11_aa_real_data_out => rpoco8_testbench_v11_aa_real_data_out,
    rpoco8_testbench_v11_acc_length_user_data_out => rpoco8_testbench_v11_acc_length_user_data_out,
    rpoco8_testbench_v11_adc0_3_data_out => rpoco8_testbench_v11_adc0_3_data_out,
    rpoco8_testbench_v11_adc4_7_data_out => rpoco8_testbench_v11_adc4_7_data_out,
    rpoco8_testbench_v11_adc_s_quadc0_adc0_data => rpoco8_testbench_v11_adc_s_quadc0_adc0_data,
    rpoco8_testbench_v11_adc_s_quadc0_adc1_data => rpoco8_testbench_v11_adc_s_quadc0_adc1_data,
    rpoco8_testbench_v11_adc_s_quadc0_adc2_data => rpoco8_testbench_v11_adc_s_quadc0_adc2_data,
    rpoco8_testbench_v11_adc_s_quadc0_adc3_data => rpoco8_testbench_v11_adc_s_quadc0_adc3_data,
    rpoco8_testbench_v11_adc_s_quadc0_sync => rpoco8_testbench_v11_adc_s_quadc0_sync,
    rpoco8_testbench_v11_adc_s_quadc0_valid => rpoco8_testbench_v11_adc_s_quadc0_valid,
    rpoco8_testbench_v11_adc_s_quadc1_adc0_data => rpoco8_testbench_v11_adc_s_quadc1_adc0_data,
    rpoco8_testbench_v11_adc_s_quadc1_adc1_data => rpoco8_testbench_v11_adc_s_quadc1_adc1_data,
    rpoco8_testbench_v11_adc_s_quadc1_adc2_data => rpoco8_testbench_v11_adc_s_quadc1_adc2_data,
    rpoco8_testbench_v11_adc_s_quadc1_adc3_data => rpoco8_testbench_v11_adc_s_quadc1_adc3_data,
    rpoco8_testbench_v11_adc_s_quadc1_sync => rpoco8_testbench_v11_adc_s_quadc1_sync,
    rpoco8_testbench_v11_adc_s_quadc1_valid => rpoco8_testbench_v11_adc_s_quadc1_valid,
    rpoco8_testbench_v11_ctrl_sw_user_data_out => rpoco8_testbench_v11_ctrl_sw_user_data_out,
    rpoco8_testbench_v11_delay_delay_data_user_data_out => rpoco8_testbench_v11_delay_delay_data_user_data_out,
    rpoco8_testbench_v11_eq_coeff_user_data_out => rpoco8_testbench_v11_eq_coeff_user_data_out,
    rpoco8_testbench_v11_fft_pol02_imag_data_out => rpoco8_testbench_v11_fft_pol02_imag_data_out,
    rpoco8_testbench_v11_fft_pol02_real_data_out => rpoco8_testbench_v11_fft_pol02_real_data_out,
    rpoco8_testbench_v11_iadc0_3_data_out => rpoco8_testbench_v11_iadc0_3_data_out,
    rpoco8_testbench_v11_iadc4_7_data_out => rpoco8_testbench_v11_iadc4_7_data_out,
    rpoco8_testbench_v11_insel_insel_data_user_data_out => rpoco8_testbench_v11_insel_insel_data_user_data_out,
    rpoco8_testbench_v11_mux_sel_pfb_sync_user_data_out => rpoco8_testbench_v11_mux_sel_pfb_sync_user_data_out,
    rpoco8_testbench_v11_mux_sel_pfb_user_data_out => rpoco8_testbench_v11_mux_sel_pfb_user_data_out,
    rpoco8_testbench_v11_new_raw_capture_trig_user_data_out => rpoco8_testbench_v11_new_raw_capture_trig_user_data_out,
    rpoco8_testbench_v11_new_raw_capture_user_data_out => rpoco8_testbench_v11_new_raw_capture_user_data_out,
    rpoco8_testbench_v11_not_or_not_delay1_user_data_out => rpoco8_testbench_v11_not_or_not_delay1_user_data_out,
    rpoco8_testbench_v11_not_or_not_delay2_user_data_out => rpoco8_testbench_v11_not_or_not_delay2_user_data_out,
    rpoco8_testbench_v11_not_or_not_delay3_user_data_out => rpoco8_testbench_v11_not_or_not_delay3_user_data_out,
    rpoco8_testbench_v11_not_or_not_delay4_user_data_out => rpoco8_testbench_v11_not_or_not_delay4_user_data_out,
    rpoco8_testbench_v11_not_or_not_delay5_user_data_out => rpoco8_testbench_v11_not_or_not_delay5_user_data_out,
    rpoco8_testbench_v11_not_or_not_delay6_user_data_out => rpoco8_testbench_v11_not_or_not_delay6_user_data_out,
    rpoco8_testbench_v11_not_or_not_delay7_user_data_out => rpoco8_testbench_v11_not_or_not_delay7_user_data_out,
    rpoco8_testbench_v11_not_or_not_delay8_user_data_out => rpoco8_testbench_v11_not_or_not_delay8_user_data_out,
    rpoco8_testbench_v11_seed_seed_data_user_data_out => rpoco8_testbench_v11_seed_seed_data_user_data_out,
    rpoco8_testbench_v11_sync_arm_user_data_out => rpoco8_testbench_v11_sync_arm_user_data_out,
    rpoco8_testbench_v11_sync_sync_pulse_user_data_out => rpoco8_testbench_v11_sync_sync_pulse_user_data_out,
    rpoco8_testbench_v11_sync_sync_sel_user_data_out => rpoco8_testbench_v11_sync_sync_sel_user_data_out,
    rpoco8_testbench_v11_walsh_codes_data_out => rpoco8_testbench_v11_walsh_codes_data_out,
    rpoco8_testbench_v11_walsh_trig_sel_user_data_out => rpoco8_testbench_v11_walsh_trig_sel_user_data_out,
    rpoco8_testbench_v11_xengine8_muxed_aa_real_data_out => rpoco8_testbench_v11_xengine8_muxed_aa_real_data_out,
    rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_out,
    rpoco8_testbench_v11_xengine8_muxed_ab_real_data_out => rpoco8_testbench_v11_xengine8_muxed_ab_real_data_out,
    rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_out,
    rpoco8_testbench_v11_xengine8_muxed_ac_real_data_out => rpoco8_testbench_v11_xengine8_muxed_ac_real_data_out,
    rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_out,
    rpoco8_testbench_v11_xengine8_muxed_ad_real_data_out => rpoco8_testbench_v11_xengine8_muxed_ad_real_data_out,
    rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_out,
    rpoco8_testbench_v11_xengine8_muxed_ae_real_data_out => rpoco8_testbench_v11_xengine8_muxed_ae_real_data_out,
    rpoco8_testbench_v11_xengine8_muxed_af_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_af_imag_data_out,
    rpoco8_testbench_v11_xengine8_muxed_af_real_data_out => rpoco8_testbench_v11_xengine8_muxed_af_real_data_out,
    rpoco8_testbench_v11_xengine8_muxed_bb_real_data_out => rpoco8_testbench_v11_xengine8_muxed_bb_real_data_out,
    rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_out,
    rpoco8_testbench_v11_xengine8_muxed_bc_real_data_out => rpoco8_testbench_v11_xengine8_muxed_bc_real_data_out,
    rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_out,
    rpoco8_testbench_v11_xengine8_muxed_bd_real_data_out => rpoco8_testbench_v11_xengine8_muxed_bd_real_data_out,
    rpoco8_testbench_v11_xengine8_muxed_be_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_be_imag_data_out,
    rpoco8_testbench_v11_xengine8_muxed_be_real_data_out => rpoco8_testbench_v11_xengine8_muxed_be_real_data_out,
    rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_out,
    rpoco8_testbench_v11_xengine8_muxed_bf_real_data_out => rpoco8_testbench_v11_xengine8_muxed_bf_real_data_out,
    rpoco8_testbench_v11_xengine8_muxed_cc_real_data_out => rpoco8_testbench_v11_xengine8_muxed_cc_real_data_out,
    rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_out,
    rpoco8_testbench_v11_xengine8_muxed_cd_real_data_out => rpoco8_testbench_v11_xengine8_muxed_cd_real_data_out,
    rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_out,
    rpoco8_testbench_v11_xengine8_muxed_cg_real_data_out => rpoco8_testbench_v11_xengine8_muxed_cg_real_data_out,
    rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_out,
    rpoco8_testbench_v11_xengine8_muxed_ch_real_data_out => rpoco8_testbench_v11_xengine8_muxed_ch_real_data_out,
    rpoco8_testbench_v11_xengine8_muxed_dd_real_data_out => rpoco8_testbench_v11_xengine8_muxed_dd_real_data_out,
    rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_out,
    rpoco8_testbench_v11_xengine8_muxed_dg_real_data_out => rpoco8_testbench_v11_xengine8_muxed_dg_real_data_out,
    rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_out,
    rpoco8_testbench_v11_xengine8_muxed_dh_real_data_out => rpoco8_testbench_v11_xengine8_muxed_dh_real_data_out,
    gateway_out4 => gateway_out4,
    rpoco8_testbench_v11_aa_real_addr => rpoco8_testbench_v11_aa_real_addr,
    rpoco8_testbench_v11_aa_real_data_in => rpoco8_testbench_v11_aa_real_data_in,
    rpoco8_testbench_v11_aa_real_we => rpoco8_testbench_v11_aa_real_we,
    rpoco8_testbench_v11_acc_num_user_data_in => rpoco8_testbench_v11_acc_num_user_data_in,
    rpoco8_testbench_v11_adc0_3_addr => rpoco8_testbench_v11_adc0_3_addr,
    rpoco8_testbench_v11_adc0_3_data_in => rpoco8_testbench_v11_adc0_3_data_in,
    rpoco8_testbench_v11_adc0_3_we => rpoco8_testbench_v11_adc0_3_we,
    rpoco8_testbench_v11_adc4_7_addr => rpoco8_testbench_v11_adc4_7_addr,
    rpoco8_testbench_v11_adc4_7_data_in => rpoco8_testbench_v11_adc4_7_data_in,
    rpoco8_testbench_v11_adc4_7_we => rpoco8_testbench_v11_adc4_7_we,
    rpoco8_testbench_v11_fft_pol02_imag_addr => rpoco8_testbench_v11_fft_pol02_imag_addr,
    rpoco8_testbench_v11_fft_pol02_imag_data_in => rpoco8_testbench_v11_fft_pol02_imag_data_in,
    rpoco8_testbench_v11_fft_pol02_imag_we => rpoco8_testbench_v11_fft_pol02_imag_we,
    rpoco8_testbench_v11_fft_pol02_real_addr => rpoco8_testbench_v11_fft_pol02_real_addr,
    rpoco8_testbench_v11_fft_pol02_real_data_in => rpoco8_testbench_v11_fft_pol02_real_data_in,
    rpoco8_testbench_v11_fft_pol02_real_we => rpoco8_testbench_v11_fft_pol02_real_we,
    rpoco8_testbench_v11_iadc0_3_addr => rpoco8_testbench_v11_iadc0_3_addr,
    rpoco8_testbench_v11_iadc0_3_data_in => rpoco8_testbench_v11_iadc0_3_data_in,
    rpoco8_testbench_v11_iadc0_3_we => rpoco8_testbench_v11_iadc0_3_we,
    rpoco8_testbench_v11_iadc4_7_addr => rpoco8_testbench_v11_iadc4_7_addr,
    rpoco8_testbench_v11_iadc4_7_data_in => rpoco8_testbench_v11_iadc4_7_data_in,
    rpoco8_testbench_v11_iadc4_7_we => rpoco8_testbench_v11_iadc4_7_we,
    rpoco8_testbench_v11_led_gateway => rpoco8_testbench_v11_led_gateway,
    rpoco8_testbench_v11_walsh_codes_addr => rpoco8_testbench_v11_walsh_codes_addr,
    rpoco8_testbench_v11_walsh_codes_data_in => rpoco8_testbench_v11_walsh_codes_data_in,
    rpoco8_testbench_v11_walsh_codes_we => rpoco8_testbench_v11_walsh_codes_we,
    rpoco8_testbench_v11_walsh_walsh1_gateway => rpoco8_testbench_v11_walsh_walsh1_gateway,
    rpoco8_testbench_v11_walsh_walsh2_gateway => rpoco8_testbench_v11_walsh_walsh2_gateway,
    rpoco8_testbench_v11_walsh_walsh3_gateway => rpoco8_testbench_v11_walsh_walsh3_gateway,
    rpoco8_testbench_v11_walsh_walsh4_gateway => rpoco8_testbench_v11_walsh_walsh4_gateway,
    rpoco8_testbench_v11_walsh_walsh5_gateway => rpoco8_testbench_v11_walsh_walsh5_gateway,
    rpoco8_testbench_v11_walsh_walsh6_gateway => rpoco8_testbench_v11_walsh_walsh6_gateway,
    rpoco8_testbench_v11_walsh_walsh7_gateway => rpoco8_testbench_v11_walsh_walsh7_gateway,
    rpoco8_testbench_v11_walsh_walsh8_gateway => rpoco8_testbench_v11_walsh_walsh8_gateway,
    rpoco8_testbench_v11_xengine8_muxed_aa_real_addr => rpoco8_testbench_v11_xengine8_muxed_aa_real_addr,
    rpoco8_testbench_v11_xengine8_muxed_aa_real_data_in => rpoco8_testbench_v11_xengine8_muxed_aa_real_data_in,
    rpoco8_testbench_v11_xengine8_muxed_aa_real_we => rpoco8_testbench_v11_xengine8_muxed_aa_real_we,
    rpoco8_testbench_v11_xengine8_muxed_ab_imag_addr => rpoco8_testbench_v11_xengine8_muxed_ab_imag_addr,
    rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_in,
    rpoco8_testbench_v11_xengine8_muxed_ab_imag_we => rpoco8_testbench_v11_xengine8_muxed_ab_imag_we,
    rpoco8_testbench_v11_xengine8_muxed_ab_real_addr => rpoco8_testbench_v11_xengine8_muxed_ab_real_addr,
    rpoco8_testbench_v11_xengine8_muxed_ab_real_data_in => rpoco8_testbench_v11_xengine8_muxed_ab_real_data_in,
    rpoco8_testbench_v11_xengine8_muxed_ab_real_we => rpoco8_testbench_v11_xengine8_muxed_ab_real_we,
    rpoco8_testbench_v11_xengine8_muxed_ac_imag_addr => rpoco8_testbench_v11_xengine8_muxed_ac_imag_addr,
    rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_in,
    rpoco8_testbench_v11_xengine8_muxed_ac_imag_we => rpoco8_testbench_v11_xengine8_muxed_ac_imag_we,
    rpoco8_testbench_v11_xengine8_muxed_ac_real_addr => rpoco8_testbench_v11_xengine8_muxed_ac_real_addr,
    rpoco8_testbench_v11_xengine8_muxed_ac_real_data_in => rpoco8_testbench_v11_xengine8_muxed_ac_real_data_in,
    rpoco8_testbench_v11_xengine8_muxed_ac_real_we => rpoco8_testbench_v11_xengine8_muxed_ac_real_we,
    rpoco8_testbench_v11_xengine8_muxed_ad_imag_addr => rpoco8_testbench_v11_xengine8_muxed_ad_imag_addr,
    rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_in,
    rpoco8_testbench_v11_xengine8_muxed_ad_imag_we => rpoco8_testbench_v11_xengine8_muxed_ad_imag_we,
    rpoco8_testbench_v11_xengine8_muxed_ad_real_addr => rpoco8_testbench_v11_xengine8_muxed_ad_real_addr,
    rpoco8_testbench_v11_xengine8_muxed_ad_real_data_in => rpoco8_testbench_v11_xengine8_muxed_ad_real_data_in,
    rpoco8_testbench_v11_xengine8_muxed_ad_real_we => rpoco8_testbench_v11_xengine8_muxed_ad_real_we,
    rpoco8_testbench_v11_xengine8_muxed_ae_imag_addr => rpoco8_testbench_v11_xengine8_muxed_ae_imag_addr,
    rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_in,
    rpoco8_testbench_v11_xengine8_muxed_ae_imag_we => rpoco8_testbench_v11_xengine8_muxed_ae_imag_we,
    rpoco8_testbench_v11_xengine8_muxed_ae_real_addr => rpoco8_testbench_v11_xengine8_muxed_ae_real_addr,
    rpoco8_testbench_v11_xengine8_muxed_ae_real_data_in => rpoco8_testbench_v11_xengine8_muxed_ae_real_data_in,
    rpoco8_testbench_v11_xengine8_muxed_ae_real_we => rpoco8_testbench_v11_xengine8_muxed_ae_real_we,
    rpoco8_testbench_v11_xengine8_muxed_af_imag_addr => rpoco8_testbench_v11_xengine8_muxed_af_imag_addr,
    rpoco8_testbench_v11_xengine8_muxed_af_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_af_imag_data_in,
    rpoco8_testbench_v11_xengine8_muxed_af_imag_we => rpoco8_testbench_v11_xengine8_muxed_af_imag_we,
    rpoco8_testbench_v11_xengine8_muxed_af_real_addr => rpoco8_testbench_v11_xengine8_muxed_af_real_addr,
    rpoco8_testbench_v11_xengine8_muxed_af_real_data_in => rpoco8_testbench_v11_xengine8_muxed_af_real_data_in,
    rpoco8_testbench_v11_xengine8_muxed_af_real_we => rpoco8_testbench_v11_xengine8_muxed_af_real_we,
    rpoco8_testbench_v11_xengine8_muxed_bb_real_addr => rpoco8_testbench_v11_xengine8_muxed_bb_real_addr,
    rpoco8_testbench_v11_xengine8_muxed_bb_real_data_in => rpoco8_testbench_v11_xengine8_muxed_bb_real_data_in,
    rpoco8_testbench_v11_xengine8_muxed_bb_real_we => rpoco8_testbench_v11_xengine8_muxed_bb_real_we,
    rpoco8_testbench_v11_xengine8_muxed_bc_imag_addr => rpoco8_testbench_v11_xengine8_muxed_bc_imag_addr,
    rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_in,
    rpoco8_testbench_v11_xengine8_muxed_bc_imag_we => rpoco8_testbench_v11_xengine8_muxed_bc_imag_we,
    rpoco8_testbench_v11_xengine8_muxed_bc_real_addr => rpoco8_testbench_v11_xengine8_muxed_bc_real_addr,
    rpoco8_testbench_v11_xengine8_muxed_bc_real_data_in => rpoco8_testbench_v11_xengine8_muxed_bc_real_data_in,
    rpoco8_testbench_v11_xengine8_muxed_bc_real_we => rpoco8_testbench_v11_xengine8_muxed_bc_real_we,
    rpoco8_testbench_v11_xengine8_muxed_bd_imag_addr => rpoco8_testbench_v11_xengine8_muxed_bd_imag_addr,
    rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_in,
    rpoco8_testbench_v11_xengine8_muxed_bd_imag_we => rpoco8_testbench_v11_xengine8_muxed_bd_imag_we,
    rpoco8_testbench_v11_xengine8_muxed_bd_real_addr => rpoco8_testbench_v11_xengine8_muxed_bd_real_addr,
    rpoco8_testbench_v11_xengine8_muxed_bd_real_data_in => rpoco8_testbench_v11_xengine8_muxed_bd_real_data_in,
    rpoco8_testbench_v11_xengine8_muxed_bd_real_we => rpoco8_testbench_v11_xengine8_muxed_bd_real_we,
    rpoco8_testbench_v11_xengine8_muxed_be_imag_addr => rpoco8_testbench_v11_xengine8_muxed_be_imag_addr,
    rpoco8_testbench_v11_xengine8_muxed_be_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_be_imag_data_in,
    rpoco8_testbench_v11_xengine8_muxed_be_imag_we => rpoco8_testbench_v11_xengine8_muxed_be_imag_we,
    rpoco8_testbench_v11_xengine8_muxed_be_real_addr => rpoco8_testbench_v11_xengine8_muxed_be_real_addr,
    rpoco8_testbench_v11_xengine8_muxed_be_real_data_in => rpoco8_testbench_v11_xengine8_muxed_be_real_data_in,
    rpoco8_testbench_v11_xengine8_muxed_be_real_we => rpoco8_testbench_v11_xengine8_muxed_be_real_we,
    rpoco8_testbench_v11_xengine8_muxed_bf_imag_addr => rpoco8_testbench_v11_xengine8_muxed_bf_imag_addr,
    rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_in,
    rpoco8_testbench_v11_xengine8_muxed_bf_imag_we => rpoco8_testbench_v11_xengine8_muxed_bf_imag_we,
    rpoco8_testbench_v11_xengine8_muxed_bf_real_addr => rpoco8_testbench_v11_xengine8_muxed_bf_real_addr,
    rpoco8_testbench_v11_xengine8_muxed_bf_real_data_in => rpoco8_testbench_v11_xengine8_muxed_bf_real_data_in,
    rpoco8_testbench_v11_xengine8_muxed_bf_real_we => rpoco8_testbench_v11_xengine8_muxed_bf_real_we,
    rpoco8_testbench_v11_xengine8_muxed_cc_real_addr => rpoco8_testbench_v11_xengine8_muxed_cc_real_addr,
    rpoco8_testbench_v11_xengine8_muxed_cc_real_data_in => rpoco8_testbench_v11_xengine8_muxed_cc_real_data_in,
    rpoco8_testbench_v11_xengine8_muxed_cc_real_we => rpoco8_testbench_v11_xengine8_muxed_cc_real_we,
    rpoco8_testbench_v11_xengine8_muxed_cd_imag_addr => rpoco8_testbench_v11_xengine8_muxed_cd_imag_addr,
    rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_in,
    rpoco8_testbench_v11_xengine8_muxed_cd_imag_we => rpoco8_testbench_v11_xengine8_muxed_cd_imag_we,
    rpoco8_testbench_v11_xengine8_muxed_cd_real_addr => rpoco8_testbench_v11_xengine8_muxed_cd_real_addr,
    rpoco8_testbench_v11_xengine8_muxed_cd_real_data_in => rpoco8_testbench_v11_xengine8_muxed_cd_real_data_in,
    rpoco8_testbench_v11_xengine8_muxed_cd_real_we => rpoco8_testbench_v11_xengine8_muxed_cd_real_we,
    rpoco8_testbench_v11_xengine8_muxed_cg_imag_addr => rpoco8_testbench_v11_xengine8_muxed_cg_imag_addr,
    rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_in,
    rpoco8_testbench_v11_xengine8_muxed_cg_imag_we => rpoco8_testbench_v11_xengine8_muxed_cg_imag_we,
    rpoco8_testbench_v11_xengine8_muxed_cg_real_addr => rpoco8_testbench_v11_xengine8_muxed_cg_real_addr,
    rpoco8_testbench_v11_xengine8_muxed_cg_real_data_in => rpoco8_testbench_v11_xengine8_muxed_cg_real_data_in,
    rpoco8_testbench_v11_xengine8_muxed_cg_real_we => rpoco8_testbench_v11_xengine8_muxed_cg_real_we,
    rpoco8_testbench_v11_xengine8_muxed_ch_imag_addr => rpoco8_testbench_v11_xengine8_muxed_ch_imag_addr,
    rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_in,
    rpoco8_testbench_v11_xengine8_muxed_ch_imag_we => rpoco8_testbench_v11_xengine8_muxed_ch_imag_we,
    rpoco8_testbench_v11_xengine8_muxed_ch_real_addr => rpoco8_testbench_v11_xengine8_muxed_ch_real_addr,
    rpoco8_testbench_v11_xengine8_muxed_ch_real_data_in => rpoco8_testbench_v11_xengine8_muxed_ch_real_data_in,
    rpoco8_testbench_v11_xengine8_muxed_ch_real_we => rpoco8_testbench_v11_xengine8_muxed_ch_real_we,
    rpoco8_testbench_v11_xengine8_muxed_dd_real_addr => rpoco8_testbench_v11_xengine8_muxed_dd_real_addr,
    rpoco8_testbench_v11_xengine8_muxed_dd_real_data_in => rpoco8_testbench_v11_xengine8_muxed_dd_real_data_in,
    rpoco8_testbench_v11_xengine8_muxed_dd_real_we => rpoco8_testbench_v11_xengine8_muxed_dd_real_we,
    rpoco8_testbench_v11_xengine8_muxed_dg_imag_addr => rpoco8_testbench_v11_xengine8_muxed_dg_imag_addr,
    rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_in,
    rpoco8_testbench_v11_xengine8_muxed_dg_imag_we => rpoco8_testbench_v11_xengine8_muxed_dg_imag_we,
    rpoco8_testbench_v11_xengine8_muxed_dg_real_addr => rpoco8_testbench_v11_xengine8_muxed_dg_real_addr,
    rpoco8_testbench_v11_xengine8_muxed_dg_real_data_in => rpoco8_testbench_v11_xengine8_muxed_dg_real_data_in,
    rpoco8_testbench_v11_xengine8_muxed_dg_real_we => rpoco8_testbench_v11_xengine8_muxed_dg_real_we,
    rpoco8_testbench_v11_xengine8_muxed_dh_imag_addr => rpoco8_testbench_v11_xengine8_muxed_dh_imag_addr,
    rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_in,
    rpoco8_testbench_v11_xengine8_muxed_dh_imag_we => rpoco8_testbench_v11_xengine8_muxed_dh_imag_we,
    rpoco8_testbench_v11_xengine8_muxed_dh_real_addr => rpoco8_testbench_v11_xengine8_muxed_dh_real_addr,
    rpoco8_testbench_v11_xengine8_muxed_dh_real_data_in => rpoco8_testbench_v11_xengine8_muxed_dh_real_data_in,
    rpoco8_testbench_v11_xengine8_muxed_dh_real_we => rpoco8_testbench_v11_xengine8_muxed_dh_real_we);
-- INST_TAG_END ------ End INSTANTIATION Template ------------
