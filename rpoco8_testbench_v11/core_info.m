% rpoco8_testbench_v11/XSG core config
rpoco8_testbench_v11_XSG_core_config_type         = 'xps_xsg';
rpoco8_testbench_v11_XSG_core_config_param        = '';

% rpoco8_testbench_v11/ADC's/quadc0
rpoco8_testbench_v11_ADC_s_quadc0_type         = 'xps_quadc';
rpoco8_testbench_v11_ADC_s_quadc0_param        = '';
rpoco8_testbench_v11_ADC_s_quadc0_ip_name      = 'quadc_interface';

% rpoco8_testbench_v11/ADC's/quadc1
rpoco8_testbench_v11_ADC_s_quadc1_type         = 'xps_quadc';
rpoco8_testbench_v11_ADC_s_quadc1_param        = '';
rpoco8_testbench_v11_ADC_s_quadc1_ip_name      = 'quadc_interface';

% rpoco8_testbench_v11/Sync/arm
rpoco8_testbench_v11_Sync_arm_type         = 'xps_sw_reg';
rpoco8_testbench_v11_Sync_arm_param        = 'in';
rpoco8_testbench_v11_Sync_arm_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_Sync_arm_addr_start   = hex2dec('01000000');
rpoco8_testbench_v11_Sync_arm_addr_end     = hex2dec('010000FF');

% rpoco8_testbench_v11/Sync/sync_pulse
rpoco8_testbench_v11_Sync_sync_pulse_type         = 'xps_sw_reg';
rpoco8_testbench_v11_Sync_sync_pulse_param        = 'in';
rpoco8_testbench_v11_Sync_sync_pulse_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_Sync_sync_pulse_addr_start   = hex2dec('01000100');
rpoco8_testbench_v11_Sync_sync_pulse_addr_end     = hex2dec('010001FF');

% rpoco8_testbench_v11/Sync/sync_sel
rpoco8_testbench_v11_Sync_sync_sel_type         = 'xps_sw_reg';
rpoco8_testbench_v11_Sync_sync_sel_param        = 'in';
rpoco8_testbench_v11_Sync_sync_sel_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_Sync_sync_sel_addr_start   = hex2dec('01000200');
rpoco8_testbench_v11_Sync_sync_sel_addr_end     = hex2dec('010002FF');

% rpoco8_testbench_v11/aa/real
rpoco8_testbench_v11_aa_real_type         = 'xps_bram';
rpoco8_testbench_v11_aa_real_param        = '2048';
rpoco8_testbench_v11_aa_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_aa_real_addr_start   = hex2dec('01002000');
rpoco8_testbench_v11_aa_real_addr_end     = hex2dec('01003FFF');

% rpoco8_testbench_v11/acc_length
rpoco8_testbench_v11_acc_length_type         = 'xps_sw_reg';
rpoco8_testbench_v11_acc_length_param        = 'in';
rpoco8_testbench_v11_acc_length_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_acc_length_addr_start   = hex2dec('01004000');
rpoco8_testbench_v11_acc_length_addr_end     = hex2dec('010040FF');

% rpoco8_testbench_v11/acc_num
rpoco8_testbench_v11_acc_num_type         = 'xps_sw_reg';
rpoco8_testbench_v11_acc_num_param        = 'out';
rpoco8_testbench_v11_acc_num_ip_name      = 'opb_register_simulink2ppc';
rpoco8_testbench_v11_acc_num_addr_start   = hex2dec('01004100');
rpoco8_testbench_v11_acc_num_addr_end     = hex2dec('010041FF');

% rpoco8_testbench_v11/adc0_3
rpoco8_testbench_v11_adc0_3_type         = 'xps_bram';
rpoco8_testbench_v11_adc0_3_param        = '2048';
rpoco8_testbench_v11_adc0_3_ip_name      = 'bram_if';
rpoco8_testbench_v11_adc0_3_addr_start   = hex2dec('01006000');
rpoco8_testbench_v11_adc0_3_addr_end     = hex2dec('01007FFF');

% rpoco8_testbench_v11/adc4_7
rpoco8_testbench_v11_adc4_7_type         = 'xps_bram';
rpoco8_testbench_v11_adc4_7_param        = '2048';
rpoco8_testbench_v11_adc4_7_ip_name      = 'bram_if';
rpoco8_testbench_v11_adc4_7_addr_start   = hex2dec('01008000');
rpoco8_testbench_v11_adc4_7_addr_end     = hex2dec('01009FFF');

