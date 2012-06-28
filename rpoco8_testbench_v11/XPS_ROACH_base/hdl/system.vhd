-------------------------------------------------------------------------------
-- system.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system is
  port (
    sys_clk_n : in std_logic;
    sys_clk_p : in std_logic;
    dly_clk_n : in std_logic;
    dly_clk_p : in std_logic;
    aux0_clk_n : in std_logic;
    aux0_clk_p : in std_logic;
    aux1_clk_n : in std_logic;
    aux1_clk_p : in std_logic;
    epb_clk_in : in std_logic;
    epb_data : inout std_logic_vector(15 downto 0);
    epb_addr : in std_logic_vector(22 downto 0);
    epb_addr_gp : in std_logic_vector(5 downto 0);
    epb_cs_n : in std_logic;
    epb_be_n : in std_logic_vector(1 downto 0);
    epb_r_w_n : in std_logic;
    epb_oe_n : in std_logic;
    epb_rdy : out std_logic;
    ppc_irq_n : out std_logic;
    quadc0_adc0_clk_in_p : in std_logic;
    quadc0_adc1_clk_in_p : in std_logic;
    quadc0_adc2_clk_in_p : in std_logic;
    quadc0_adc3_clk_in_p : in std_logic;
    quadc0_adc0_data_in_p : in std_logic_vector(7 downto 0);
    quadc0_adc1_data_in_p : in std_logic_vector(7 downto 0);
    quadc0_adc2_data_in_p : in std_logic_vector(7 downto 0);
    quadc0_adc3_data_in_p : in std_logic_vector(7 downto 0);
    quadc0_adc0_clk_in_n : in std_logic;
    quadc0_adc1_clk_in_n : in std_logic;
    quadc0_adc2_clk_in_n : in std_logic;
    quadc0_adc3_clk_in_n : in std_logic;
    quadc0_adc0_data_in_n : in std_logic_vector(7 downto 0);
    quadc0_adc1_data_in_n : in std_logic_vector(7 downto 0);
    quadc0_adc2_data_in_n : in std_logic_vector(7 downto 0);
    quadc0_adc3_data_in_n : in std_logic_vector(7 downto 0);
    quadc0_sync_in_p : in std_logic;
    quadc0_sync_in_n : in std_logic;
    quadc1_adc0_clk_in_p : in std_logic;
    quadc1_adc1_clk_in_p : in std_logic;
    quadc1_adc2_clk_in_p : in std_logic;
    quadc1_adc3_clk_in_p : in std_logic;
    quadc1_adc0_data_in_p : in std_logic_vector(7 downto 0);
    quadc1_adc1_data_in_p : in std_logic_vector(7 downto 0);
    quadc1_adc2_data_in_p : in std_logic_vector(7 downto 0);
    quadc1_adc3_data_in_p : in std_logic_vector(7 downto 0);
    quadc1_adc0_clk_in_n : in std_logic;
    quadc1_adc1_clk_in_n : in std_logic;
    quadc1_adc2_clk_in_n : in std_logic;
    quadc1_adc3_clk_in_n : in std_logic;
    quadc1_adc0_data_in_n : in std_logic_vector(7 downto 0);
    quadc1_adc1_data_in_n : in std_logic_vector(7 downto 0);
    quadc1_adc2_data_in_n : in std_logic_vector(7 downto 0);
    quadc1_adc3_data_in_n : in std_logic_vector(7 downto 0);
    quadc1_sync_in_p : in std_logic;
    quadc1_sync_in_n : in std_logic;
    rpoco8_testbench_v11_led_ext : out std_logic_vector(0 to 0);
    rpoco8_testbench_v11_walsh_walsh1_ext : out std_logic_vector(0 to 0);
    rpoco8_testbench_v11_walsh_walsh2_ext : out std_logic_vector(0 to 0);
    rpoco8_testbench_v11_walsh_walsh3_ext : out std_logic_vector(0 to 0);
    rpoco8_testbench_v11_walsh_walsh4_ext : out std_logic_vector(0 to 0);
    rpoco8_testbench_v11_walsh_walsh5_ext : out std_logic_vector(0 to 0);
    rpoco8_testbench_v11_walsh_walsh6_ext : out std_logic_vector(0 to 0);
    rpoco8_testbench_v11_walsh_walsh7_ext : out std_logic_vector(0 to 0);
    rpoco8_testbench_v11_walsh_walsh8_ext : out std_logic_vector(0 to 0)
  );
end system;

