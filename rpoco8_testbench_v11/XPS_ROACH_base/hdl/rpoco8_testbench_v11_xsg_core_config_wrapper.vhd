-------------------------------------------------------------------------------
-- rpoco8_testbench_v11_xsg_core_config_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity rpoco8_testbench_v11_xsg_core_config_wrapper is
  port (
    clk : in std_logic;
    rpoco8_testbench_v11_ADC_s_quadc0_adc0_data : in std_logic_vector(7 downto 0);
    rpoco8_testbench_v11_ADC_s_quadc0_adc1_data : in std_logic_vector(7 downto 0);
    rpoco8_testbench_v11_ADC_s_quadc0_adc2_data : in std_logic_vector(7 downto 0);
    rpoco8_testbench_v11_ADC_s_quadc0_adc3_data : in std_logic_vector(7 downto 0);
    rpoco8_testbench_v11_ADC_s_quadc0_sync : in std_logic;
    rpoco8_testbench_v11_ADC_s_quadc0_valid : in std_logic;
    rpoco8_testbench_v11_ADC_s_quadc1_adc0_data : in std_logic_vector(7 downto 0);
    rpoco8_testbench_v11_ADC_s_quadc1_adc1_data : in std_logic_vector(7 downto 0);
    rpoco8_testbench_v11_ADC_s_quadc1_adc2_data : in std_logic_vector(7 downto 0);
    rpoco8_testbench_v11_ADC_s_quadc1_adc3_data : in std_logic_vector(7 downto 0);
    rpoco8_testbench_v11_ADC_s_quadc1_sync : in std_logic;
    rpoco8_testbench_v11_ADC_s_quadc1_valid : in std_logic;
    rpoco8_testbench_v11_Sync_arm_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_Sync_sync_pulse_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_Sync_sync_sel_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_aa_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_aa_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_aa_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_aa_real_we : out std_logic;
    rpoco8_testbench_v11_acc_length_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_acc_num_user_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_adc0_3_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_adc0_3_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_adc0_3_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_adc0_3_we : out std_logic;
    rpoco8_testbench_v11_adc4_7_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_adc4_7_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_adc4_7_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_adc4_7_we : out std_logic;
    rpoco8_testbench_v11_ctrl_sw_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_delay_delay_data_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_eq_coeff_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_fft_pol02_imag_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_fft_pol02_imag_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_fft_pol02_imag_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_fft_pol02_imag_we : out std_logic;
    rpoco8_testbench_v11_fft_pol02_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_fft_pol02_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_fft_pol02_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_fft_pol02_real_we : out std_logic;
    rpoco8_testbench_v11_iadc0_3_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_iadc0_3_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_iadc0_3_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_iadc0_3_we : out std_logic;
    rpoco8_testbench_v11_iadc4_7_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_iadc4_7_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_iadc4_7_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_iadc4_7_we : out std_logic;
    rpoco8_testbench_v11_insel_insel_data_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_led_gateway : out std_logic;
    rpoco8_testbench_v11_mux_sel_pfb_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_mux_sel_pfb_sync_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_new_raw_capture_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_new_raw_capture_trig_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_not_or_not_delay1_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_not_or_not_delay2_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_not_or_not_delay3_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_not_or_not_delay4_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_not_or_not_delay5_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_not_or_not_delay6_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_not_or_not_delay7_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_not_or_not_delay8_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_seed_seed_data_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_walsh_codes_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_walsh_codes_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_walsh_codes_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_walsh_codes_we : out std_logic;
    rpoco8_testbench_v11_walsh_trig_sel_user_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_walsh_walsh1_gateway : out std_logic;
    rpoco8_testbench_v11_walsh_walsh2_gateway : out std_logic;
    rpoco8_testbench_v11_walsh_walsh3_gateway : out std_logic;
    rpoco8_testbench_v11_walsh_walsh4_gateway : out std_logic;
    rpoco8_testbench_v11_walsh_walsh5_gateway : out std_logic;
    rpoco8_testbench_v11_walsh_walsh6_gateway : out std_logic;
    rpoco8_testbench_v11_walsh_walsh7_gateway : out std_logic;
    rpoco8_testbench_v11_walsh_walsh8_gateway : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_aa_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_aa_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_aa_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_aa_real_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ab_imag_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ab_imag_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_ab_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ab_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ab_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ab_real_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ac_imag_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ac_imag_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_ac_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ac_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ac_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ac_real_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ad_imag_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ad_imag_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_ad_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ad_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ad_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ad_real_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ae_imag_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ae_imag_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_ae_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ae_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ae_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ae_real_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_af_imag_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_af_imag_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_af_imag_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_af_imag_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_af_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_af_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_af_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_af_real_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_bb_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bb_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bb_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bb_real_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bc_imag_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bc_imag_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_bc_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bc_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bc_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bc_real_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bd_imag_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bd_imag_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_bd_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bd_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bd_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bd_real_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_be_imag_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_be_imag_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_be_imag_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_be_imag_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_be_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_be_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_be_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_be_real_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bf_imag_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bf_imag_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_bf_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bf_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bf_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_bf_real_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_cc_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_cc_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_cc_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_cc_real_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_cd_imag_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_cd_imag_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_cd_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_cd_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_cd_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_cd_real_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_cg_imag_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_cg_imag_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_cg_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_cg_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_cg_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_cg_real_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ch_imag_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ch_imag_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_ch_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ch_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ch_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_ch_real_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_dd_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_dd_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_dd_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_dd_real_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_dg_imag_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_dg_imag_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_dg_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_dg_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_dg_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_dg_real_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_dh_imag_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_dh_imag_we : out std_logic;
    rpoco8_testbench_v11_xengine8_muxed_dh_real_data_out : in std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_dh_real_addr : out std_logic_vector(10 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_dh_real_data_in : out std_logic_vector(31 downto 0);
    rpoco8_testbench_v11_xengine8_muxed_dh_real_we : out std_logic
  );

  attribute x_core_info : STRING;
  attribute x_core_info of rpoco8_testbench_v11_xsg_core_config_wrapper : entity is "rpoco8_testbench_v11_v1_00_a";

end rpoco8_testbench_v11_xsg_core_config_wrapper;

architecture STRUCTURE of rpoco8_testbench_v11_xsg_core_config_wrapper is

  component rpoco8_testbench_v11 is
    port (
      clk : in std_logic;
      rpoco8_testbench_v11_ADC_s_quadc0_adc0_data : in std_logic_vector(7 downto 0);
      rpoco8_testbench_v11_ADC_s_quadc0_adc1_data : in std_logic_vector(7 downto 0);
      rpoco8_testbench_v11_ADC_s_quadc0_adc2_data : in std_logic_vector(7 downto 0);
      rpoco8_testbench_v11_ADC_s_quadc0_adc3_data : in std_logic_vector(7 downto 0);
      rpoco8_testbench_v11_ADC_s_quadc0_sync : in std_logic;
      rpoco8_testbench_v11_ADC_s_quadc0_valid : in std_logic;
      rpoco8_testbench_v11_ADC_s_quadc1_adc0_data : in std_logic_vector(7 downto 0);
      rpoco8_testbench_v11_ADC_s_quadc1_adc1_data : in std_logic_vector(7 downto 0);
      rpoco8_testbench_v11_ADC_s_quadc1_adc2_data : in std_logic_vector(7 downto 0);
      rpoco8_testbench_v11_ADC_s_quadc1_adc3_data : in std_logic_vector(7 downto 0);
      rpoco8_testbench_v11_ADC_s_quadc1_sync : in std_logic;
      rpoco8_testbench_v11_ADC_s_quadc1_valid : in std_logic;
      rpoco8_testbench_v11_Sync_arm_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_Sync_sync_pulse_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_Sync_sync_sel_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_aa_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_aa_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_aa_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_aa_real_we : out std_logic;
      rpoco8_testbench_v11_acc_length_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_acc_num_user_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_adc0_3_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_adc0_3_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_adc0_3_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_adc0_3_we : out std_logic;
      rpoco8_testbench_v11_adc4_7_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_adc4_7_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_adc4_7_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_adc4_7_we : out std_logic;
      rpoco8_testbench_v11_ctrl_sw_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_delay_delay_data_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_eq_coeff_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_fft_pol02_imag_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_fft_pol02_imag_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_fft_pol02_imag_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_fft_pol02_imag_we : out std_logic;
      rpoco8_testbench_v11_fft_pol02_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_fft_pol02_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_fft_pol02_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_fft_pol02_real_we : out std_logic;
      rpoco8_testbench_v11_iadc0_3_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_iadc0_3_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_iadc0_3_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_iadc0_3_we : out std_logic;
      rpoco8_testbench_v11_iadc4_7_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_iadc4_7_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_iadc4_7_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_iadc4_7_we : out std_logic;
      rpoco8_testbench_v11_insel_insel_data_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_led_gateway : out std_logic;
      rpoco8_testbench_v11_mux_sel_pfb_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_mux_sel_pfb_sync_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_new_raw_capture_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_new_raw_capture_trig_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_not_or_not_delay1_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_not_or_not_delay2_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_not_or_not_delay3_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_not_or_not_delay4_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_not_or_not_delay5_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_not_or_not_delay6_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_not_or_not_delay7_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_not_or_not_delay8_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_seed_seed_data_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_walsh_codes_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_walsh_codes_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_walsh_codes_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_walsh_codes_we : out std_logic;
      rpoco8_testbench_v11_walsh_trig_sel_user_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_walsh_walsh1_gateway : out std_logic;
      rpoco8_testbench_v11_walsh_walsh2_gateway : out std_logic;
      rpoco8_testbench_v11_walsh_walsh3_gateway : out std_logic;
      rpoco8_testbench_v11_walsh_walsh4_gateway : out std_logic;
      rpoco8_testbench_v11_walsh_walsh5_gateway : out std_logic;
      rpoco8_testbench_v11_walsh_walsh6_gateway : out std_logic;
      rpoco8_testbench_v11_walsh_walsh7_gateway : out std_logic;
      rpoco8_testbench_v11_walsh_walsh8_gateway : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_aa_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_aa_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_aa_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_aa_real_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ab_imag_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ab_imag_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_ab_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ab_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ab_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ab_real_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ac_imag_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ac_imag_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_ac_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ac_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ac_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ac_real_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ad_imag_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ad_imag_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_ad_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ad_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ad_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ad_real_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ae_imag_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ae_imag_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_ae_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ae_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ae_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ae_real_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_af_imag_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_af_imag_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_af_imag_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_af_imag_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_af_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_af_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_af_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_af_real_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_bb_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bb_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bb_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bb_real_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bc_imag_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bc_imag_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_bc_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bc_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bc_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bc_real_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bd_imag_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bd_imag_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_bd_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bd_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bd_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bd_real_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_be_imag_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_be_imag_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_be_imag_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_be_imag_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_be_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_be_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_be_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_be_real_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bf_imag_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bf_imag_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_bf_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bf_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bf_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_bf_real_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_cc_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_cc_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_cc_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_cc_real_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_cd_imag_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_cd_imag_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_cd_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_cd_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_cd_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_cd_real_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_cg_imag_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_cg_imag_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_cg_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_cg_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_cg_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_cg_real_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ch_imag_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ch_imag_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_ch_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ch_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ch_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_ch_real_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_dd_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_dd_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_dd_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_dd_real_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_dg_imag_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_dg_imag_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_dg_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_dg_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_dg_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_dg_real_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_dh_imag_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_dh_imag_we : out std_logic;
      rpoco8_testbench_v11_xengine8_muxed_dh_real_data_out : in std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_dh_real_addr : out std_logic_vector(10 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_dh_real_data_in : out std_logic_vector(31 downto 0);
      rpoco8_testbench_v11_xengine8_muxed_dh_real_we : out std_logic
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of rpoco8_testbench_v11 : component is "user_black_box";

begin

  rpoco8_testbench_v11_XSG_core_config : rpoco8_testbench_v11
    port map (
      clk => clk,
      rpoco8_testbench_v11_ADC_s_quadc0_adc0_data => rpoco8_testbench_v11_ADC_s_quadc0_adc0_data,
      rpoco8_testbench_v11_ADC_s_quadc0_adc1_data => rpoco8_testbench_v11_ADC_s_quadc0_adc1_data,
      rpoco8_testbench_v11_ADC_s_quadc0_adc2_data => rpoco8_testbench_v11_ADC_s_quadc0_adc2_data,
      rpoco8_testbench_v11_ADC_s_quadc0_adc3_data => rpoco8_testbench_v11_ADC_s_quadc0_adc3_data,
      rpoco8_testbench_v11_ADC_s_quadc0_sync => rpoco8_testbench_v11_ADC_s_quadc0_sync,
      rpoco8_testbench_v11_ADC_s_quadc0_valid => rpoco8_testbench_v11_ADC_s_quadc0_valid,
      rpoco8_testbench_v11_ADC_s_quadc1_adc0_data => rpoco8_testbench_v11_ADC_s_quadc1_adc0_data,
      rpoco8_testbench_v11_ADC_s_quadc1_adc1_data => rpoco8_testbench_v11_ADC_s_quadc1_adc1_data,
      rpoco8_testbench_v11_ADC_s_quadc1_adc2_data => rpoco8_testbench_v11_ADC_s_quadc1_adc2_data,
      rpoco8_testbench_v11_ADC_s_quadc1_adc3_data => rpoco8_testbench_v11_ADC_s_quadc1_adc3_data,
      rpoco8_testbench_v11_ADC_s_quadc1_sync => rpoco8_testbench_v11_ADC_s_quadc1_sync,
      rpoco8_testbench_v11_ADC_s_quadc1_valid => rpoco8_testbench_v11_ADC_s_quadc1_valid,
      rpoco8_testbench_v11_Sync_arm_user_data_out => rpoco8_testbench_v11_Sync_arm_user_data_out,
      rpoco8_testbench_v11_Sync_sync_pulse_user_data_out => rpoco8_testbench_v11_Sync_sync_pulse_user_data_out,
      rpoco8_testbench_v11_Sync_sync_sel_user_data_out => rpoco8_testbench_v11_Sync_sync_sel_user_data_out,
      rpoco8_testbench_v11_aa_real_data_out => rpoco8_testbench_v11_aa_real_data_out,
      rpoco8_testbench_v11_aa_real_addr => rpoco8_testbench_v11_aa_real_addr,
      rpoco8_testbench_v11_aa_real_data_in => rpoco8_testbench_v11_aa_real_data_in,
      rpoco8_testbench_v11_aa_real_we => rpoco8_testbench_v11_aa_real_we,
      rpoco8_testbench_v11_acc_length_user_data_out => rpoco8_testbench_v11_acc_length_user_data_out,
      rpoco8_testbench_v11_acc_num_user_data_in => rpoco8_testbench_v11_acc_num_user_data_in,
      rpoco8_testbench_v11_adc0_3_data_out => rpoco8_testbench_v11_adc0_3_data_out,
      rpoco8_testbench_v11_adc0_3_addr => rpoco8_testbench_v11_adc0_3_addr,
      rpoco8_testbench_v11_adc0_3_data_in => rpoco8_testbench_v11_adc0_3_data_in,
      rpoco8_testbench_v11_adc0_3_we => rpoco8_testbench_v11_adc0_3_we,
      rpoco8_testbench_v11_adc4_7_data_out => rpoco8_testbench_v11_adc4_7_data_out,
      rpoco8_testbench_v11_adc4_7_addr => rpoco8_testbench_v11_adc4_7_addr,
      rpoco8_testbench_v11_adc4_7_data_in => rpoco8_testbench_v11_adc4_7_data_in,
      rpoco8_testbench_v11_adc4_7_we => rpoco8_testbench_v11_adc4_7_we,
      rpoco8_testbench_v11_ctrl_sw_user_data_out => rpoco8_testbench_v11_ctrl_sw_user_data_out,
      rpoco8_testbench_v11_delay_delay_data_user_data_out => rpoco8_testbench_v11_delay_delay_data_user_data_out,
      rpoco8_testbench_v11_eq_coeff_user_data_out => rpoco8_testbench_v11_eq_coeff_user_data_out,
      rpoco8_testbench_v11_fft_pol02_imag_data_out => rpoco8_testbench_v11_fft_pol02_imag_data_out,
      rpoco8_testbench_v11_fft_pol02_imag_addr => rpoco8_testbench_v11_fft_pol02_imag_addr,
      rpoco8_testbench_v11_fft_pol02_imag_data_in => rpoco8_testbench_v11_fft_pol02_imag_data_in,
      rpoco8_testbench_v11_fft_pol02_imag_we => rpoco8_testbench_v11_fft_pol02_imag_we,
      rpoco8_testbench_v11_fft_pol02_real_data_out => rpoco8_testbench_v11_fft_pol02_real_data_out,
      rpoco8_testbench_v11_fft_pol02_real_addr => rpoco8_testbench_v11_fft_pol02_real_addr,
      rpoco8_testbench_v11_fft_pol02_real_data_in => rpoco8_testbench_v11_fft_pol02_real_data_in,
      rpoco8_testbench_v11_fft_pol02_real_we => rpoco8_testbench_v11_fft_pol02_real_we,
      rpoco8_testbench_v11_iadc0_3_data_out => rpoco8_testbench_v11_iadc0_3_data_out,
      rpoco8_testbench_v11_iadc0_3_addr => rpoco8_testbench_v11_iadc0_3_addr,
      rpoco8_testbench_v11_iadc0_3_data_in => rpoco8_testbench_v11_iadc0_3_data_in,
      rpoco8_testbench_v11_iadc0_3_we => rpoco8_testbench_v11_iadc0_3_we,
      rpoco8_testbench_v11_iadc4_7_data_out => rpoco8_testbench_v11_iadc4_7_data_out,
      rpoco8_testbench_v11_iadc4_7_addr => rpoco8_testbench_v11_iadc4_7_addr,
      rpoco8_testbench_v11_iadc4_7_data_in => rpoco8_testbench_v11_iadc4_7_data_in,
      rpoco8_testbench_v11_iadc4_7_we => rpoco8_testbench_v11_iadc4_7_we,
      rpoco8_testbench_v11_insel_insel_data_user_data_out => rpoco8_testbench_v11_insel_insel_data_user_data_out,
      rpoco8_testbench_v11_led_gateway => rpoco8_testbench_v11_led_gateway,
      rpoco8_testbench_v11_mux_sel_pfb_user_data_out => rpoco8_testbench_v11_mux_sel_pfb_user_data_out,
      rpoco8_testbench_v11_mux_sel_pfb_sync_user_data_out => rpoco8_testbench_v11_mux_sel_pfb_sync_user_data_out,
      rpoco8_testbench_v11_new_raw_capture_user_data_out => rpoco8_testbench_v11_new_raw_capture_user_data_out,
      rpoco8_testbench_v11_new_raw_capture_trig_user_data_out => rpoco8_testbench_v11_new_raw_capture_trig_user_data_out,
      rpoco8_testbench_v11_not_or_not_delay1_user_data_out => rpoco8_testbench_v11_not_or_not_delay1_user_data_out,
      rpoco8_testbench_v11_not_or_not_delay2_user_data_out => rpoco8_testbench_v11_not_or_not_delay2_user_data_out,
      rpoco8_testbench_v11_not_or_not_delay3_user_data_out => rpoco8_testbench_v11_not_or_not_delay3_user_data_out,
      rpoco8_testbench_v11_not_or_not_delay4_user_data_out => rpoco8_testbench_v11_not_or_not_delay4_user_data_out,
      rpoco8_testbench_v11_not_or_not_delay5_user_data_out => rpoco8_testbench_v11_not_or_not_delay5_user_data_out,
      rpoco8_testbench_v11_not_or_not_delay6_user_data_out => rpoco8_testbench_v11_not_or_not_delay6_user_data_out,
      rpoco8_testbench_v11_not_or_not_delay7_user_data_out => rpoco8_testbench_v11_not_or_not_delay7_user_data_out,
      rpoco8_testbench_v11_not_or_not_delay8_user_data_out => rpoco8_testbench_v11_not_or_not_delay8_user_data_out,
      rpoco8_testbench_v11_seed_seed_data_user_data_out => rpoco8_testbench_v11_seed_seed_data_user_data_out,
      rpoco8_testbench_v11_walsh_codes_data_out => rpoco8_testbench_v11_walsh_codes_data_out,
      rpoco8_testbench_v11_walsh_codes_addr => rpoco8_testbench_v11_walsh_codes_addr,
      rpoco8_testbench_v11_walsh_codes_data_in => rpoco8_testbench_v11_walsh_codes_data_in,
      rpoco8_testbench_v11_walsh_codes_we => rpoco8_testbench_v11_walsh_codes_we,
      rpoco8_testbench_v11_walsh_trig_sel_user_data_out => rpoco8_testbench_v11_walsh_trig_sel_user_data_out,
      rpoco8_testbench_v11_walsh_walsh1_gateway => rpoco8_testbench_v11_walsh_walsh1_gateway,
      rpoco8_testbench_v11_walsh_walsh2_gateway => rpoco8_testbench_v11_walsh_walsh2_gateway,
      rpoco8_testbench_v11_walsh_walsh3_gateway => rpoco8_testbench_v11_walsh_walsh3_gateway,
      rpoco8_testbench_v11_walsh_walsh4_gateway => rpoco8_testbench_v11_walsh_walsh4_gateway,
      rpoco8_testbench_v11_walsh_walsh5_gateway => rpoco8_testbench_v11_walsh_walsh5_gateway,
      rpoco8_testbench_v11_walsh_walsh6_gateway => rpoco8_testbench_v11_walsh_walsh6_gateway,
      rpoco8_testbench_v11_walsh_walsh7_gateway => rpoco8_testbench_v11_walsh_walsh7_gateway,
      rpoco8_testbench_v11_walsh_walsh8_gateway => rpoco8_testbench_v11_walsh_walsh8_gateway,
      rpoco8_testbench_v11_xengine8_muxed_aa_real_data_out => rpoco8_testbench_v11_xengine8_muxed_aa_real_data_out,
      rpoco8_testbench_v11_xengine8_muxed_aa_real_addr => rpoco8_testbench_v11_xengine8_muxed_aa_real_addr,
      rpoco8_testbench_v11_xengine8_muxed_aa_real_data_in => rpoco8_testbench_v11_xengine8_muxed_aa_real_data_in,
      rpoco8_testbench_v11_xengine8_muxed_aa_real_we => rpoco8_testbench_v11_xengine8_muxed_aa_real_we,
      rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_out,
      rpoco8_testbench_v11_xengine8_muxed_ab_imag_addr => rpoco8_testbench_v11_xengine8_muxed_ab_imag_addr,
      rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_in,
      rpoco8_testbench_v11_xengine8_muxed_ab_imag_we => rpoco8_testbench_v11_xengine8_muxed_ab_imag_we,
      rpoco8_testbench_v11_xengine8_muxed_ab_real_data_out => rpoco8_testbench_v11_xengine8_muxed_ab_real_data_out,
      rpoco8_testbench_v11_xengine8_muxed_ab_real_addr => rpoco8_testbench_v11_xengine8_muxed_ab_real_addr,
      rpoco8_testbench_v11_xengine8_muxed_ab_real_data_in => rpoco8_testbench_v11_xengine8_muxed_ab_real_data_in,
      rpoco8_testbench_v11_xengine8_muxed_ab_real_we => rpoco8_testbench_v11_xengine8_muxed_ab_real_we,
      rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_out,
      rpoco8_testbench_v11_xengine8_muxed_ac_imag_addr => rpoco8_testbench_v11_xengine8_muxed_ac_imag_addr,
      rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_in,
      rpoco8_testbench_v11_xengine8_muxed_ac_imag_we => rpoco8_testbench_v11_xengine8_muxed_ac_imag_we,
      rpoco8_testbench_v11_xengine8_muxed_ac_real_data_out => rpoco8_testbench_v11_xengine8_muxed_ac_real_data_out,
      rpoco8_testbench_v11_xengine8_muxed_ac_real_addr => rpoco8_testbench_v11_xengine8_muxed_ac_real_addr,
      rpoco8_testbench_v11_xengine8_muxed_ac_real_data_in => rpoco8_testbench_v11_xengine8_muxed_ac_real_data_in,
      rpoco8_testbench_v11_xengine8_muxed_ac_real_we => rpoco8_testbench_v11_xengine8_muxed_ac_real_we,
      rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_out,
      rpoco8_testbench_v11_xengine8_muxed_ad_imag_addr => rpoco8_testbench_v11_xengine8_muxed_ad_imag_addr,
      rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_in,
      rpoco8_testbench_v11_xengine8_muxed_ad_imag_we => rpoco8_testbench_v11_xengine8_muxed_ad_imag_we,
      rpoco8_testbench_v11_xengine8_muxed_ad_real_data_out => rpoco8_testbench_v11_xengine8_muxed_ad_real_data_out,
      rpoco8_testbench_v11_xengine8_muxed_ad_real_addr => rpoco8_testbench_v11_xengine8_muxed_ad_real_addr,
      rpoco8_testbench_v11_xengine8_muxed_ad_real_data_in => rpoco8_testbench_v11_xengine8_muxed_ad_real_data_in,
      rpoco8_testbench_v11_xengine8_muxed_ad_real_we => rpoco8_testbench_v11_xengine8_muxed_ad_real_we,
      rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_out,
      rpoco8_testbench_v11_xengine8_muxed_ae_imag_addr => rpoco8_testbench_v11_xengine8_muxed_ae_imag_addr,
      rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_in,
      rpoco8_testbench_v11_xengine8_muxed_ae_imag_we => rpoco8_testbench_v11_xengine8_muxed_ae_imag_we,
      rpoco8_testbench_v11_xengine8_muxed_ae_real_data_out => rpoco8_testbench_v11_xengine8_muxed_ae_real_data_out,
      rpoco8_testbench_v11_xengine8_muxed_ae_real_addr => rpoco8_testbench_v11_xengine8_muxed_ae_real_addr,
      rpoco8_testbench_v11_xengine8_muxed_ae_real_data_in => rpoco8_testbench_v11_xengine8_muxed_ae_real_data_in,
      rpoco8_testbench_v11_xengine8_muxed_ae_real_we => rpoco8_testbench_v11_xengine8_muxed_ae_real_we,
      rpoco8_testbench_v11_xengine8_muxed_af_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_af_imag_data_out,
      rpoco8_testbench_v11_xengine8_muxed_af_imag_addr => rpoco8_testbench_v11_xengine8_muxed_af_imag_addr,
      rpoco8_testbench_v11_xengine8_muxed_af_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_af_imag_data_in,
      rpoco8_testbench_v11_xengine8_muxed_af_imag_we => rpoco8_testbench_v11_xengine8_muxed_af_imag_we,
      rpoco8_testbench_v11_xengine8_muxed_af_real_data_out => rpoco8_testbench_v11_xengine8_muxed_af_real_data_out,
      rpoco8_testbench_v11_xengine8_muxed_af_real_addr => rpoco8_testbench_v11_xengine8_muxed_af_real_addr,
      rpoco8_testbench_v11_xengine8_muxed_af_real_data_in => rpoco8_testbench_v11_xengine8_muxed_af_real_data_in,
      rpoco8_testbench_v11_xengine8_muxed_af_real_we => rpoco8_testbench_v11_xengine8_muxed_af_real_we,
      rpoco8_testbench_v11_xengine8_muxed_bb_real_data_out => rpoco8_testbench_v11_xengine8_muxed_bb_real_data_out,
      rpoco8_testbench_v11_xengine8_muxed_bb_real_addr => rpoco8_testbench_v11_xengine8_muxed_bb_real_addr,
      rpoco8_testbench_v11_xengine8_muxed_bb_real_data_in => rpoco8_testbench_v11_xengine8_muxed_bb_real_data_in,
      rpoco8_testbench_v11_xengine8_muxed_bb_real_we => rpoco8_testbench_v11_xengine8_muxed_bb_real_we,
      rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_out,
      rpoco8_testbench_v11_xengine8_muxed_bc_imag_addr => rpoco8_testbench_v11_xengine8_muxed_bc_imag_addr,
      rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_in,
      rpoco8_testbench_v11_xengine8_muxed_bc_imag_we => rpoco8_testbench_v11_xengine8_muxed_bc_imag_we,
      rpoco8_testbench_v11_xengine8_muxed_bc_real_data_out => rpoco8_testbench_v11_xengine8_muxed_bc_real_data_out,
      rpoco8_testbench_v11_xengine8_muxed_bc_real_addr => rpoco8_testbench_v11_xengine8_muxed_bc_real_addr,
      rpoco8_testbench_v11_xengine8_muxed_bc_real_data_in => rpoco8_testbench_v11_xengine8_muxed_bc_real_data_in,
      rpoco8_testbench_v11_xengine8_muxed_bc_real_we => rpoco8_testbench_v11_xengine8_muxed_bc_real_we,
      rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_out,
      rpoco8_testbench_v11_xengine8_muxed_bd_imag_addr => rpoco8_testbench_v11_xengine8_muxed_bd_imag_addr,
      rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_in,
      rpoco8_testbench_v11_xengine8_muxed_bd_imag_we => rpoco8_testbench_v11_xengine8_muxed_bd_imag_we,
      rpoco8_testbench_v11_xengine8_muxed_bd_real_data_out => rpoco8_testbench_v11_xengine8_muxed_bd_real_data_out,
      rpoco8_testbench_v11_xengine8_muxed_bd_real_addr => rpoco8_testbench_v11_xengine8_muxed_bd_real_addr,
      rpoco8_testbench_v11_xengine8_muxed_bd_real_data_in => rpoco8_testbench_v11_xengine8_muxed_bd_real_data_in,
      rpoco8_testbench_v11_xengine8_muxed_bd_real_we => rpoco8_testbench_v11_xengine8_muxed_bd_real_we,
      rpoco8_testbench_v11_xengine8_muxed_be_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_be_imag_data_out,
      rpoco8_testbench_v11_xengine8_muxed_be_imag_addr => rpoco8_testbench_v11_xengine8_muxed_be_imag_addr,
      rpoco8_testbench_v11_xengine8_muxed_be_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_be_imag_data_in,
      rpoco8_testbench_v11_xengine8_muxed_be_imag_we => rpoco8_testbench_v11_xengine8_muxed_be_imag_we,
      rpoco8_testbench_v11_xengine8_muxed_be_real_data_out => rpoco8_testbench_v11_xengine8_muxed_be_real_data_out,
      rpoco8_testbench_v11_xengine8_muxed_be_real_addr => rpoco8_testbench_v11_xengine8_muxed_be_real_addr,
      rpoco8_testbench_v11_xengine8_muxed_be_real_data_in => rpoco8_testbench_v11_xengine8_muxed_be_real_data_in,
      rpoco8_testbench_v11_xengine8_muxed_be_real_we => rpoco8_testbench_v11_xengine8_muxed_be_real_we,
      rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_out,
      rpoco8_testbench_v11_xengine8_muxed_bf_imag_addr => rpoco8_testbench_v11_xengine8_muxed_bf_imag_addr,
      rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_in,
      rpoco8_testbench_v11_xengine8_muxed_bf_imag_we => rpoco8_testbench_v11_xengine8_muxed_bf_imag_we,
      rpoco8_testbench_v11_xengine8_muxed_bf_real_data_out => rpoco8_testbench_v11_xengine8_muxed_bf_real_data_out,
      rpoco8_testbench_v11_xengine8_muxed_bf_real_addr => rpoco8_testbench_v11_xengine8_muxed_bf_real_addr,
      rpoco8_testbench_v11_xengine8_muxed_bf_real_data_in => rpoco8_testbench_v11_xengine8_muxed_bf_real_data_in,
      rpoco8_testbench_v11_xengine8_muxed_bf_real_we => rpoco8_testbench_v11_xengine8_muxed_bf_real_we,
      rpoco8_testbench_v11_xengine8_muxed_cc_real_data_out => rpoco8_testbench_v11_xengine8_muxed_cc_real_data_out,
      rpoco8_testbench_v11_xengine8_muxed_cc_real_addr => rpoco8_testbench_v11_xengine8_muxed_cc_real_addr,
      rpoco8_testbench_v11_xengine8_muxed_cc_real_data_in => rpoco8_testbench_v11_xengine8_muxed_cc_real_data_in,
      rpoco8_testbench_v11_xengine8_muxed_cc_real_we => rpoco8_testbench_v11_xengine8_muxed_cc_real_we,
      rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_out,
      rpoco8_testbench_v11_xengine8_muxed_cd_imag_addr => rpoco8_testbench_v11_xengine8_muxed_cd_imag_addr,
      rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_in,
      rpoco8_testbench_v11_xengine8_muxed_cd_imag_we => rpoco8_testbench_v11_xengine8_muxed_cd_imag_we,
      rpoco8_testbench_v11_xengine8_muxed_cd_real_data_out => rpoco8_testbench_v11_xengine8_muxed_cd_real_data_out,
      rpoco8_testbench_v11_xengine8_muxed_cd_real_addr => rpoco8_testbench_v11_xengine8_muxed_cd_real_addr,
      rpoco8_testbench_v11_xengine8_muxed_cd_real_data_in => rpoco8_testbench_v11_xengine8_muxed_cd_real_data_in,
      rpoco8_testbench_v11_xengine8_muxed_cd_real_we => rpoco8_testbench_v11_xengine8_muxed_cd_real_we,
      rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_out,
      rpoco8_testbench_v11_xengine8_muxed_cg_imag_addr => rpoco8_testbench_v11_xengine8_muxed_cg_imag_addr,
      rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_in,
      rpoco8_testbench_v11_xengine8_muxed_cg_imag_we => rpoco8_testbench_v11_xengine8_muxed_cg_imag_we,
      rpoco8_testbench_v11_xengine8_muxed_cg_real_data_out => rpoco8_testbench_v11_xengine8_muxed_cg_real_data_out,
      rpoco8_testbench_v11_xengine8_muxed_cg_real_addr => rpoco8_testbench_v11_xengine8_muxed_cg_real_addr,
      rpoco8_testbench_v11_xengine8_muxed_cg_real_data_in => rpoco8_testbench_v11_xengine8_muxed_cg_real_data_in,
      rpoco8_testbench_v11_xengine8_muxed_cg_real_we => rpoco8_testbench_v11_xengine8_muxed_cg_real_we,
      rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_out,
      rpoco8_testbench_v11_xengine8_muxed_ch_imag_addr => rpoco8_testbench_v11_xengine8_muxed_ch_imag_addr,
      rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_in,
      rpoco8_testbench_v11_xengine8_muxed_ch_imag_we => rpoco8_testbench_v11_xengine8_muxed_ch_imag_we,
      rpoco8_testbench_v11_xengine8_muxed_ch_real_data_out => rpoco8_testbench_v11_xengine8_muxed_ch_real_data_out,
      rpoco8_testbench_v11_xengine8_muxed_ch_real_addr => rpoco8_testbench_v11_xengine8_muxed_ch_real_addr,
      rpoco8_testbench_v11_xengine8_muxed_ch_real_data_in => rpoco8_testbench_v11_xengine8_muxed_ch_real_data_in,
      rpoco8_testbench_v11_xengine8_muxed_ch_real_we => rpoco8_testbench_v11_xengine8_muxed_ch_real_we,
      rpoco8_testbench_v11_xengine8_muxed_dd_real_data_out => rpoco8_testbench_v11_xengine8_muxed_dd_real_data_out,
      rpoco8_testbench_v11_xengine8_muxed_dd_real_addr => rpoco8_testbench_v11_xengine8_muxed_dd_real_addr,
      rpoco8_testbench_v11_xengine8_muxed_dd_real_data_in => rpoco8_testbench_v11_xengine8_muxed_dd_real_data_in,
      rpoco8_testbench_v11_xengine8_muxed_dd_real_we => rpoco8_testbench_v11_xengine8_muxed_dd_real_we,
      rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_out,
      rpoco8_testbench_v11_xengine8_muxed_dg_imag_addr => rpoco8_testbench_v11_xengine8_muxed_dg_imag_addr,
      rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_in,
      rpoco8_testbench_v11_xengine8_muxed_dg_imag_we => rpoco8_testbench_v11_xengine8_muxed_dg_imag_we,
      rpoco8_testbench_v11_xengine8_muxed_dg_real_data_out => rpoco8_testbench_v11_xengine8_muxed_dg_real_data_out,
      rpoco8_testbench_v11_xengine8_muxed_dg_real_addr => rpoco8_testbench_v11_xengine8_muxed_dg_real_addr,
      rpoco8_testbench_v11_xengine8_muxed_dg_real_data_in => rpoco8_testbench_v11_xengine8_muxed_dg_real_data_in,
      rpoco8_testbench_v11_xengine8_muxed_dg_real_we => rpoco8_testbench_v11_xengine8_muxed_dg_real_we,
      rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_out => rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_out,
      rpoco8_testbench_v11_xengine8_muxed_dh_imag_addr => rpoco8_testbench_v11_xengine8_muxed_dh_imag_addr,
      rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_in => rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_in,
      rpoco8_testbench_v11_xengine8_muxed_dh_imag_we => rpoco8_testbench_v11_xengine8_muxed_dh_imag_we,
      rpoco8_testbench_v11_xengine8_muxed_dh_real_data_out => rpoco8_testbench_v11_xengine8_muxed_dh_real_data_out,
      rpoco8_testbench_v11_xengine8_muxed_dh_real_addr => rpoco8_testbench_v11_xengine8_muxed_dh_real_addr,
      rpoco8_testbench_v11_xengine8_muxed_dh_real_data_in => rpoco8_testbench_v11_xengine8_muxed_dh_real_data_in,
      rpoco8_testbench_v11_xengine8_muxed_dh_real_we => rpoco8_testbench_v11_xengine8_muxed_dh_real_we
    );

end architecture STRUCTURE;