% rpoco8_testbench_v11/ctrl_sw
rpoco8_testbench_v11_ctrl_sw_type         = 'xps_sw_reg';
rpoco8_testbench_v11_ctrl_sw_param        = 'in';
rpoco8_testbench_v11_ctrl_sw_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_ctrl_sw_addr_start   = hex2dec('0100A000');
rpoco8_testbench_v11_ctrl_sw_addr_end     = hex2dec('0100A0FF');

% rpoco8_testbench_v11/delay/delay_data
rpoco8_testbench_v11_delay_delay_data_type         = 'xps_sw_reg';
rpoco8_testbench_v11_delay_delay_data_param        = 'in';
rpoco8_testbench_v11_delay_delay_data_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_delay_delay_data_addr_start   = hex2dec('0100A100');
rpoco8_testbench_v11_delay_delay_data_addr_end     = hex2dec('0100A1FF');

% rpoco8_testbench_v11/eq_coeff
rpoco8_testbench_v11_eq_coeff_type         = 'xps_sw_reg';
rpoco8_testbench_v11_eq_coeff_param        = 'in';
rpoco8_testbench_v11_eq_coeff_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_eq_coeff_addr_start   = hex2dec('0100A200');
rpoco8_testbench_v11_eq_coeff_addr_end     = hex2dec('0100A2FF');

% rpoco8_testbench_v11/fft_pol02_imag
rpoco8_testbench_v11_fft_pol02_imag_type         = 'xps_bram';
rpoco8_testbench_v11_fft_pol02_imag_param        = '2048';
rpoco8_testbench_v11_fft_pol02_imag_ip_name      = 'bram_if';
rpoco8_testbench_v11_fft_pol02_imag_addr_start   = hex2dec('0100C000');
rpoco8_testbench_v11_fft_pol02_imag_addr_end     = hex2dec('0100DFFF');

% rpoco8_testbench_v11/fft_pol02_real
rpoco8_testbench_v11_fft_pol02_real_type         = 'xps_bram';
rpoco8_testbench_v11_fft_pol02_real_param        = '2048';
rpoco8_testbench_v11_fft_pol02_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_fft_pol02_real_addr_start   = hex2dec('0100E000');
rpoco8_testbench_v11_fft_pol02_real_addr_end     = hex2dec('0100FFFF');

% rpoco8_testbench_v11/iadc0_3
rpoco8_testbench_v11_iadc0_3_type         = 'xps_bram';
rpoco8_testbench_v11_iadc0_3_param        = '2048';
rpoco8_testbench_v11_iadc0_3_ip_name      = 'bram_if';
rpoco8_testbench_v11_iadc0_3_addr_start   = hex2dec('01010000');
rpoco8_testbench_v11_iadc0_3_addr_end     = hex2dec('01011FFF');

% rpoco8_testbench_v11/iadc4_7
rpoco8_testbench_v11_iadc4_7_type         = 'xps_bram';
rpoco8_testbench_v11_iadc4_7_param        = '2048';
rpoco8_testbench_v11_iadc4_7_ip_name      = 'bram_if';
rpoco8_testbench_v11_iadc4_7_addr_start   = hex2dec('01012000');
rpoco8_testbench_v11_iadc4_7_addr_end     = hex2dec('01013FFF');

% rpoco8_testbench_v11/insel/insel_data
rpoco8_testbench_v11_insel_insel_data_type         = 'xps_sw_reg';
rpoco8_testbench_v11_insel_insel_data_param        = 'in';
rpoco8_testbench_v11_insel_insel_data_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_insel_insel_data_addr_start   = hex2dec('01014000');
rpoco8_testbench_v11_insel_insel_data_addr_end     = hex2dec('010140FF');

% rpoco8_testbench_v11/led
rpoco8_testbench_v11_led_type         = 'xps_gpio';
rpoco8_testbench_v11_led_param        = '';
rpoco8_testbench_v11_led_ip_name      = 'gpio_simulink2ext';