architecture STRUCTURE of system is

  component infrastructure_inst_wrapper is
    port (
      sys_clk_n : in std_logic;
      sys_clk_p : in std_logic;
      dly_clk_n : in std_logic;
      dly_clk_p : in std_logic;
      aux0_clk_n : in std_logic;
      aux0_clk_p : in std_logic;
      aux1_clk_n : in std_logic;
      aux1_clk_p : in std_logic;
      epb_clk_in : in std_logic;
      sys_clk : out std_logic;
      sys_clk90 : out std_logic;
      sys_clk180 : out std_logic;
      sys_clk270 : out std_logic;
      sys_clk_lock : out std_logic;
      sys_clk2x : out std_logic;
      sys_clk2x90 : out std_logic;
      sys_clk2x180 : out std_logic;
      sys_clk2x270 : out std_logic;
      dly_clk : out std_logic;
      aux0_clk : out std_logic;
      aux0_clk90 : out std_logic;
      aux0_clk180 : out std_logic;
      aux0_clk270 : out std_logic;
      aux1_clk : out std_logic;
      aux1_clk90 : out std_logic;
      aux1_clk180 : out std_logic;
      aux1_clk270 : out std_logic;
      aux0_clk2x : out std_logic;
      aux0_clk2x90 : out std_logic;
      aux0_clk2x180 : out std_logic;
      aux0_clk2x270 : out std_logic;
      epb_clk : out std_logic;
      idelay_rst : in std_logic;
      idelay_rdy : out std_logic
    );
  end component;

  component reset_block_inst_wrapper is
    port (
      clk : in std_logic;
      async_reset_i : in std_logic;
      reset_i : in std_logic;
      reset_o : out std_logic
    );
  end component;

  component opb0_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : out std_logic;
      SYS_Rst : in std_logic;
      Debug_SYS_Rst : in std_logic;
      WDT_Rst : in std_logic;
      M_ABus : in std_logic_vector(0 to 31);
      M_BE : in std_logic_vector(0 to 3);
      M_beXfer : in std_logic_vector(0 to 0);
      M_busLock : in std_logic_vector(0 to 0);
      M_DBus : in std_logic_vector(0 to 31);
      M_DBusEn : in std_logic_vector(0 to 0);
      M_DBusEn32_63 : in std_logic_vector(0 to 0);
      M_dwXfer : in std_logic_vector(0 to 0);
      M_fwXfer : in std_logic_vector(0 to 0);
      M_hwXfer : in std_logic_vector(0 to 0);
      M_request : in std_logic_vector(0 to 0);
      M_RNW : in std_logic_vector(0 to 0);
      M_select : in std_logic_vector(0 to 0);
      M_seqAddr : in std_logic_vector(0 to 0);
      Sl_beAck : in std_logic_vector(0 to 31);
      Sl_DBus : in std_logic_vector(0 to 1023);
      Sl_DBusEn : in std_logic_vector(0 to 31);
      Sl_DBusEn32_63 : in std_logic_vector(0 to 31);
      Sl_errAck : in std_logic_vector(0 to 31);
      Sl_dwAck : in std_logic_vector(0 to 31);
      Sl_fwAck : in std_logic_vector(0 to 31);
      Sl_hwAck : in std_logic_vector(0 to 31);
      Sl_retry : in std_logic_vector(0 to 31);
      Sl_toutSup : in std_logic_vector(0 to 31);
      Sl_xferAck : in std_logic_vector(0 to 31);
      OPB_MRequest : out std_logic_vector(0 to 0);
      OPB_ABus : out std_logic_vector(0 to 31);
      OPB_BE : out std_logic_vector(0 to 3);
      OPB_beXfer : out std_logic;
      OPB_beAck : out std_logic;
      OPB_busLock : out std_logic;
      OPB_rdDBus : out std_logic_vector(0 to 31);
      OPB_wrDBus : out std_logic_vector(0 to 31);
      OPB_DBus : out std_logic_vector(0 to 31);
      OPB_errAck : out std_logic;
      OPB_dwAck : out std_logic;
      OPB_dwXfer : out std_logic;
      OPB_fwAck : out std_logic;
      OPB_fwXfer : out std_logic;
      OPB_hwAck : out std_logic;
      OPB_hwXfer : out std_logic;
      OPB_MGrant : out std_logic_vector(0 to 0);
      OPB_pendReq : out std_logic_vector(0 to 0);
      OPB_retry : out std_logic;
      OPB_RNW : out std_logic;
      OPB_select : out std_logic;
      OPB_seqAddr : out std_logic;
      OPB_timeout : out std_logic;
      OPB_toutSup : out std_logic;
      OPB_xferAck : out std_logic
    );
  end component;

  component epb_opb_bridge_inst_wrapper is
    port (
      sys_reset : in std_logic;
      epb_data_oe_n : out std_logic;
      epb_cs_n : in std_logic;
      epb_oe_n : in std_logic;
      epb_r_w_n : in std_logic;
      epb_be_n : in std_logic_vector(1 downto 0);
      epb_addr : in std_logic_vector(22 downto 0);
      epb_addr_gp : in std_logic_vector(5 downto 0);
      epb_data_i : in std_logic_vector(15 downto 0);
      epb_data_o : out std_logic_vector(15 downto 0);
      epb_rdy : out std_logic;
      epb_rdy_oe : out std_logic;
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      M_request : out std_logic;
      M_busLock : out std_logic;
      M_select : out std_logic;
      M_RNW : out std_logic;
      M_BE : out std_logic_vector(0 to 3);
      M_seqAddr : out std_logic;
      M_DBus : out std_logic_vector(0 to 31);
      M_ABus : out std_logic_vector(0 to 31);
      OPB_MGrant : in std_logic;
      OPB_xferAck : in std_logic;
      OPB_errAck : in std_logic;
      OPB_retry : in std_logic;
      OPB_timeout : in std_logic;
      OPB_DBus : in std_logic_vector(0 to 31)
    );
  end component;

  component epb_infrastructure_inst_wrapper is
    port (
      epb_data_buf : inout std_logic_vector(15 downto 0);
      epb_data_oe_n_i : in std_logic;
      epb_data_out_i : in std_logic_vector(15 downto 0);
      epb_data_in_o : out std_logic_vector(15 downto 0);
      epb_oe_n_buf : in std_logic;
      epb_oe_n : out std_logic;
      epb_cs_n_buf : in std_logic;
      epb_cs_n : out std_logic;
      epb_r_w_n_buf : in std_logic;
      epb_r_w_n : out std_logic;
      epb_be_n_buf : in std_logic_vector(1 downto 0);
      epb_be_n : out std_logic_vector(1 downto 0);
      epb_addr_buf : in std_logic_vector(22 downto 0);
      epb_addr : out std_logic_vector(22 downto 0);
      epb_addr_gp_buf : in std_logic_vector(5 downto 0);
      epb_addr_gp : out std_logic_vector(5 downto 0);
      epb_rdy_buf : out std_logic;
      epb_rdy : in std_logic;
      epb_rdy_oe : in std_logic
    );
  end component;

  component sys_block_inst_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      soft_reset : out std_logic;
      irq_n : out std_logic;
      app_irq : in std_logic_vector(15 downto 0);
      fab_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xsg_core_config_wrapper is
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

  component rpoco8_testbench_v11_adc_s_quadc0_wrapper is
    port (
      adc0_clk_in_p : in std_logic;
      adc0_clk_in_n : in std_logic;
      adc1_clk_in_p : in std_logic;
      adc1_clk_in_n : in std_logic;
      adc2_clk_in_p : in std_logic;
      adc2_clk_in_n : in std_logic;
      adc3_clk_in_p : in std_logic;
      adc3_clk_in_n : in std_logic;
      adc0_data_in_p : in std_logic_vector(7 downto 0);
      adc0_data_in_n : in std_logic_vector(7 downto 0);
      adc1_data_in_p : in std_logic_vector(7 downto 0);
      adc1_data_in_n : in std_logic_vector(7 downto 0);
      adc2_data_in_p : in std_logic_vector(7 downto 0);
      adc2_data_in_n : in std_logic_vector(7 downto 0);
      adc3_data_in_p : in std_logic_vector(7 downto 0);
      adc3_data_in_n : in std_logic_vector(7 downto 0);
      sync_in_p : in std_logic;
      sync_in_n : in std_logic;
      user_clk : in std_logic;
      dcm_reset : in std_logic;
      reset : in std_logic;
      adc0_clk : out std_logic;
      adc1_clk : out std_logic;
      adc2_clk : out std_logic;
      adc3_clk : out std_logic;
      adc0_clk90 : out std_logic;
      adc0_data : out std_logic_vector(7 downto 0);
      adc1_data : out std_logic_vector(7 downto 0);
      adc2_data : out std_logic_vector(7 downto 0);
      adc3_data : out std_logic_vector(7 downto 0);
      valid : out std_logic;
      sync : out std_logic
    );
  end component;

  component rpoco8_testbench_v11_adc_s_quadc1_wrapper is
    port (
      adc0_clk_in_p : in std_logic;
      adc0_clk_in_n : in std_logic;
      adc1_clk_in_p : in std_logic;
      adc1_clk_in_n : in std_logic;
      adc2_clk_in_p : in std_logic;
      adc2_clk_in_n : in std_logic;
      adc3_clk_in_p : in std_logic;
      adc3_clk_in_n : in std_logic;
      adc0_data_in_p : in std_logic_vector(7 downto 0);
      adc0_data_in_n : in std_logic_vector(7 downto 0);
      adc1_data_in_p : in std_logic_vector(7 downto 0);
      adc1_data_in_n : in std_logic_vector(7 downto 0);
      adc2_data_in_p : in std_logic_vector(7 downto 0);
      adc2_data_in_n : in std_logic_vector(7 downto 0);
      adc3_data_in_p : in std_logic_vector(7 downto 0);
      adc3_data_in_n : in std_logic_vector(7 downto 0);
      sync_in_p : in std_logic;
      sync_in_n : in std_logic;
      user_clk : in std_logic;
      dcm_reset : in std_logic;
      reset : in std_logic;
      adc0_clk : out std_logic;
      adc1_clk : out std_logic;
      adc2_clk : out std_logic;
      adc3_clk : out std_logic;
      adc0_clk90 : out std_logic;
      adc0_data : out std_logic_vector(7 downto 0);
      adc1_data : out std_logic_vector(7 downto 0);
      adc2_data : out std_logic_vector(7 downto 0);
      adc3_data : out std_logic_vector(7 downto 0);
      valid : out std_logic;
      sync : out std_logic
    );
  end component;

  component rpoco8_testbench_v11_sync_arm_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_sync_sync_pulse_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_sync_sync_sel_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_aa_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_aa_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_aa_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_acc_length_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_acc_num_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_adc0_3_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_adc0_3_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_adc0_3_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_adc4_7_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_adc4_7_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_adc4_7_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_ctrl_sw_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_delay_delay_data_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_eq_coeff_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_fft_pol02_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_fft_pol02_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_fft_pol02_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_fft_pol02_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_fft_pol02_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_fft_pol02_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_iadc0_3_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_iadc0_3_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_iadc0_3_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_iadc4_7_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_iadc4_7_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_iadc4_7_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_insel_insel_data_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_led_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_mux_sel_pfb_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_mux_sel_pfb_sync_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_new_raw_capture_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_new_raw_capture_trig_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_not_or_not_delay1_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_not_or_not_delay2_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_not_or_not_delay3_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_not_or_not_delay4_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_not_or_not_delay5_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_not_or_not_delay6_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_not_or_not_delay7_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_not_or_not_delay8_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_seed_seed_data_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_walsh_codes_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_walsh_codes_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_walsh_codes_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_walsh_trig_sel_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_walsh_walsh1_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_walsh_walsh2_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_walsh_walsh3_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_walsh_walsh4_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_walsh_walsh5_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_walsh_walsh6_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_walsh_walsh7_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_walsh_walsh8_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_aa_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_aa_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ab_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ab_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ab_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ac_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ac_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ac_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ad_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ad_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ad_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ae_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ae_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ae_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_af_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_af_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_af_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_af_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bb_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bb_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bc_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bc_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bc_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bd_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bd_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bd_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_be_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_be_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_be_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_be_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bf_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bf_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_bf_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_cc_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_cc_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_cd_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_cd_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_cd_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_cg_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_cg_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_cg_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ch_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ch_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_ch_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_dd_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_dd_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_dg_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_dg_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_dg_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_dh_imag_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_dh_real_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(10 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component rpoco8_testbench_v11_xengine8_muxed_dh_real_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component opb1_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : out std_logic;
      SYS_Rst : in std_logic;
      Debug_SYS_Rst : in std_logic;
      WDT_Rst : in std_logic;
      M_ABus : in std_logic_vector(0 to 31);
      M_BE : in std_logic_vector(0 to 3);
      M_beXfer : in std_logic_vector(0 to 0);
      M_busLock : in std_logic_vector(0 to 0);
      M_DBus : in std_logic_vector(0 to 31);
      M_DBusEn : in std_logic_vector(0 to 0);
      M_DBusEn32_63 : in std_logic_vector(0 to 0);
      M_dwXfer : in std_logic_vector(0 to 0);
      M_fwXfer : in std_logic_vector(0 to 0);
      M_hwXfer : in std_logic_vector(0 to 0);
      M_request : in std_logic_vector(0 to 0);
      M_RNW : in std_logic_vector(0 to 0);
      M_select : in std_logic_vector(0 to 0);
      M_seqAddr : in std_logic_vector(0 to 0);
      Sl_beAck : in std_logic_vector(0 to 32);
      Sl_DBus : in std_logic_vector(0 to 1055);
      Sl_DBusEn : in std_logic_vector(0 to 32);
      Sl_DBusEn32_63 : in std_logic_vector(0 to 32);
      Sl_errAck : in std_logic_vector(0 to 32);
      Sl_dwAck : in std_logic_vector(0 to 32);
      Sl_fwAck : in std_logic_vector(0 to 32);
      Sl_hwAck : in std_logic_vector(0 to 32);
      Sl_retry : in std_logic_vector(0 to 32);
      Sl_toutSup : in std_logic_vector(0 to 32);
      Sl_xferAck : in std_logic_vector(0 to 32);
      OPB_MRequest : out std_logic_vector(0 to 0);
      OPB_ABus : out std_logic_vector(0 to 31);
      OPB_BE : out std_logic_vector(0 to 3);
      OPB_beXfer : out std_logic;
      OPB_beAck : out std_logic;
      OPB_busLock : out std_logic;
      OPB_rdDBus : out std_logic_vector(0 to 31);
      OPB_wrDBus : out std_logic_vector(0 to 31);
      OPB_DBus : out std_logic_vector(0 to 31);
      OPB_errAck : out std_logic;
      OPB_dwAck : out std_logic;
      OPB_dwXfer : out std_logic;
      OPB_fwAck : out std_logic;
      OPB_fwXfer : out std_logic;
      OPB_hwAck : out std_logic;
      OPB_hwXfer : out std_logic;
      OPB_MGrant : out std_logic_vector(0 to 0);
      OPB_pendReq : out std_logic_vector(0 to 0);
      OPB_retry : out std_logic;
      OPB_RNW : out std_logic;
      OPB_select : out std_logic;
      OPB_seqAddr : out std_logic;
      OPB_timeout : out std_logic;
      OPB_toutSup : out std_logic;
      OPB_xferAck : out std_logic
    );
  end component;

  component opb2opb_bridge_opb1_wrapper is
    port (
      MOPB_Clk : in std_logic;
      SOPB_Clk : in std_logic;
      MOPB_Rst : in std_logic;
      SOPB_Rst : in std_logic;
      SOPB_ABus : in std_logic_vector(0 to 31);
      SOPB_BE : in std_logic_vector(0 to 3);
      SOPB_DBus : in std_logic_vector(0 to 31);
      SOPB_RNW : in std_logic;
      SOPB_select : in std_logic;
      SOPB_seqAddr : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      M_ABus : out std_logic_vector(0 to 31);
      M_BE : out std_logic_vector(0 to 3);
      M_busLock : out std_logic;
      M_DBus : out std_logic_vector(0 to 31);
      M_request : out std_logic;
      M_RNW : out std_logic;
      M_select : out std_logic;
      M_seqAddr : out std_logic;
      MOPB_DBus : in std_logic_vector(0 to 31);
      MOPB_errAck : in std_logic;
      MOPB_MGrant : in std_logic;
      MOPB_retry : in std_logic;
      MOPB_timeout : in std_logic;
      MOPB_xferAck : in std_logic
    );
  end component;

  -- Internal signals

  signal adc0_clk : std_logic;
  signal adc0_clk90 : std_logic;
  signal epb_addr_gp_int : std_logic_vector(5 downto 0);
  signal epb_addr_int : std_logic_vector(22 downto 0);
  signal epb_be_n_int : std_logic_vector(1 downto 0);
  signal epb_clk : std_logic;
  signal epb_cs_n_int : std_logic;
  signal epb_data_i : std_logic_vector(15 downto 0);
  signal epb_data_o : std_logic_vector(15 downto 0);
  signal epb_data_oe_n : std_logic;
  signal epb_oe_n_int : std_logic;
  signal epb_r_w_n_int : std_logic;
  signal epb_rdy_buf : std_logic;
  signal epb_rdy_oe : std_logic;
  signal net_gnd0 : std_logic;
  signal net_gnd1 : std_logic_vector(0 to 0);
  signal net_gnd32 : std_logic_vector(0 to 31);
  signal net_gnd33 : std_logic_vector(0 to 32);
  signal net_vcc1 : std_logic_vector(0 to 0);
  signal net_vcc32 : std_logic_vector(0 to 31);
  signal net_vcc33 : std_logic_vector(0 to 32);
  signal opb0_M_ABus : std_logic_vector(0 to 31);
  signal opb0_M_BE : std_logic_vector(0 to 3);
  signal opb0_M_DBus : std_logic_vector(0 to 31);
  signal opb0_M_RNW : std_logic_vector(0 to 0);
  signal opb0_M_busLock : std_logic_vector(0 to 0);
  signal opb0_M_request : std_logic_vector(0 to 0);
  signal opb0_M_select : std_logic_vector(0 to 0);
  signal opb0_M_seqAddr : std_logic_vector(0 to 0);
  signal opb0_OPB_ABus : std_logic_vector(0 to 31);
  signal opb0_OPB_BE : std_logic_vector(0 to 3);
  signal opb0_OPB_DBus : std_logic_vector(0 to 31);
  signal opb0_OPB_MGrant : std_logic_vector(0 to 0);
  signal opb0_OPB_RNW : std_logic;
  signal opb0_OPB_Rst : std_logic;
  signal opb0_OPB_errAck : std_logic;
  signal opb0_OPB_retry : std_logic;
  signal opb0_OPB_select : std_logic;
  signal opb0_OPB_seqAddr : std_logic;
  signal opb0_OPB_timeout : std_logic;
  signal opb0_OPB_xferAck : std_logic;
  signal opb0_Sl_DBus : std_logic_vector(0 to 1023);
  signal opb0_Sl_errAck : std_logic_vector(0 to 31);
  signal opb0_Sl_retry : std_logic_vector(0 to 31);
  signal opb0_Sl_toutSup : std_logic_vector(0 to 31);
  signal opb0_Sl_xferAck : std_logic_vector(0 to 31);
  signal opb1_M_ABus : std_logic_vector(0 to 31);
  signal opb1_M_BE : std_logic_vector(0 to 3);
  signal opb1_M_DBus : std_logic_vector(0 to 31);
  signal opb1_M_RNW : std_logic_vector(0 to 0);
  signal opb1_M_busLock : std_logic_vector(0 to 0);
  signal opb1_M_request : std_logic_vector(0 to 0);
  signal opb1_M_select : std_logic_vector(0 to 0);
  signal opb1_M_seqAddr : std_logic_vector(0 to 0);
  signal opb1_OPB_ABus : std_logic_vector(0 to 31);
  signal opb1_OPB_BE : std_logic_vector(0 to 3);
  signal opb1_OPB_DBus : std_logic_vector(0 to 31);
  signal opb1_OPB_MGrant : std_logic_vector(0 to 0);
  signal opb1_OPB_RNW : std_logic;
  signal opb1_OPB_Rst : std_logic;
  signal opb1_OPB_errAck : std_logic;
  signal opb1_OPB_retry : std_logic;
  signal opb1_OPB_select : std_logic;
  signal opb1_OPB_seqAddr : std_logic;
  signal opb1_OPB_timeout : std_logic;
  signal opb1_OPB_xferAck : std_logic;
  signal opb1_Sl_DBus : std_logic_vector(0 to 1055);
  signal opb1_Sl_errAck : std_logic_vector(0 to 32);
  signal opb1_Sl_retry : std_logic_vector(0 to 32);
  signal opb1_Sl_toutSup : std_logic_vector(0 to 32);
  signal opb1_Sl_xferAck : std_logic_vector(0 to 32);
  signal pgassign1 : std_logic;
  signal pgassign2 : std_logic_vector(15 downto 0);
  signal rpoco8_testbench_v11_ADC_s_quadc0_adc0_data : std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_ADC_s_quadc0_adc1_data : std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_ADC_s_quadc0_adc2_data : std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_ADC_s_quadc0_adc3_data : std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_ADC_s_quadc0_sync : std_logic;
  signal rpoco8_testbench_v11_ADC_s_quadc0_valid : std_logic;
  signal rpoco8_testbench_v11_ADC_s_quadc1_adc0_data : std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_ADC_s_quadc1_adc1_data : std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_ADC_s_quadc1_adc2_data : std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_ADC_s_quadc1_adc3_data : std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_ADC_s_quadc1_sync : std_logic;
  signal rpoco8_testbench_v11_ADC_s_quadc1_valid : std_logic;
  signal rpoco8_testbench_v11_Sync_arm_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_Sync_sync_pulse_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_Sync_sync_sel_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_aa_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_aa_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_aa_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_aa_real_we : std_logic;
  signal rpoco8_testbench_v11_acc_length_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_acc_num_user_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_adc0_3_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_adc0_3_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_adc0_3_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_adc0_3_we : std_logic;
  signal rpoco8_testbench_v11_adc4_7_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_adc4_7_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_adc4_7_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_adc4_7_we : std_logic;
  signal rpoco8_testbench_v11_ctrl_sw_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_delay_delay_data_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_eq_coeff_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_fft_pol02_imag_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_fft_pol02_imag_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_fft_pol02_imag_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_fft_pol02_imag_we : std_logic;
  signal rpoco8_testbench_v11_fft_pol02_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_fft_pol02_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_fft_pol02_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_fft_pol02_real_we : std_logic;
  signal rpoco8_testbench_v11_iadc0_3_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_iadc0_3_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_iadc0_3_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_iadc0_3_we : std_logic;
  signal rpoco8_testbench_v11_iadc4_7_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_iadc4_7_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_iadc4_7_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_iadc4_7_we : std_logic;
  signal rpoco8_testbench_v11_insel_insel_data_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_led_gateway : std_logic_vector(0 to 0);
  signal rpoco8_testbench_v11_mux_sel_pfb_sync_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_mux_sel_pfb_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_new_raw_capture_trig_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_new_raw_capture_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay1_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay2_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay3_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay4_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay5_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay6_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay7_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay8_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_seed_seed_data_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_walsh_codes_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_walsh_codes_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_walsh_codes_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_walsh_codes_we : std_logic;
  signal rpoco8_testbench_v11_walsh_trig_sel_user_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_walsh_walsh1_gateway : std_logic_vector(0 to 0);
  signal rpoco8_testbench_v11_walsh_walsh2_gateway : std_logic_vector(0 to 0);
  signal rpoco8_testbench_v11_walsh_walsh3_gateway : std_logic_vector(0 to 0);
  signal rpoco8_testbench_v11_walsh_walsh4_gateway : std_logic_vector(0 to 0);
  signal rpoco8_testbench_v11_walsh_walsh5_gateway : std_logic_vector(0 to 0);
  signal rpoco8_testbench_v11_walsh_walsh6_gateway : std_logic_vector(0 to 0);
  signal rpoco8_testbench_v11_walsh_walsh7_gateway : std_logic_vector(0 to 0);
  signal rpoco8_testbench_v11_walsh_walsh8_gateway : std_logic_vector(0 to 0);
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_we : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_addr : std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_data_in : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_data_out : std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_Clk : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_EN : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_Rst : std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_we : std_logic;
  signal sys_reset : std_logic;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of infrastructure_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of reset_block_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of opb0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of epb_opb_bridge_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of epb_infrastructure_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of sys_block_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xsg_core_config_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_adc_s_quadc0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_adc_s_quadc1_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_sync_arm_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_sync_sync_pulse_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_sync_sync_sel_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_aa_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_aa_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_aa_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_acc_length_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_acc_num_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_adc0_3_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_adc0_3_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_adc0_3_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_adc4_7_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_adc4_7_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_adc4_7_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_ctrl_sw_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_delay_delay_data_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_eq_coeff_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_fft_pol02_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_fft_pol02_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_fft_pol02_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_fft_pol02_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_fft_pol02_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_fft_pol02_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_iadc0_3_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_iadc0_3_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_iadc0_3_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_iadc4_7_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_iadc4_7_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_iadc4_7_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_insel_insel_data_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_led_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_mux_sel_pfb_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_mux_sel_pfb_sync_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_new_raw_capture_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_new_raw_capture_trig_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_not_or_not_delay1_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_not_or_not_delay2_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_not_or_not_delay3_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_not_or_not_delay4_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_not_or_not_delay5_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_not_or_not_delay6_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_not_or_not_delay7_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_not_or_not_delay8_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_seed_seed_data_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_walsh_codes_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_walsh_codes_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_walsh_codes_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_walsh_trig_sel_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_walsh_walsh1_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_walsh_walsh2_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_walsh_walsh3_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_walsh_walsh4_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_walsh_walsh5_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_walsh_walsh6_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_walsh_walsh7_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_walsh_walsh8_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_aa_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_aa_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ab_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ab_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ab_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ac_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ac_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ac_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ad_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ad_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ad_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ae_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ae_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ae_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_af_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_af_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_af_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_af_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bb_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bb_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bc_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bc_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bc_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bd_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bd_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bd_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_be_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_be_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_be_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_be_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bf_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bf_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_bf_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_cc_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_cc_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_cd_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_cd_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_cd_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_cg_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_cg_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_cg_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ch_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ch_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_ch_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_dd_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_dd_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_dg_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_dg_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_dg_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_dh_imag_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_dh_real_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rpoco8_testbench_v11_xengine8_muxed_dh_real_wrapper : component is "user_black_box";
  attribute BOX_TYPE of opb1_wrapper : component is "user_black_box";
  attribute BOX_TYPE of opb2opb_bridge_opb1_wrapper : component is "user_black_box";