% rpoco8_testbench_v11/mux_sel_pfb
rpoco8_testbench_v11_mux_sel_pfb_type         = 'xps_sw_reg';
rpoco8_testbench_v11_mux_sel_pfb_param        = 'in';
rpoco8_testbench_v11_mux_sel_pfb_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_mux_sel_pfb_addr_start   = hex2dec('01014100');
rpoco8_testbench_v11_mux_sel_pfb_addr_end     = hex2dec('010141FF');

% rpoco8_testbench_v11/mux_sel_pfb_sync
rpoco8_testbench_v11_mux_sel_pfb_sync_type         = 'xps_sw_reg';
rpoco8_testbench_v11_mux_sel_pfb_sync_param        = 'in';
rpoco8_testbench_v11_mux_sel_pfb_sync_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_mux_sel_pfb_sync_addr_start   = hex2dec('01014200');
rpoco8_testbench_v11_mux_sel_pfb_sync_addr_end     = hex2dec('010142FF');

% rpoco8_testbench_v11/new_raw_capture
rpoco8_testbench_v11_new_raw_capture_type         = 'xps_sw_reg';
rpoco8_testbench_v11_new_raw_capture_param        = 'in';
rpoco8_testbench_v11_new_raw_capture_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_new_raw_capture_addr_start   = hex2dec('01014300');
rpoco8_testbench_v11_new_raw_capture_addr_end     = hex2dec('010143FF');

% rpoco8_testbench_v11/new_raw_capture_trig
rpoco8_testbench_v11_new_raw_capture_trig_type         = 'xps_sw_reg';
rpoco8_testbench_v11_new_raw_capture_trig_param        = 'in';
rpoco8_testbench_v11_new_raw_capture_trig_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_new_raw_capture_trig_addr_start   = hex2dec('01014400');
rpoco8_testbench_v11_new_raw_capture_trig_addr_end     = hex2dec('010144FF');

% rpoco8_testbench_v11/not or not/delay1
rpoco8_testbench_v11_not_or_not_delay1_type         = 'xps_sw_reg';
rpoco8_testbench_v11_not_or_not_delay1_param        = 'in';
rpoco8_testbench_v11_not_or_not_delay1_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_not_or_not_delay1_addr_start   = hex2dec('01014500');
rpoco8_testbench_v11_not_or_not_delay1_addr_end     = hex2dec('010145FF');

% rpoco8_testbench_v11/not or not/delay2
rpoco8_testbench_v11_not_or_not_delay2_type         = 'xps_sw_reg';
rpoco8_testbench_v11_not_or_not_delay2_param        = 'in';
rpoco8_testbench_v11_not_or_not_delay2_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_not_or_not_delay2_addr_start   = hex2dec('01014600');
rpoco8_testbench_v11_not_or_not_delay2_addr_end     = hex2dec('010146FF');

% rpoco8_testbench_v11/not or not/delay3
rpoco8_testbench_v11_not_or_not_delay3_type         = 'xps_sw_reg';
rpoco8_testbench_v11_not_or_not_delay3_param        = 'in';
rpoco8_testbench_v11_not_or_not_delay3_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_not_or_not_delay3_addr_start   = hex2dec('01014700');
rpoco8_testbench_v11_not_or_not_delay3_addr_end     = hex2dec('010147FF');

% rpoco8_testbench_v11/not or not/delay4
rpoco8_testbench_v11_not_or_not_delay4_type         = 'xps_sw_reg';
rpoco8_testbench_v11_not_or_not_delay4_param        = 'in';
rpoco8_testbench_v11_not_or_not_delay4_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_not_or_not_delay4_addr_start   = hex2dec('01014800');
rpoco8_testbench_v11_not_or_not_delay4_addr_end     = hex2dec('010148FF');

% rpoco8_testbench_v11/not or not/delay5
rpoco8_testbench_v11_not_or_not_delay5_type         = 'xps_sw_reg';
rpoco8_testbench_v11_not_or_not_delay5_param        = 'in';
rpoco8_testbench_v11_not_or_not_delay5_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_not_or_not_delay5_addr_start   = hex2dec('01014900');
rpoco8_testbench_v11_not_or_not_delay5_addr_end     = hex2dec('010149FF');

% rpoco8_testbench_v11/not or not/delay6
rpoco8_testbench_v11_not_or_not_delay6_type         = 'xps_sw_reg';
rpoco8_testbench_v11_not_or_not_delay6_param        = 'in';
rpoco8_testbench_v11_not_or_not_delay6_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_not_or_not_delay6_addr_start   = hex2dec('01014A00');
rpoco8_testbench_v11_not_or_not_delay6_addr_end     = hex2dec('01014AFF');

% rpoco8_testbench_v11/not or not/delay7
rpoco8_testbench_v11_not_or_not_delay7_type         = 'xps_sw_reg';
rpoco8_testbench_v11_not_or_not_delay7_param        = 'in';
rpoco8_testbench_v11_not_or_not_delay7_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_not_or_not_delay7_addr_start   = hex2dec('01014B00');
rpoco8_testbench_v11_not_or_not_delay7_addr_end     = hex2dec('01014BFF');

% rpoco8_testbench_v11/not or not/delay8
rpoco8_testbench_v11_not_or_not_delay8_type         = 'xps_sw_reg';
rpoco8_testbench_v11_not_or_not_delay8_param        = 'in';
rpoco8_testbench_v11_not_or_not_delay8_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_not_or_not_delay8_addr_start   = hex2dec('01014C00');
rpoco8_testbench_v11_not_or_not_delay8_addr_end     = hex2dec('01014CFF');

% rpoco8_testbench_v11/seed/seed_data
rpoco8_testbench_v11_seed_seed_data_type         = 'xps_sw_reg';
rpoco8_testbench_v11_seed_seed_data_param        = 'in';
rpoco8_testbench_v11_seed_seed_data_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_seed_seed_data_addr_start   = hex2dec('01014D00');
rpoco8_testbench_v11_seed_seed_data_addr_end     = hex2dec('01014DFF');

% rpoco8_testbench_v11/walsh/_codes
rpoco8_testbench_v11_walsh_codes_type         = 'xps_bram';
rpoco8_testbench_v11_walsh_codes_param        = '2048';
rpoco8_testbench_v11_walsh_codes_ip_name      = 'bram_if';
rpoco8_testbench_v11_walsh_codes_addr_start   = hex2dec('01016000');
rpoco8_testbench_v11_walsh_codes_addr_end     = hex2dec('01017FFF');

% rpoco8_testbench_v11/walsh/trig_sel
rpoco8_testbench_v11_walsh_trig_sel_type         = 'xps_sw_reg';
rpoco8_testbench_v11_walsh_trig_sel_param        = 'in';
rpoco8_testbench_v11_walsh_trig_sel_ip_name      = 'opb_register_ppc2simulink';
rpoco8_testbench_v11_walsh_trig_sel_addr_start   = hex2dec('01080000');
rpoco8_testbench_v11_walsh_trig_sel_addr_end     = hex2dec('010800FF');

% rpoco8_testbench_v11/walsh/walsh1
rpoco8_testbench_v11_walsh_walsh1_type         = 'xps_gpio';
rpoco8_testbench_v11_walsh_walsh1_param        = '';
rpoco8_testbench_v11_walsh_walsh1_ip_name      = 'gpio_simulink2ext';

% rpoco8_testbench_v11/walsh/walsh2
rpoco8_testbench_v11_walsh_walsh2_type         = 'xps_gpio';
rpoco8_testbench_v11_walsh_walsh2_param        = '';
rpoco8_testbench_v11_walsh_walsh2_ip_name      = 'gpio_simulink2ext';

% rpoco8_testbench_v11/walsh/walsh3
rpoco8_testbench_v11_walsh_walsh3_type         = 'xps_gpio';
rpoco8_testbench_v11_walsh_walsh3_param        = '';
rpoco8_testbench_v11_walsh_walsh3_ip_name      = 'gpio_simulink2ext';

% rpoco8_testbench_v11/walsh/walsh4
rpoco8_testbench_v11_walsh_walsh4_type         = 'xps_gpio';
rpoco8_testbench_v11_walsh_walsh4_param        = '';
rpoco8_testbench_v11_walsh_walsh4_ip_name      = 'gpio_simulink2ext';

% rpoco8_testbench_v11/walsh/walsh5
rpoco8_testbench_v11_walsh_walsh5_type         = 'xps_gpio';
rpoco8_testbench_v11_walsh_walsh5_param        = '';
rpoco8_testbench_v11_walsh_walsh5_ip_name      = 'gpio_simulink2ext';