begin

  -- Internal assignments

  pgassign1 <= '0';
  pgassign2(15 downto 0) <= X"0000";
  net_gnd0 <= '0';
  net_gnd1(0 to 0) <= B"0";
  net_gnd32(0 to 31) <= B"00000000000000000000000000000000";
  net_gnd33(0 to 32) <= B"000000000000000000000000000000000";
  net_vcc1(0 to 0) <= B"1";
  net_vcc32(0 to 31) <= B"11111111111111111111111111111111";
  net_vcc33(0 to 32) <= B"111111111111111111111111111111111";

  infrastructure_inst : infrastructure_inst_wrapper
    port map (
      sys_clk_n => sys_clk_n,
      sys_clk_p => sys_clk_p,
      dly_clk_n => dly_clk_n,
      dly_clk_p => dly_clk_p,
      aux0_clk_n => aux0_clk_n,
      aux0_clk_p => aux0_clk_p,
      aux1_clk_n => aux1_clk_n,
      aux1_clk_p => aux1_clk_p,
      epb_clk_in => epb_clk_in,
      sys_clk => open,
      sys_clk90 => open,
      sys_clk180 => open,
      sys_clk270 => open,
      sys_clk_lock => open,
      sys_clk2x => open,
      sys_clk2x90 => open,
      sys_clk2x180 => open,
      sys_clk2x270 => open,
      dly_clk => open,
      aux0_clk => open,
      aux0_clk90 => open,
      aux0_clk180 => open,
      aux0_clk270 => open,
      aux1_clk => open,
      aux1_clk90 => open,
      aux1_clk180 => open,
      aux1_clk270 => open,
      aux0_clk2x => open,
      aux0_clk2x90 => open,
      aux0_clk2x180 => open,
      aux0_clk2x270 => open,
      epb_clk => epb_clk,
      idelay_rst => sys_reset,
      idelay_rdy => open
    );

  reset_block_inst : reset_block_inst_wrapper
    port map (
      clk => epb_clk,
      async_reset_i => pgassign1,
      reset_i => pgassign1,
      reset_o => sys_reset
    );

  opb0 : opb0_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      SYS_Rst => pgassign1,
      Debug_SYS_Rst => net_gnd0,
      WDT_Rst => net_gnd0,
      M_ABus => opb0_M_ABus,
      M_BE => opb0_M_BE,
      M_beXfer => net_gnd1(0 to 0),
      M_busLock => opb0_M_busLock(0 to 0),
      M_DBus => opb0_M_DBus,
      M_DBusEn => net_gnd1(0 to 0),
      M_DBusEn32_63 => net_vcc1(0 to 0),
      M_dwXfer => net_gnd1(0 to 0),
      M_fwXfer => net_gnd1(0 to 0),
      M_hwXfer => net_gnd1(0 to 0),
      M_request => opb0_M_request(0 to 0),
      M_RNW => opb0_M_RNW(0 to 0),
      M_select => opb0_M_select(0 to 0),
      M_seqAddr => opb0_M_seqAddr(0 to 0),
      Sl_beAck => net_gnd32,
      Sl_DBus => opb0_Sl_DBus,
      Sl_DBusEn => net_vcc32,
      Sl_DBusEn32_63 => net_vcc32,
      Sl_errAck => opb0_Sl_errAck,
      Sl_dwAck => net_gnd32,
      Sl_fwAck => net_gnd32,
      Sl_hwAck => net_gnd32,
      Sl_retry => opb0_Sl_retry,
      Sl_toutSup => opb0_Sl_toutSup,
      Sl_xferAck => opb0_Sl_xferAck,
      OPB_MRequest => open,
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_beXfer => open,
      OPB_beAck => open,
      OPB_busLock => open,
      OPB_rdDBus => open,
      OPB_wrDBus => open,
      OPB_DBus => opb0_OPB_DBus,
      OPB_errAck => opb0_OPB_errAck,
      OPB_dwAck => open,
      OPB_dwXfer => open,
      OPB_fwAck => open,
      OPB_fwXfer => open,
      OPB_hwAck => open,
      OPB_hwXfer => open,
      OPB_MGrant => opb0_OPB_MGrant(0 to 0),
      OPB_pendReq => open,
      OPB_retry => opb0_OPB_retry,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      OPB_timeout => opb0_OPB_timeout,
      OPB_toutSup => open,
      OPB_xferAck => opb0_OPB_xferAck
    );

  epb_opb_bridge_inst : epb_opb_bridge_inst_wrapper
    port map (
      sys_reset => pgassign1,
      epb_data_oe_n => epb_data_oe_n,
      epb_cs_n => epb_cs_n_int,
      epb_oe_n => epb_oe_n_int,
      epb_r_w_n => epb_r_w_n_int,
      epb_be_n => epb_be_n_int,
      epb_addr => epb_addr_int,
      epb_addr_gp => epb_addr_gp_int,
      epb_data_i => epb_data_i,
      epb_data_o => epb_data_o,
      epb_rdy => epb_rdy_buf,
      epb_rdy_oe => epb_rdy_oe,
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      M_request => opb0_M_request(0),
      M_busLock => opb0_M_busLock(0),
      M_select => opb0_M_select(0),
      M_RNW => opb0_M_RNW(0),
      M_BE => opb0_M_BE,
      M_seqAddr => opb0_M_seqAddr(0),
      M_DBus => opb0_M_DBus,
      M_ABus => opb0_M_ABus,
      OPB_MGrant => opb0_OPB_MGrant(0),
      OPB_xferAck => opb0_OPB_xferAck,
      OPB_errAck => opb0_OPB_errAck,
      OPB_retry => opb0_OPB_retry,
      OPB_timeout => opb0_OPB_timeout,
      OPB_DBus => opb0_OPB_DBus
    );

  epb_infrastructure_inst : epb_infrastructure_inst_wrapper
    port map (
      epb_data_buf => epb_data,
      epb_data_oe_n_i => epb_data_oe_n,
      epb_data_out_i => epb_data_o,
      epb_data_in_o => epb_data_i,
      epb_oe_n_buf => epb_oe_n,
      epb_oe_n => epb_oe_n_int,
      epb_cs_n_buf => epb_cs_n,
      epb_cs_n => epb_cs_n_int,
      epb_r_w_n_buf => epb_r_w_n,
      epb_r_w_n => epb_r_w_n_int,
      epb_be_n_buf => epb_be_n,
      epb_be_n => epb_be_n_int,
      epb_addr_buf => epb_addr,
      epb_addr => epb_addr_int,
      epb_addr_gp_buf => epb_addr_gp,
      epb_addr_gp => epb_addr_gp_int,
      epb_rdy_buf => epb_rdy,
      epb_rdy => epb_rdy_buf,
      epb_rdy_oe => epb_rdy_oe
    );

  sys_block_inst : sys_block_inst_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(0 to 31),
      Sl_errAck => opb0_Sl_errAck(0),
      Sl_retry => opb0_Sl_retry(0),
      Sl_toutSup => opb0_Sl_toutSup(0),
      Sl_xferAck => opb0_Sl_xferAck(0),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      soft_reset => open,
      irq_n => ppc_irq_n,
      app_irq => pgassign2,
      fab_clk => adc0_clk
    );

  rpoco8_testbench_v11_XSG_core_config : rpoco8_testbench_v11_xsg_core_config_wrapper
    port map (
      clk => adc0_clk,
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
      rpoco8_testbench_v11_led_gateway => rpoco8_testbench_v11_led_gateway(0),
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
      rpoco8_testbench_v11_walsh_walsh1_gateway => rpoco8_testbench_v11_walsh_walsh1_gateway(0),
      rpoco8_testbench_v11_walsh_walsh2_gateway => rpoco8_testbench_v11_walsh_walsh2_gateway(0),
      rpoco8_testbench_v11_walsh_walsh3_gateway => rpoco8_testbench_v11_walsh_walsh3_gateway(0),
      rpoco8_testbench_v11_walsh_walsh4_gateway => rpoco8_testbench_v11_walsh_walsh4_gateway(0),
      rpoco8_testbench_v11_walsh_walsh5_gateway => rpoco8_testbench_v11_walsh_walsh5_gateway(0),
      rpoco8_testbench_v11_walsh_walsh6_gateway => rpoco8_testbench_v11_walsh_walsh6_gateway(0),
      rpoco8_testbench_v11_walsh_walsh7_gateway => rpoco8_testbench_v11_walsh_walsh7_gateway(0),
      rpoco8_testbench_v11_walsh_walsh8_gateway => rpoco8_testbench_v11_walsh_walsh8_gateway(0),
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

  rpoco8_testbench_v11_ADC_s_quadc0 : rpoco8_testbench_v11_adc_s_quadc0_wrapper
    port map (
      adc0_clk_in_p => quadc0_adc0_clk_in_p,
      adc0_clk_in_n => quadc0_adc0_clk_in_n,
      adc1_clk_in_p => quadc0_adc1_clk_in_p,
      adc1_clk_in_n => quadc0_adc1_clk_in_n,
      adc2_clk_in_p => quadc0_adc2_clk_in_p,
      adc2_clk_in_n => quadc0_adc2_clk_in_n,
      adc3_clk_in_p => quadc0_adc3_clk_in_p,
      adc3_clk_in_n => quadc0_adc3_clk_in_n,
      adc0_data_in_p => quadc0_adc0_data_in_p,
      adc0_data_in_n => quadc0_adc0_data_in_n,
      adc1_data_in_p => quadc0_adc1_data_in_p,
      adc1_data_in_n => quadc0_adc1_data_in_n,
      adc2_data_in_p => quadc0_adc2_data_in_p,
      adc2_data_in_n => quadc0_adc2_data_in_n,
      adc3_data_in_p => quadc0_adc3_data_in_p,
      adc3_data_in_n => quadc0_adc3_data_in_n,
      sync_in_p => quadc0_sync_in_p,
      sync_in_n => quadc0_sync_in_n,
      user_clk => adc0_clk,
      dcm_reset => net_gnd0,
      reset => net_gnd0,
      adc0_clk => adc0_clk,
      adc1_clk => open,
      adc2_clk => open,
      adc3_clk => open,
      adc0_clk90 => adc0_clk90,
      adc0_data => rpoco8_testbench_v11_ADC_s_quadc0_adc0_data,
      adc1_data => rpoco8_testbench_v11_ADC_s_quadc0_adc1_data,
      adc2_data => rpoco8_testbench_v11_ADC_s_quadc0_adc2_data,
      adc3_data => rpoco8_testbench_v11_ADC_s_quadc0_adc3_data,
      valid => rpoco8_testbench_v11_ADC_s_quadc0_valid,
      sync => rpoco8_testbench_v11_ADC_s_quadc0_sync
    );

  rpoco8_testbench_v11_ADC_s_quadc1 : rpoco8_testbench_v11_adc_s_quadc1_wrapper
    port map (
      adc0_clk_in_p => quadc1_adc0_clk_in_p,
      adc0_clk_in_n => quadc1_adc0_clk_in_n,
      adc1_clk_in_p => quadc1_adc1_clk_in_p,
      adc1_clk_in_n => quadc1_adc1_clk_in_n,
      adc2_clk_in_p => quadc1_adc2_clk_in_p,
      adc2_clk_in_n => quadc1_adc2_clk_in_n,
      adc3_clk_in_p => quadc1_adc3_clk_in_p,
      adc3_clk_in_n => quadc1_adc3_clk_in_n,
      adc0_data_in_p => quadc1_adc0_data_in_p,
      adc0_data_in_n => quadc1_adc0_data_in_n,
      adc1_data_in_p => quadc1_adc1_data_in_p,
      adc1_data_in_n => quadc1_adc1_data_in_n,
      adc2_data_in_p => quadc1_adc2_data_in_p,
      adc2_data_in_n => quadc1_adc2_data_in_n,
      adc3_data_in_p => quadc1_adc3_data_in_p,
      adc3_data_in_n => quadc1_adc3_data_in_n,
      sync_in_p => quadc1_sync_in_p,
      sync_in_n => quadc1_sync_in_n,
      user_clk => adc0_clk,
      dcm_reset => net_gnd0,
      reset => net_gnd0,
      adc0_clk => open,
      adc1_clk => open,
      adc2_clk => open,
      adc3_clk => open,
      adc0_clk90 => open,
      adc0_data => rpoco8_testbench_v11_ADC_s_quadc1_adc0_data,
      adc1_data => rpoco8_testbench_v11_ADC_s_quadc1_adc1_data,
      adc2_data => rpoco8_testbench_v11_ADC_s_quadc1_adc2_data,
      adc3_data => rpoco8_testbench_v11_ADC_s_quadc1_adc3_data,
      valid => rpoco8_testbench_v11_ADC_s_quadc1_valid,
      sync => rpoco8_testbench_v11_ADC_s_quadc1_sync
    );

  rpoco8_testbench_v11_Sync_arm : rpoco8_testbench_v11_sync_arm_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(32 to 63),
      Sl_errAck => opb0_Sl_errAck(1),
      Sl_retry => opb0_Sl_retry(1),
      Sl_toutSup => opb0_Sl_toutSup(1),
      Sl_xferAck => opb0_Sl_xferAck(1),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_Sync_arm_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_Sync_sync_pulse : rpoco8_testbench_v11_sync_sync_pulse_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(64 to 95),
      Sl_errAck => opb0_Sl_errAck(2),
      Sl_retry => opb0_Sl_retry(2),
      Sl_toutSup => opb0_Sl_toutSup(2),
      Sl_xferAck => opb0_Sl_xferAck(2),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_Sync_sync_pulse_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_Sync_sync_sel : rpoco8_testbench_v11_sync_sync_sel_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(96 to 127),
      Sl_errAck => opb0_Sl_errAck(3),
      Sl_retry => opb0_Sl_retry(3),
      Sl_toutSup => opb0_Sl_toutSup(3),
      Sl_xferAck => opb0_Sl_xferAck(3),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_Sync_sync_sel_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_aa_real_ramif : rpoco8_testbench_v11_aa_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_aa_real_addr,
      data_in => rpoco8_testbench_v11_aa_real_data_in,
      data_out => rpoco8_testbench_v11_aa_real_data_out,
      we => rpoco8_testbench_v11_aa_real_we
    );

  rpoco8_testbench_v11_aa_real_ramblk : rpoco8_testbench_v11_aa_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_aa_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_aa_real : rpoco8_testbench_v11_aa_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(128 to 159),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(4),
      sln_errack => opb0_Sl_errAck(4),
      sln_toutsup => opb0_Sl_toutSup(4),
      sln_retry => opb0_Sl_retry(4),
      bram_rst => rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_aa_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_acc_length : rpoco8_testbench_v11_acc_length_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(160 to 191),
      Sl_errAck => opb0_Sl_errAck(5),
      Sl_retry => opb0_Sl_retry(5),
      Sl_toutSup => opb0_Sl_toutSup(5),
      Sl_xferAck => opb0_Sl_xferAck(5),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_acc_length_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_acc_num : rpoco8_testbench_v11_acc_num_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(192 to 223),
      Sl_errAck => opb0_Sl_errAck(6),
      Sl_retry => opb0_Sl_retry(6),
      Sl_toutSup => opb0_Sl_toutSup(6),
      Sl_xferAck => opb0_Sl_xferAck(6),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => rpoco8_testbench_v11_acc_num_user_data_in,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_adc0_3_ramif : rpoco8_testbench_v11_adc0_3_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_adc0_3_addr,
      data_in => rpoco8_testbench_v11_adc0_3_data_in,
      data_out => rpoco8_testbench_v11_adc0_3_data_out,
      we => rpoco8_testbench_v11_adc0_3_we
    );

  rpoco8_testbench_v11_adc0_3_ramblk : rpoco8_testbench_v11_adc0_3_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_adc0_3_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_adc0_3 : rpoco8_testbench_v11_adc0_3_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(224 to 255),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(7),
      sln_errack => opb0_Sl_errAck(7),
      sln_toutsup => opb0_Sl_toutSup(7),
      sln_retry => opb0_Sl_retry(7),
      bram_rst => rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_adc0_3_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_adc4_7_ramif : rpoco8_testbench_v11_adc4_7_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_adc4_7_addr,
      data_in => rpoco8_testbench_v11_adc4_7_data_in,
      data_out => rpoco8_testbench_v11_adc4_7_data_out,
      we => rpoco8_testbench_v11_adc4_7_we
    );

  rpoco8_testbench_v11_adc4_7_ramblk : rpoco8_testbench_v11_adc4_7_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_adc4_7_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_adc4_7 : rpoco8_testbench_v11_adc4_7_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(256 to 287),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(8),
      sln_errack => opb0_Sl_errAck(8),
      sln_toutsup => opb0_Sl_toutSup(8),
      sln_retry => opb0_Sl_retry(8),
      bram_rst => rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_adc4_7_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_ctrl_sw : rpoco8_testbench_v11_ctrl_sw_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(288 to 319),
      Sl_errAck => opb0_Sl_errAck(9),
      Sl_retry => opb0_Sl_retry(9),
      Sl_toutSup => opb0_Sl_toutSup(9),
      Sl_xferAck => opb0_Sl_xferAck(9),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_ctrl_sw_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_delay_delay_data : rpoco8_testbench_v11_delay_delay_data_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(320 to 351),
      Sl_errAck => opb0_Sl_errAck(10),
      Sl_retry => opb0_Sl_retry(10),
      Sl_toutSup => opb0_Sl_toutSup(10),
      Sl_xferAck => opb0_Sl_xferAck(10),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_delay_delay_data_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_eq_coeff : rpoco8_testbench_v11_eq_coeff_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(352 to 383),
      Sl_errAck => opb0_Sl_errAck(11),
      Sl_retry => opb0_Sl_retry(11),
      Sl_toutSup => opb0_Sl_toutSup(11),
      Sl_xferAck => opb0_Sl_xferAck(11),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_eq_coeff_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_fft_pol02_imag_ramif : rpoco8_testbench_v11_fft_pol02_imag_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_fft_pol02_imag_addr,
      data_in => rpoco8_testbench_v11_fft_pol02_imag_data_in,
      data_out => rpoco8_testbench_v11_fft_pol02_imag_data_out,
      we => rpoco8_testbench_v11_fft_pol02_imag_we
    );

  rpoco8_testbench_v11_fft_pol02_imag_ramblk : rpoco8_testbench_v11_fft_pol02_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_fft_pol02_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_fft_pol02_imag : rpoco8_testbench_v11_fft_pol02_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(384 to 415),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(12),
      sln_errack => opb0_Sl_errAck(12),
      sln_toutsup => opb0_Sl_toutSup(12),
      sln_retry => opb0_Sl_retry(12),
      bram_rst => rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_fft_pol02_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_fft_pol02_real_ramif : rpoco8_testbench_v11_fft_pol02_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_fft_pol02_real_addr,
      data_in => rpoco8_testbench_v11_fft_pol02_real_data_in,
      data_out => rpoco8_testbench_v11_fft_pol02_real_data_out,
      we => rpoco8_testbench_v11_fft_pol02_real_we
    );

  rpoco8_testbench_v11_fft_pol02_real_ramblk : rpoco8_testbench_v11_fft_pol02_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_fft_pol02_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_fft_pol02_real : rpoco8_testbench_v11_fft_pol02_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(416 to 447),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(13),
      sln_errack => opb0_Sl_errAck(13),
      sln_toutsup => opb0_Sl_toutSup(13),
      sln_retry => opb0_Sl_retry(13),
      bram_rst => rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_fft_pol02_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_iadc0_3_ramif : rpoco8_testbench_v11_iadc0_3_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_iadc0_3_addr,
      data_in => rpoco8_testbench_v11_iadc0_3_data_in,
      data_out => rpoco8_testbench_v11_iadc0_3_data_out,
      we => rpoco8_testbench_v11_iadc0_3_we
    );

  rpoco8_testbench_v11_iadc0_3_ramblk : rpoco8_testbench_v11_iadc0_3_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_iadc0_3_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_iadc0_3 : rpoco8_testbench_v11_iadc0_3_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(448 to 479),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(14),
      sln_errack => opb0_Sl_errAck(14),
      sln_toutsup => opb0_Sl_toutSup(14),
      sln_retry => opb0_Sl_retry(14),
      bram_rst => rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_iadc0_3_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_iadc4_7_ramif : rpoco8_testbench_v11_iadc4_7_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_iadc4_7_addr,
      data_in => rpoco8_testbench_v11_iadc4_7_data_in,
      data_out => rpoco8_testbench_v11_iadc4_7_data_out,
      we => rpoco8_testbench_v11_iadc4_7_we
    );

  rpoco8_testbench_v11_iadc4_7_ramblk : rpoco8_testbench_v11_iadc4_7_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_iadc4_7_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_iadc4_7 : rpoco8_testbench_v11_iadc4_7_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(480 to 511),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(15),
      sln_errack => opb0_Sl_errAck(15),
      sln_toutsup => opb0_Sl_toutSup(15),
      sln_retry => opb0_Sl_retry(15),
      bram_rst => rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_iadc4_7_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_insel_insel_data : rpoco8_testbench_v11_insel_insel_data_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(512 to 543),
      Sl_errAck => opb0_Sl_errAck(16),
      Sl_retry => opb0_Sl_retry(16),
      Sl_toutSup => opb0_Sl_toutSup(16),
      Sl_xferAck => opb0_Sl_xferAck(16),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_insel_insel_data_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_led : rpoco8_testbench_v11_led_wrapper
    port map (
      gateway => rpoco8_testbench_v11_led_gateway(0 to 0),
      io_pad => rpoco8_testbench_v11_led_ext(0 to 0),
      clk => adc0_clk,
      clk90 => adc0_clk90
    );

  rpoco8_testbench_v11_mux_sel_pfb : rpoco8_testbench_v11_mux_sel_pfb_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(544 to 575),
      Sl_errAck => opb0_Sl_errAck(17),
      Sl_retry => opb0_Sl_retry(17),
      Sl_toutSup => opb0_Sl_toutSup(17),
      Sl_xferAck => opb0_Sl_xferAck(17),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_mux_sel_pfb_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_mux_sel_pfb_sync : rpoco8_testbench_v11_mux_sel_pfb_sync_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(576 to 607),
      Sl_errAck => opb0_Sl_errAck(18),
      Sl_retry => opb0_Sl_retry(18),
      Sl_toutSup => opb0_Sl_toutSup(18),
      Sl_xferAck => opb0_Sl_xferAck(18),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_mux_sel_pfb_sync_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_new_raw_capture : rpoco8_testbench_v11_new_raw_capture_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(608 to 639),
      Sl_errAck => opb0_Sl_errAck(19),
      Sl_retry => opb0_Sl_retry(19),
      Sl_toutSup => opb0_Sl_toutSup(19),
      Sl_xferAck => opb0_Sl_xferAck(19),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_new_raw_capture_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_new_raw_capture_trig : rpoco8_testbench_v11_new_raw_capture_trig_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(640 to 671),
      Sl_errAck => opb0_Sl_errAck(20),
      Sl_retry => opb0_Sl_retry(20),
      Sl_toutSup => opb0_Sl_toutSup(20),
      Sl_xferAck => opb0_Sl_xferAck(20),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_new_raw_capture_trig_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_not_or_not_delay1 : rpoco8_testbench_v11_not_or_not_delay1_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(672 to 703),
      Sl_errAck => opb0_Sl_errAck(21),
      Sl_retry => opb0_Sl_retry(21),
      Sl_toutSup => opb0_Sl_toutSup(21),
      Sl_xferAck => opb0_Sl_xferAck(21),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_not_or_not_delay1_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_not_or_not_delay2 : rpoco8_testbench_v11_not_or_not_delay2_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(704 to 735),
      Sl_errAck => opb0_Sl_errAck(22),
      Sl_retry => opb0_Sl_retry(22),
      Sl_toutSup => opb0_Sl_toutSup(22),
      Sl_xferAck => opb0_Sl_xferAck(22),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_not_or_not_delay2_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_not_or_not_delay3 : rpoco8_testbench_v11_not_or_not_delay3_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(736 to 767),
      Sl_errAck => opb0_Sl_errAck(23),
      Sl_retry => opb0_Sl_retry(23),
      Sl_toutSup => opb0_Sl_toutSup(23),
      Sl_xferAck => opb0_Sl_xferAck(23),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_not_or_not_delay3_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_not_or_not_delay4 : rpoco8_testbench_v11_not_or_not_delay4_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(768 to 799),
      Sl_errAck => opb0_Sl_errAck(24),
      Sl_retry => opb0_Sl_retry(24),
      Sl_toutSup => opb0_Sl_toutSup(24),
      Sl_xferAck => opb0_Sl_xferAck(24),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_not_or_not_delay4_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_not_or_not_delay5 : rpoco8_testbench_v11_not_or_not_delay5_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(800 to 831),
      Sl_errAck => opb0_Sl_errAck(25),
      Sl_retry => opb0_Sl_retry(25),
      Sl_toutSup => opb0_Sl_toutSup(25),
      Sl_xferAck => opb0_Sl_xferAck(25),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_not_or_not_delay5_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_not_or_not_delay6 : rpoco8_testbench_v11_not_or_not_delay6_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(832 to 863),
      Sl_errAck => opb0_Sl_errAck(26),
      Sl_retry => opb0_Sl_retry(26),
      Sl_toutSup => opb0_Sl_toutSup(26),
      Sl_xferAck => opb0_Sl_xferAck(26),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_not_or_not_delay6_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_not_or_not_delay7 : rpoco8_testbench_v11_not_or_not_delay7_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(864 to 895),
      Sl_errAck => opb0_Sl_errAck(27),
      Sl_retry => opb0_Sl_retry(27),
      Sl_toutSup => opb0_Sl_toutSup(27),
      Sl_xferAck => opb0_Sl_xferAck(27),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_not_or_not_delay7_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_not_or_not_delay8 : rpoco8_testbench_v11_not_or_not_delay8_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(896 to 927),
      Sl_errAck => opb0_Sl_errAck(28),
      Sl_retry => opb0_Sl_retry(28),
      Sl_toutSup => opb0_Sl_toutSup(28),
      Sl_xferAck => opb0_Sl_xferAck(28),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_not_or_not_delay8_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_seed_seed_data : rpoco8_testbench_v11_seed_seed_data_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(928 to 959),
      Sl_errAck => opb0_Sl_errAck(29),
      Sl_retry => opb0_Sl_retry(29),
      Sl_toutSup => opb0_Sl_toutSup(29),
      Sl_xferAck => opb0_Sl_xferAck(29),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_seed_seed_data_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_walsh_codes_ramif : rpoco8_testbench_v11_walsh_codes_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_walsh_codes_addr,
      data_in => rpoco8_testbench_v11_walsh_codes_data_in,
      data_out => rpoco8_testbench_v11_walsh_codes_data_out,
      we => rpoco8_testbench_v11_walsh_codes_we
    );

  rpoco8_testbench_v11_walsh_codes_ramblk : rpoco8_testbench_v11_walsh_codes_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_walsh_codes_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_walsh_codes : rpoco8_testbench_v11_walsh_codes_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(960 to 991),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(30),
      sln_errack => opb0_Sl_errAck(30),
      sln_toutsup => opb0_Sl_toutSup(30),
      sln_retry => opb0_Sl_retry(30),
      bram_rst => rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_walsh_codes_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_walsh_trig_sel : rpoco8_testbench_v11_walsh_trig_sel_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(0 to 31),
      Sl_errAck => opb1_Sl_errAck(0),
      Sl_retry => opb1_Sl_retry(0),
      Sl_toutSup => opb1_Sl_toutSup(0),
      Sl_xferAck => opb1_Sl_xferAck(0),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_out => rpoco8_testbench_v11_walsh_trig_sel_user_data_out,
      user_clk => adc0_clk
    );

  rpoco8_testbench_v11_walsh_walsh1 : rpoco8_testbench_v11_walsh_walsh1_wrapper
    port map (
      gateway => rpoco8_testbench_v11_walsh_walsh1_gateway(0 to 0),
      io_pad => rpoco8_testbench_v11_walsh_walsh1_ext(0 to 0),
      clk => adc0_clk,
      clk90 => adc0_clk90
    );

  rpoco8_testbench_v11_walsh_walsh2 : rpoco8_testbench_v11_walsh_walsh2_wrapper
    port map (
      gateway => rpoco8_testbench_v11_walsh_walsh2_gateway(0 to 0),
      io_pad => rpoco8_testbench_v11_walsh_walsh2_ext(0 to 0),
      clk => adc0_clk,
      clk90 => adc0_clk90
    );

  rpoco8_testbench_v11_walsh_walsh3 : rpoco8_testbench_v11_walsh_walsh3_wrapper
    port map (
      gateway => rpoco8_testbench_v11_walsh_walsh3_gateway(0 to 0),
      io_pad => rpoco8_testbench_v11_walsh_walsh3_ext(0 to 0),
      clk => adc0_clk,
      clk90 => adc0_clk90
    );

  rpoco8_testbench_v11_walsh_walsh4 : rpoco8_testbench_v11_walsh_walsh4_wrapper
    port map (
      gateway => rpoco8_testbench_v11_walsh_walsh4_gateway(0 to 0),
      io_pad => rpoco8_testbench_v11_walsh_walsh4_ext(0 to 0),
      clk => adc0_clk,
      clk90 => adc0_clk90
    );

  rpoco8_testbench_v11_walsh_walsh5 : rpoco8_testbench_v11_walsh_walsh5_wrapper
    port map (
      gateway => rpoco8_testbench_v11_walsh_walsh5_gateway(0 to 0),
      io_pad => rpoco8_testbench_v11_walsh_walsh5_ext(0 to 0),
      clk => adc0_clk,
      clk90 => adc0_clk90
    );

  rpoco8_testbench_v11_walsh_walsh6 : rpoco8_testbench_v11_walsh_walsh6_wrapper
    port map (
      gateway => rpoco8_testbench_v11_walsh_walsh6_gateway(0 to 0),
      io_pad => rpoco8_testbench_v11_walsh_walsh6_ext(0 to 0),
      clk => adc0_clk,
      clk90 => adc0_clk90
    );

  rpoco8_testbench_v11_walsh_walsh7 : rpoco8_testbench_v11_walsh_walsh7_wrapper
    port map (
      gateway => rpoco8_testbench_v11_walsh_walsh7_gateway(0 to 0),
      io_pad => rpoco8_testbench_v11_walsh_walsh7_ext(0 to 0),
      clk => adc0_clk,
      clk90 => adc0_clk90
    );

  rpoco8_testbench_v11_walsh_walsh8 : rpoco8_testbench_v11_walsh_walsh8_wrapper
    port map (
      gateway => rpoco8_testbench_v11_walsh_walsh8_gateway(0 to 0),
      io_pad => rpoco8_testbench_v11_walsh_walsh8_ext(0 to 0),
      clk => adc0_clk,
      clk90 => adc0_clk90
    );

  rpoco8_testbench_v11_xengine8_muxed_aa_real_ramif : rpoco8_testbench_v11_xengine8_muxed_aa_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_aa_real_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_aa_real_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_aa_real_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_aa_real_we
    );

  rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk : rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_aa_real : rpoco8_testbench_v11_xengine8_muxed_aa_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(32 to 63),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(1),
      sln_errack => opb1_Sl_errAck(1),
      sln_toutsup => opb1_Sl_toutSup(1),
      sln_retry => opb1_Sl_retry(1),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_aa_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramif : rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_ab_imag_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_ab_imag_we
    );

  rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk : rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ab_imag : rpoco8_testbench_v11_xengine8_muxed_ab_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(64 to 95),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(2),
      sln_errack => opb1_Sl_errAck(2),
      sln_toutsup => opb1_Sl_toutSup(2),
      sln_retry => opb1_Sl_retry(2),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ab_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ab_real_ramif : rpoco8_testbench_v11_xengine8_muxed_ab_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_ab_real_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_ab_real_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_ab_real_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_ab_real_we
    );

  rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk : rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ab_real : rpoco8_testbench_v11_xengine8_muxed_ab_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(96 to 127),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(3),
      sln_errack => opb1_Sl_errAck(3),
      sln_toutsup => opb1_Sl_toutSup(3),
      sln_retry => opb1_Sl_retry(3),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ab_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramif : rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_ac_imag_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_ac_imag_we
    );

  rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk : rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ac_imag : rpoco8_testbench_v11_xengine8_muxed_ac_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(128 to 159),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(4),
      sln_errack => opb1_Sl_errAck(4),
      sln_toutsup => opb1_Sl_toutSup(4),
      sln_retry => opb1_Sl_retry(4),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ac_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ac_real_ramif : rpoco8_testbench_v11_xengine8_muxed_ac_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_ac_real_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_ac_real_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_ac_real_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_ac_real_we
    );

  rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk : rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ac_real : rpoco8_testbench_v11_xengine8_muxed_ac_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(160 to 191),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(5),
      sln_errack => opb1_Sl_errAck(5),
      sln_toutsup => opb1_Sl_toutSup(5),
      sln_retry => opb1_Sl_retry(5),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ac_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramif : rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_ad_imag_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_ad_imag_we
    );

  rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk : rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ad_imag : rpoco8_testbench_v11_xengine8_muxed_ad_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(192 to 223),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(6),
      sln_errack => opb1_Sl_errAck(6),
      sln_toutsup => opb1_Sl_toutSup(6),
      sln_retry => opb1_Sl_retry(6),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ad_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ad_real_ramif : rpoco8_testbench_v11_xengine8_muxed_ad_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_ad_real_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_ad_real_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_ad_real_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_ad_real_we
    );

  rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk : rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ad_real : rpoco8_testbench_v11_xengine8_muxed_ad_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(224 to 255),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(7),
      sln_errack => opb1_Sl_errAck(7),
      sln_toutsup => opb1_Sl_toutSup(7),
      sln_retry => opb1_Sl_retry(7),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ad_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramif : rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_ae_imag_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_ae_imag_we
    );

  rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk : rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ae_imag : rpoco8_testbench_v11_xengine8_muxed_ae_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(256 to 287),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(8),
      sln_errack => opb1_Sl_errAck(8),
      sln_toutsup => opb1_Sl_toutSup(8),
      sln_retry => opb1_Sl_retry(8),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ae_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ae_real_ramif : rpoco8_testbench_v11_xengine8_muxed_ae_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_ae_real_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_ae_real_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_ae_real_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_ae_real_we
    );

  rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk : rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ae_real : rpoco8_testbench_v11_xengine8_muxed_ae_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(288 to 319),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(9),
      sln_errack => opb1_Sl_errAck(9),
      sln_toutsup => opb1_Sl_toutSup(9),
      sln_retry => opb1_Sl_retry(9),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ae_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_af_imag_ramif : rpoco8_testbench_v11_xengine8_muxed_af_imag_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_af_imag_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_af_imag_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_af_imag_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_af_imag_we
    );

  rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk : rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_af_imag : rpoco8_testbench_v11_xengine8_muxed_af_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(320 to 351),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(10),
      sln_errack => opb1_Sl_errAck(10),
      sln_toutsup => opb1_Sl_toutSup(10),
      sln_retry => opb1_Sl_retry(10),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_af_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_af_real_ramif : rpoco8_testbench_v11_xengine8_muxed_af_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_af_real_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_af_real_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_af_real_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_af_real_we
    );

  rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk : rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_af_real : rpoco8_testbench_v11_xengine8_muxed_af_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(352 to 383),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(11),
      sln_errack => opb1_Sl_errAck(11),
      sln_toutsup => opb1_Sl_toutSup(11),
      sln_retry => opb1_Sl_retry(11),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_af_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_bb_real_ramif : rpoco8_testbench_v11_xengine8_muxed_bb_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_bb_real_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_bb_real_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_bb_real_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_bb_real_we
    );

  rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk : rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_bb_real : rpoco8_testbench_v11_xengine8_muxed_bb_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(384 to 415),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(12),
      sln_errack => opb1_Sl_errAck(12),
      sln_toutsup => opb1_Sl_toutSup(12),
      sln_retry => opb1_Sl_retry(12),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_bb_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramif : rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_bc_imag_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_bc_imag_we
    );

  rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk : rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_bc_imag : rpoco8_testbench_v11_xengine8_muxed_bc_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(416 to 447),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(13),
      sln_errack => opb1_Sl_errAck(13),
      sln_toutsup => opb1_Sl_toutSup(13),
      sln_retry => opb1_Sl_retry(13),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_bc_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_bc_real_ramif : rpoco8_testbench_v11_xengine8_muxed_bc_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_bc_real_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_bc_real_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_bc_real_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_bc_real_we
    );

  rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk : rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_bc_real : rpoco8_testbench_v11_xengine8_muxed_bc_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(448 to 479),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(14),
      sln_errack => opb1_Sl_errAck(14),
      sln_toutsup => opb1_Sl_toutSup(14),
      sln_retry => opb1_Sl_retry(14),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_bc_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramif : rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_bd_imag_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_bd_imag_we
    );

  rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk : rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_bd_imag : rpoco8_testbench_v11_xengine8_muxed_bd_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(480 to 511),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(15),
      sln_errack => opb1_Sl_errAck(15),
      sln_toutsup => opb1_Sl_toutSup(15),
      sln_retry => opb1_Sl_retry(15),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_bd_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_bd_real_ramif : rpoco8_testbench_v11_xengine8_muxed_bd_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_bd_real_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_bd_real_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_bd_real_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_bd_real_we
    );

  rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk : rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_bd_real : rpoco8_testbench_v11_xengine8_muxed_bd_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(512 to 543),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(16),
      sln_errack => opb1_Sl_errAck(16),
      sln_toutsup => opb1_Sl_toutSup(16),
      sln_retry => opb1_Sl_retry(16),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_bd_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_be_imag_ramif : rpoco8_testbench_v11_xengine8_muxed_be_imag_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_be_imag_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_be_imag_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_be_imag_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_be_imag_we
    );

  rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk : rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_be_imag : rpoco8_testbench_v11_xengine8_muxed_be_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(544 to 575),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(17),
      sln_errack => opb1_Sl_errAck(17),
      sln_toutsup => opb1_Sl_toutSup(17),
      sln_retry => opb1_Sl_retry(17),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_be_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_be_real_ramif : rpoco8_testbench_v11_xengine8_muxed_be_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_be_real_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_be_real_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_be_real_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_be_real_we
    );

  rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk : rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_be_real : rpoco8_testbench_v11_xengine8_muxed_be_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(576 to 607),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(18),
      sln_errack => opb1_Sl_errAck(18),
      sln_toutsup => opb1_Sl_toutSup(18),
      sln_retry => opb1_Sl_retry(18),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_be_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramif : rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_bf_imag_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_bf_imag_we
    );

  rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk : rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_bf_imag : rpoco8_testbench_v11_xengine8_muxed_bf_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(608 to 639),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(19),
      sln_errack => opb1_Sl_errAck(19),
      sln_toutsup => opb1_Sl_toutSup(19),
      sln_retry => opb1_Sl_retry(19),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_bf_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_bf_real_ramif : rpoco8_testbench_v11_xengine8_muxed_bf_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_bf_real_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_bf_real_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_bf_real_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_bf_real_we
    );

  rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk : rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_bf_real : rpoco8_testbench_v11_xengine8_muxed_bf_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(640 to 671),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(20),
      sln_errack => opb1_Sl_errAck(20),
      sln_toutsup => opb1_Sl_toutSup(20),
      sln_retry => opb1_Sl_retry(20),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_bf_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_cc_real_ramif : rpoco8_testbench_v11_xengine8_muxed_cc_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_cc_real_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_cc_real_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_cc_real_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_cc_real_we
    );

  rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk : rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_cc_real : rpoco8_testbench_v11_xengine8_muxed_cc_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(672 to 703),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(21),
      sln_errack => opb1_Sl_errAck(21),
      sln_toutsup => opb1_Sl_toutSup(21),
      sln_retry => opb1_Sl_retry(21),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_cc_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramif : rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_cd_imag_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_cd_imag_we
    );

  rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk : rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_cd_imag : rpoco8_testbench_v11_xengine8_muxed_cd_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(704 to 735),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(22),
      sln_errack => opb1_Sl_errAck(22),
      sln_toutsup => opb1_Sl_toutSup(22),
      sln_retry => opb1_Sl_retry(22),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_cd_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_cd_real_ramif : rpoco8_testbench_v11_xengine8_muxed_cd_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_cd_real_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_cd_real_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_cd_real_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_cd_real_we
    );

  rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk : rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_cd_real : rpoco8_testbench_v11_xengine8_muxed_cd_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(736 to 767),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(23),
      sln_errack => opb1_Sl_errAck(23),
      sln_toutsup => opb1_Sl_toutSup(23),
      sln_retry => opb1_Sl_retry(23),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_cd_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramif : rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_cg_imag_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_cg_imag_we
    );

  rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk : rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_cg_imag : rpoco8_testbench_v11_xengine8_muxed_cg_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(768 to 799),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(24),
      sln_errack => opb1_Sl_errAck(24),
      sln_toutsup => opb1_Sl_toutSup(24),
      sln_retry => opb1_Sl_retry(24),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_cg_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_cg_real_ramif : rpoco8_testbench_v11_xengine8_muxed_cg_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_cg_real_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_cg_real_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_cg_real_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_cg_real_we
    );

  rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk : rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_cg_real : rpoco8_testbench_v11_xengine8_muxed_cg_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(800 to 831),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(25),
      sln_errack => opb1_Sl_errAck(25),
      sln_toutsup => opb1_Sl_toutSup(25),
      sln_retry => opb1_Sl_retry(25),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_cg_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramif : rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_ch_imag_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_ch_imag_we
    );

  rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk : rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ch_imag : rpoco8_testbench_v11_xengine8_muxed_ch_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(832 to 863),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(26),
      sln_errack => opb1_Sl_errAck(26),
      sln_toutsup => opb1_Sl_toutSup(26),
      sln_retry => opb1_Sl_retry(26),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ch_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ch_real_ramif : rpoco8_testbench_v11_xengine8_muxed_ch_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_ch_real_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_ch_real_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_ch_real_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_ch_real_we
    );

  rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk : rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_ch_real : rpoco8_testbench_v11_xengine8_muxed_ch_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(864 to 895),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(27),
      sln_errack => opb1_Sl_errAck(27),
      sln_toutsup => opb1_Sl_toutSup(27),
      sln_retry => opb1_Sl_retry(27),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_ch_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_dd_real_ramif : rpoco8_testbench_v11_xengine8_muxed_dd_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_dd_real_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_dd_real_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_dd_real_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_dd_real_we
    );

  rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk : rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_dd_real : rpoco8_testbench_v11_xengine8_muxed_dd_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(896 to 927),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(28),
      sln_errack => opb1_Sl_errAck(28),
      sln_toutsup => opb1_Sl_toutSup(28),
      sln_retry => opb1_Sl_retry(28),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_dd_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramif : rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_dg_imag_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_dg_imag_we
    );

  rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk : rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_dg_imag : rpoco8_testbench_v11_xengine8_muxed_dg_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(928 to 959),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(29),
      sln_errack => opb1_Sl_errAck(29),
      sln_toutsup => opb1_Sl_toutSup(29),
      sln_retry => opb1_Sl_retry(29),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_dg_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_dg_real_ramif : rpoco8_testbench_v11_xengine8_muxed_dg_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_dg_real_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_dg_real_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_dg_real_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_dg_real_we
    );

  rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk : rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_dg_real : rpoco8_testbench_v11_xengine8_muxed_dg_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(960 to 991),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(30),
      sln_errack => opb1_Sl_errAck(30),
      sln_toutsup => opb1_Sl_toutSup(30),
      sln_retry => opb1_Sl_retry(30),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_dg_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramif : rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_dh_imag_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_dh_imag_we
    );

  rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk : rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_dh_imag : rpoco8_testbench_v11_xengine8_muxed_dh_imag_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(992 to 1023),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(31),
      sln_errack => opb1_Sl_errAck(31),
      sln_toutsup => opb1_Sl_toutSup(31),
      sln_retry => opb1_Sl_retry(31),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_dh_imag_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_dh_real_ramif : rpoco8_testbench_v11_xengine8_muxed_dh_real_ramif_wrapper
    port map (
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_Dout,
      clk_in => adc0_clk,
      addr => rpoco8_testbench_v11_xengine8_muxed_dh_real_addr,
      data_in => rpoco8_testbench_v11_xengine8_muxed_dh_real_data_in,
      data_out => rpoco8_testbench_v11_xengine8_muxed_dh_real_data_out,
      we => rpoco8_testbench_v11_xengine8_muxed_dh_real_we
    );

  rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk : rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_wrapper
    port map (
      BRAM_Rst_A => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_Dout
    );

  rpoco8_testbench_v11_xengine8_muxed_dh_real : rpoco8_testbench_v11_xengine8_muxed_dh_real_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(1024 to 1055),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(32),
      sln_errack => opb1_Sl_errAck(32),
      sln_toutsup => opb1_Sl_toutSup(32),
      sln_retry => opb1_Sl_retry(32),
      bram_rst => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_Rst,
      bram_clk => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_Clk,
      bram_en => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_EN,
      bram_wen => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_WEN,
      bram_addr => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_Addr,
      bram_din => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_Din,
      bram_dout => rpoco8_testbench_v11_xengine8_muxed_dh_real_ramblk_portb_BRAM_Dout
    );

  opb1 : opb1_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      SYS_Rst => sys_reset,
      Debug_SYS_Rst => net_gnd0,
      WDT_Rst => net_gnd0,
      M_ABus => opb1_M_ABus,
      M_BE => opb1_M_BE,
      M_beXfer => net_gnd1(0 to 0),
      M_busLock => opb1_M_busLock(0 to 0),
      M_DBus => opb1_M_DBus,
      M_DBusEn => net_gnd1(0 to 0),
      M_DBusEn32_63 => net_vcc1(0 to 0),
      M_dwXfer => net_gnd1(0 to 0),
      M_fwXfer => net_gnd1(0 to 0),
      M_hwXfer => net_gnd1(0 to 0),
      M_request => opb1_M_request(0 to 0),
      M_RNW => opb1_M_RNW(0 to 0),
      M_select => opb1_M_select(0 to 0),
      M_seqAddr => opb1_M_seqAddr(0 to 0),
      Sl_beAck => net_gnd33,
      Sl_DBus => opb1_Sl_DBus,
      Sl_DBusEn => net_vcc33,
      Sl_DBusEn32_63 => net_vcc33,
      Sl_errAck => opb1_Sl_errAck,
      Sl_dwAck => net_gnd33,
      Sl_fwAck => net_gnd33,
      Sl_hwAck => net_gnd33,
      Sl_retry => opb1_Sl_retry,
      Sl_toutSup => opb1_Sl_toutSup,
      Sl_xferAck => opb1_Sl_xferAck,
      OPB_MRequest => open,
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_beXfer => open,
      OPB_beAck => open,
      OPB_busLock => open,
      OPB_rdDBus => open,
      OPB_wrDBus => open,
      OPB_DBus => opb1_OPB_DBus,
      OPB_errAck => opb1_OPB_errAck,
      OPB_dwAck => open,
      OPB_dwXfer => open,
      OPB_fwAck => open,
      OPB_fwXfer => open,
      OPB_hwAck => open,
      OPB_hwXfer => open,
      OPB_MGrant => opb1_OPB_MGrant(0 to 0),
      OPB_pendReq => open,
      OPB_retry => opb1_OPB_retry,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      OPB_timeout => opb1_OPB_timeout,
      OPB_toutSup => open,
      OPB_xferAck => opb1_OPB_xferAck
    );

  opb2opb_bridge_opb1 : opb2opb_bridge_opb1_wrapper
    port map (
      MOPB_Clk => epb_clk,
      SOPB_Clk => epb_clk,
      MOPB_Rst => opb1_OPB_Rst,
      SOPB_Rst => opb0_OPB_Rst,
      SOPB_ABus => opb0_OPB_ABus,
      SOPB_BE => opb0_OPB_BE,
      SOPB_DBus => opb0_OPB_DBus,
      SOPB_RNW => opb0_OPB_RNW,
      SOPB_select => opb0_OPB_select,
      SOPB_seqAddr => opb0_OPB_seqAddr,
      Sl_DBus => opb0_Sl_DBus(992 to 1023),
      Sl_errAck => opb0_Sl_errAck(31),
      Sl_retry => opb0_Sl_retry(31),
      Sl_toutSup => opb0_Sl_toutSup(31),
      Sl_xferAck => opb0_Sl_xferAck(31),
      M_ABus => opb1_M_ABus,
      M_BE => opb1_M_BE,
      M_busLock => opb1_M_busLock(0),
      M_DBus => opb1_M_DBus,
      M_request => opb1_M_request(0),
      M_RNW => opb1_M_RNW(0),
      M_select => opb1_M_select(0),
      M_seqAddr => opb1_M_seqAddr(0),
      MOPB_DBus => opb1_OPB_DBus,
      MOPB_errAck => opb1_OPB_errAck,
      MOPB_MGrant => opb1_OPB_MGrant(0),
      MOPB_retry => opb1_OPB_retry,
      MOPB_timeout => opb1_OPB_timeout,
      MOPB_xferAck => opb1_OPB_xferAck
    );

end architecture STRUCTURE;