% rpoco8_testbench_v11/walsh/walsh6
rpoco8_testbench_v11_walsh_walsh6_type         = 'xps_gpio';
rpoco8_testbench_v11_walsh_walsh6_param        = '';
rpoco8_testbench_v11_walsh_walsh6_ip_name      = 'gpio_simulink2ext';

% rpoco8_testbench_v11/walsh/walsh7
rpoco8_testbench_v11_walsh_walsh7_type         = 'xps_gpio';
rpoco8_testbench_v11_walsh_walsh7_param        = '';
rpoco8_testbench_v11_walsh_walsh7_ip_name      = 'gpio_simulink2ext';

% rpoco8_testbench_v11/walsh/walsh8
rpoco8_testbench_v11_walsh_walsh8_type         = 'xps_gpio';
rpoco8_testbench_v11_walsh_walsh8_param        = '';
rpoco8_testbench_v11_walsh_walsh8_ip_name      = 'gpio_simulink2ext';

% rpoco8_testbench_v11/xengine8_muxed/aa/real
rpoco8_testbench_v11_xengine8_muxed_aa_real_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_aa_real_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_aa_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_aa_real_addr_start   = hex2dec('01082000');
rpoco8_testbench_v11_xengine8_muxed_aa_real_addr_end     = hex2dec('01083FFF');

% rpoco8_testbench_v11/xengine8_muxed/ab/imag
rpoco8_testbench_v11_xengine8_muxed_ab_imag_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_ab_imag_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_ab_imag_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_ab_imag_addr_start   = hex2dec('01084000');
rpoco8_testbench_v11_xengine8_muxed_ab_imag_addr_end     = hex2dec('01085FFF');

% rpoco8_testbench_v11/xengine8_muxed/ab/real
rpoco8_testbench_v11_xengine8_muxed_ab_real_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_ab_real_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_ab_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_ab_real_addr_start   = hex2dec('01086000');
rpoco8_testbench_v11_xengine8_muxed_ab_real_addr_end     = hex2dec('01087FFF');

% rpoco8_testbench_v11/xengine8_muxed/ac/imag
rpoco8_testbench_v11_xengine8_muxed_ac_imag_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_ac_imag_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_ac_imag_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_ac_imag_addr_start   = hex2dec('01088000');
rpoco8_testbench_v11_xengine8_muxed_ac_imag_addr_end     = hex2dec('01089FFF');

% rpoco8_testbench_v11/xengine8_muxed/ac/real
rpoco8_testbench_v11_xengine8_muxed_ac_real_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_ac_real_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_ac_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_ac_real_addr_start   = hex2dec('0108A000');
rpoco8_testbench_v11_xengine8_muxed_ac_real_addr_end     = hex2dec('0108BFFF');

% rpoco8_testbench_v11/xengine8_muxed/ad/imag
rpoco8_testbench_v11_xengine8_muxed_ad_imag_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_ad_imag_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_ad_imag_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_ad_imag_addr_start   = hex2dec('0108C000');
rpoco8_testbench_v11_xengine8_muxed_ad_imag_addr_end     = hex2dec('0108DFFF');

% rpoco8_testbench_v11/xengine8_muxed/ad/real
rpoco8_testbench_v11_xengine8_muxed_ad_real_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_ad_real_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_ad_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_ad_real_addr_start   = hex2dec('0108E000');
rpoco8_testbench_v11_xengine8_muxed_ad_real_addr_end     = hex2dec('0108FFFF');

% rpoco8_testbench_v11/xengine8_muxed/ae/imag
rpoco8_testbench_v11_xengine8_muxed_ae_imag_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_ae_imag_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_ae_imag_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_ae_imag_addr_start   = hex2dec('01090000');
rpoco8_testbench_v11_xengine8_muxed_ae_imag_addr_end     = hex2dec('01091FFF');

% rpoco8_testbench_v11/xengine8_muxed/ae/real
rpoco8_testbench_v11_xengine8_muxed_ae_real_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_ae_real_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_ae_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_ae_real_addr_start   = hex2dec('01092000');
rpoco8_testbench_v11_xengine8_muxed_ae_real_addr_end     = hex2dec('01093FFF');

% rpoco8_testbench_v11/xengine8_muxed/af/imag
rpoco8_testbench_v11_xengine8_muxed_af_imag_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_af_imag_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_af_imag_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_af_imag_addr_start   = hex2dec('01094000');
rpoco8_testbench_v11_xengine8_muxed_af_imag_addr_end     = hex2dec('01095FFF');

% rpoco8_testbench_v11/xengine8_muxed/af/real
rpoco8_testbench_v11_xengine8_muxed_af_real_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_af_real_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_af_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_af_real_addr_start   = hex2dec('01096000');
rpoco8_testbench_v11_xengine8_muxed_af_real_addr_end     = hex2dec('01097FFF');

% rpoco8_testbench_v11/xengine8_muxed/bb/real
rpoco8_testbench_v11_xengine8_muxed_bb_real_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_bb_real_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_bb_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_bb_real_addr_start   = hex2dec('01098000');
rpoco8_testbench_v11_xengine8_muxed_bb_real_addr_end     = hex2dec('01099FFF');

% rpoco8_testbench_v11/xengine8_muxed/bc/imag
rpoco8_testbench_v11_xengine8_muxed_bc_imag_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_bc_imag_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_bc_imag_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_bc_imag_addr_start   = hex2dec('0109A000');
rpoco8_testbench_v11_xengine8_muxed_bc_imag_addr_end     = hex2dec('0109BFFF');

% rpoco8_testbench_v11/xengine8_muxed/bc/real
rpoco8_testbench_v11_xengine8_muxed_bc_real_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_bc_real_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_bc_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_bc_real_addr_start   = hex2dec('0109C000');
rpoco8_testbench_v11_xengine8_muxed_bc_real_addr_end     = hex2dec('0109DFFF');

% rpoco8_testbench_v11/xengine8_muxed/bd/imag
rpoco8_testbench_v11_xengine8_muxed_bd_imag_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_bd_imag_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_bd_imag_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_bd_imag_addr_start   = hex2dec('0109E000');
rpoco8_testbench_v11_xengine8_muxed_bd_imag_addr_end     = hex2dec('0109FFFF');

% rpoco8_testbench_v11/xengine8_muxed/bd/real
rpoco8_testbench_v11_xengine8_muxed_bd_real_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_bd_real_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_bd_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_bd_real_addr_start   = hex2dec('010A0000');
rpoco8_testbench_v11_xengine8_muxed_bd_real_addr_end     = hex2dec('010A1FFF');

% rpoco8_testbench_v11/xengine8_muxed/be/imag
rpoco8_testbench_v11_xengine8_muxed_be_imag_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_be_imag_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_be_imag_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_be_imag_addr_start   = hex2dec('010A2000');
rpoco8_testbench_v11_xengine8_muxed_be_imag_addr_end     = hex2dec('010A3FFF');

% rpoco8_testbench_v11/xengine8_muxed/be/real
rpoco8_testbench_v11_xengine8_muxed_be_real_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_be_real_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_be_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_be_real_addr_start   = hex2dec('010A4000');
rpoco8_testbench_v11_xengine8_muxed_be_real_addr_end     = hex2dec('010A5FFF');

% rpoco8_testbench_v11/xengine8_muxed/bf/imag
rpoco8_testbench_v11_xengine8_muxed_bf_imag_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_bf_imag_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_bf_imag_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_bf_imag_addr_start   = hex2dec('010A6000');
rpoco8_testbench_v11_xengine8_muxed_bf_imag_addr_end     = hex2dec('010A7FFF');

% rpoco8_testbench_v11/xengine8_muxed/bf/real
rpoco8_testbench_v11_xengine8_muxed_bf_real_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_bf_real_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_bf_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_bf_real_addr_start   = hex2dec('010A8000');
rpoco8_testbench_v11_xengine8_muxed_bf_real_addr_end     = hex2dec('010A9FFF');

% rpoco8_testbench_v11/xengine8_muxed/cc/real
rpoco8_testbench_v11_xengine8_muxed_cc_real_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_cc_real_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_cc_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_cc_real_addr_start   = hex2dec('010AA000');
rpoco8_testbench_v11_xengine8_muxed_cc_real_addr_end     = hex2dec('010ABFFF');

% rpoco8_testbench_v11/xengine8_muxed/cd/imag
rpoco8_testbench_v11_xengine8_muxed_cd_imag_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_cd_imag_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_cd_imag_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_cd_imag_addr_start   = hex2dec('010AC000');
rpoco8_testbench_v11_xengine8_muxed_cd_imag_addr_end     = hex2dec('010ADFFF');

% rpoco8_testbench_v11/xengine8_muxed/cd/real
rpoco8_testbench_v11_xengine8_muxed_cd_real_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_cd_real_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_cd_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_cd_real_addr_start   = hex2dec('010AE000');
rpoco8_testbench_v11_xengine8_muxed_cd_real_addr_end     = hex2dec('010AFFFF');

% rpoco8_testbench_v11/xengine8_muxed/cg/imag
rpoco8_testbench_v11_xengine8_muxed_cg_imag_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_cg_imag_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_cg_imag_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_cg_imag_addr_start   = hex2dec('010B0000');
rpoco8_testbench_v11_xengine8_muxed_cg_imag_addr_end     = hex2dec('010B1FFF');

% rpoco8_testbench_v11/xengine8_muxed/cg/real
rpoco8_testbench_v11_xengine8_muxed_cg_real_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_cg_real_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_cg_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_cg_real_addr_start   = hex2dec('010B2000');
rpoco8_testbench_v11_xengine8_muxed_cg_real_addr_end     = hex2dec('010B3FFF');

% rpoco8_testbench_v11/xengine8_muxed/ch/imag
rpoco8_testbench_v11_xengine8_muxed_ch_imag_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_ch_imag_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_ch_imag_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_ch_imag_addr_start   = hex2dec('010B4000');
rpoco8_testbench_v11_xengine8_muxed_ch_imag_addr_end     = hex2dec('010B5FFF');

% rpoco8_testbench_v11/xengine8_muxed/ch/real
rpoco8_testbench_v11_xengine8_muxed_ch_real_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_ch_real_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_ch_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_ch_real_addr_start   = hex2dec('010B6000');
rpoco8_testbench_v11_xengine8_muxed_ch_real_addr_end     = hex2dec('010B7FFF');

% rpoco8_testbench_v11/xengine8_muxed/dd/real
rpoco8_testbench_v11_xengine8_muxed_dd_real_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_dd_real_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_dd_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_dd_real_addr_start   = hex2dec('010B8000');
rpoco8_testbench_v11_xengine8_muxed_dd_real_addr_end     = hex2dec('010B9FFF');

% rpoco8_testbench_v11/xengine8_muxed/dg/imag
rpoco8_testbench_v11_xengine8_muxed_dg_imag_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_dg_imag_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_dg_imag_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_dg_imag_addr_start   = hex2dec('010BA000');
rpoco8_testbench_v11_xengine8_muxed_dg_imag_addr_end     = hex2dec('010BBFFF');

% rpoco8_testbench_v11/xengine8_muxed/dg/real
rpoco8_testbench_v11_xengine8_muxed_dg_real_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_dg_real_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_dg_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_dg_real_addr_start   = hex2dec('010BC000');
rpoco8_testbench_v11_xengine8_muxed_dg_real_addr_end     = hex2dec('010BDFFF');

% rpoco8_testbench_v11/xengine8_muxed/dh/imag
rpoco8_testbench_v11_xengine8_muxed_dh_imag_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_dh_imag_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_dh_imag_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_dh_imag_addr_start   = hex2dec('010BE000');
rpoco8_testbench_v11_xengine8_muxed_dh_imag_addr_end     = hex2dec('010BFFFF');

% rpoco8_testbench_v11/xengine8_muxed/dh/real
rpoco8_testbench_v11_xengine8_muxed_dh_real_type         = 'xps_bram';
rpoco8_testbench_v11_xengine8_muxed_dh_real_param        = '2048';
rpoco8_testbench_v11_xengine8_muxed_dh_real_ip_name      = 'bram_if';
rpoco8_testbench_v11_xengine8_muxed_dh_real_addr_start   = hex2dec('010C0000');
rpoco8_testbench_v11_xengine8_muxed_dh_real_addr_end     = hex2dec('010C1FFF');

% OPB to OPB bridge added at 0x1080000
OPB_to_OPB_bridge_added_at_0x1080000_type         = 'xps_opb2opb';
OPB_to_OPB_bridge_added_at_0x1080000_param        = '';

