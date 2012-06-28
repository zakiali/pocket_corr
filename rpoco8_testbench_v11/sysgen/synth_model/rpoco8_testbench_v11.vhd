--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_99837fc802519273.vhd when simulating
-- the core, addsb_11_0_99837fc802519273. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY addsb_11_0_99837fc802519273 IS
	port (
	a: IN std_logic_VECTOR(32 downto 0);
	b: IN std_logic_VECTOR(32 downto 0);
	clk: IN std_logic;
	ce: IN std_logic;
	s: OUT std_logic_VECTOR(32 downto 0));
END addsb_11_0_99837fc802519273;

ARCHITECTURE addsb_11_0_99837fc802519273_a OF addsb_11_0_99837fc802519273 IS
-- synthesis translate_off
component wrapped_addsb_11_0_99837fc802519273
	port (
	a: IN std_logic_VECTOR(32 downto 0);
	b: IN std_logic_VECTOR(32 downto 0);
	clk: IN std_logic;
	ce: IN std_logic;
	s: OUT std_logic_VECTOR(32 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_addsb_11_0_99837fc802519273 use entity XilinxCoreLib.c_addsub_v11_0(behavioral)
		generic map(
			c_a_width => 33,
			c_out_width => 33,
			c_add_mode => 1,
			c_has_c_out => 0,
			c_b_type => 0,
			c_borrow_low => 1,
			c_ce_overrides_sclr => 0,
			c_implementation => 0,
			c_has_sclr => 0,
			c_verbosity => 0,
			c_latency => 1,
			c_has_bypass => 0,
			c_ainit_val => "0",
			c_bypass_low => 0,
			c_has_ce => 1,
			c_sclr_overrides_sset => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_c_in => 0,
			c_has_sinit => 0,
			c_b_constant => 0,
			c_ce_overrides_bypass => 1,
			c_xdevicefamily => "virtex5",
			c_a_type => 0,
			c_b_width => 33,
			c_b_value => "000000000000000000000000000000000");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_99837fc802519273
		port map (
			a => a,
			b => b,
			clk => clk,
			ce => ce,
			s => s);
-- synthesis translate_on

END addsb_11_0_99837fc802519273_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_33_5855b709c81b1172.vhd when simulating
-- the core, bmg_33_5855b709c81b1172. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_33_5855b709c81b1172 IS
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	wea: IN std_logic_VECTOR(0 downto 0);
	addra: IN std_logic_VECTOR(5 downto 0);
	dina: IN std_logic_VECTOR(0 downto 0);
	douta: OUT std_logic_VECTOR(0 downto 0);
	clkb: IN std_logic;
	enb: IN std_logic;
	web: IN std_logic_VECTOR(0 downto 0);
	addrb: IN std_logic_VECTOR(5 downto 0);
	dinb: IN std_logic_VECTOR(0 downto 0);
	doutb: OUT std_logic_VECTOR(0 downto 0));
END bmg_33_5855b709c81b1172;

ARCHITECTURE bmg_33_5855b709c81b1172_a OF bmg_33_5855b709c81b1172 IS
-- synthesis translate_off
component wrapped_bmg_33_5855b709c81b1172
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	wea: IN std_logic_VECTOR(0 downto 0);
	addra: IN std_logic_VECTOR(5 downto 0);
	dina: IN std_logic_VECTOR(0 downto 0);
	douta: OUT std_logic_VECTOR(0 downto 0);
	clkb: IN std_logic;
	enb: IN std_logic;
	web: IN std_logic_VECTOR(0 downto 0);
	addrb: IN std_logic_VECTOR(5 downto 0);
	dinb: IN std_logic_VECTOR(0 downto 0);
	doutb: OUT std_logic_VECTOR(0 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_bmg_33_5855b709c81b1172 use entity XilinxCoreLib.blk_mem_gen_v3_3(behavioral)
		generic map(
			c_has_regceb => 0,
			c_has_regcea => 0,
			c_mem_type => 2,
			c_rstram_b => 0,
			c_rstram_a => 0,
			c_has_injecterr => 0,
			c_rst_type => "SYNC",
			c_prim_type => 5,
			c_read_width_b => 1,
			c_initb_val => "0",
			c_family => "virtex5",
			c_read_width_a => 1,
			c_disable_warn_bhv_coll => 0,
			c_write_mode_b => "WRITE_FIRST",
			c_init_file_name => "bmg_33_5855b709c81b1172.mif",
			c_write_mode_a => "WRITE_FIRST",
			c_mux_pipeline_stages => 0,
			c_has_mem_output_regs_b => 1,
			c_has_mem_output_regs_a => 1,
			c_load_init_file => 1,
			c_xdevicefamily => "virtex5",
			c_write_depth_b => 64,
			c_write_depth_a => 64,
			c_has_rstb => 0,
			c_has_rsta => 0,
			c_has_mux_output_regs_b => 0,
			c_inita_val => "0",
			c_has_mux_output_regs_a => 0,
			c_addra_width => 6,
			c_addrb_width => 6,
			c_default_data => "0",
			c_use_ecc => 0,
			c_algorithm => 0,
			c_disable_warn_bhv_range => 0,
			c_write_width_b => 1,
			c_write_width_a => 1,
			c_read_depth_b => 64,
			c_read_depth_a => 64,
			c_byte_size => 9,
			c_sim_collision_check => "ALL",
			c_common_clk => 1,
			c_wea_width => 1,
			c_has_enb => 1,
			c_web_width => 1,
			c_has_ena => 1,
			c_use_byte_web => 0,
			c_use_byte_wea => 0,
			c_rst_priority_b => "CE",
			c_rst_priority_a => "CE",
			c_use_default_data => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_33_5855b709c81b1172
		port map (
			clka => clka,
			ena => ena,
			wea => wea,
			addra => addra,
			dina => dina,
			douta => douta,
			clkb => clkb,
			enb => enb,
			web => web,
			addrb => addrb,
			dinb => dinb,
			doutb => doutb);
-- synthesis translate_on

END bmg_33_5855b709c81b1172_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_87d335e994d59139.vhd when simulating
-- the core, cntr_11_0_87d335e994d59139. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_87d335e994d59139 IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(31 downto 0));
END cntr_11_0_87d335e994d59139;

ARCHITECTURE cntr_11_0_87d335e994d59139_a OF cntr_11_0_87d335e994d59139 IS
-- synthesis translate_off
component wrapped_cntr_11_0_87d335e994d59139
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(31 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_87d335e994d59139 use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 32,
			c_verbosity => 0,
			c_has_load => 0,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_87d335e994d59139
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			q => q);
-- synthesis translate_on

END cntr_11_0_87d335e994d59139_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file mlt_11_2_22d57f485ffd805c.vhd when simulating
-- the core, mlt_11_2_22d57f485ffd805c. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY mlt_11_2_22d57f485ffd805c IS
	port (
	clk: IN std_logic;
	a: IN std_logic_VECTOR(17 downto 0);
	b: IN std_logic_VECTOR(17 downto 0);
	ce: IN std_logic;
	sclr: IN std_logic;
	p: OUT std_logic_VECTOR(35 downto 0));
END mlt_11_2_22d57f485ffd805c;

ARCHITECTURE mlt_11_2_22d57f485ffd805c_a OF mlt_11_2_22d57f485ffd805c IS
-- synthesis translate_off
component wrapped_mlt_11_2_22d57f485ffd805c
	port (
	clk: IN std_logic;
	a: IN std_logic_VECTOR(17 downto 0);
	b: IN std_logic_VECTOR(17 downto 0);
	ce: IN std_logic;
	sclr: IN std_logic;
	p: OUT std_logic_VECTOR(35 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_mlt_11_2_22d57f485ffd805c use entity XilinxCoreLib.mult_gen_v11_2(behavioral)
		generic map(
			c_a_width => 18,
			c_b_type => 0,
			c_ce_overrides_sclr => 1,
			c_has_sclr => 1,
			c_round_pt => 0,
			c_model_type => 0,
			c_out_high => 35,
			c_verbosity => 0,
			c_mult_type => 1,
			c_ccm_imp => 0,
			c_latency => 3,
			c_has_ce => 1,
			c_has_zero_detect => 0,
			c_round_output => 0,
			c_optimize_goal => 1,
			c_xdevicefamily => "virtex5",
			c_a_type => 0,
			c_out_low => 0,
			c_b_width => 18,
			c_b_value => "10000001");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mlt_11_2_22d57f485ffd805c
		port map (
			clk => clk,
			a => a,
			b => b,
			ce => ce,
			sclr => sclr,
			p => p);
-- synthesis translate_on

END mlt_11_2_22d57f485ffd805c_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_05e2750227d8d748.vhd when simulating
-- the core, cntr_11_0_05e2750227d8d748. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_05e2750227d8d748 IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(27 downto 0));
END cntr_11_0_05e2750227d8d748;

ARCHITECTURE cntr_11_0_05e2750227d8d748_a OF cntr_11_0_05e2750227d8d748 IS
-- synthesis translate_off
component wrapped_cntr_11_0_05e2750227d8d748
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(27 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_05e2750227d8d748 use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 28,
			c_verbosity => 0,
			c_has_load => 0,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_05e2750227d8d748
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			q => q);
-- synthesis translate_on

END cntr_11_0_05e2750227d8d748_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_33_e4cac21e8ed012aa.vhd when simulating
-- the core, bmg_33_e4cac21e8ed012aa. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_33_e4cac21e8ed012aa IS
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	addra: IN std_logic_VECTOR(10 downto 0);
	douta: OUT std_logic_VECTOR(7 downto 0));
END bmg_33_e4cac21e8ed012aa;

ARCHITECTURE bmg_33_e4cac21e8ed012aa_a OF bmg_33_e4cac21e8ed012aa IS
-- synthesis translate_off
component wrapped_bmg_33_e4cac21e8ed012aa
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	addra: IN std_logic_VECTOR(10 downto 0);
	douta: OUT std_logic_VECTOR(7 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_bmg_33_e4cac21e8ed012aa use entity XilinxCoreLib.blk_mem_gen_v3_3(behavioral)
		generic map(
			c_has_regceb => 0,
			c_has_regcea => 0,
			c_mem_type => 3,
			c_rstram_b => 0,
			c_rstram_a => 0,
			c_has_injecterr => 0,
			c_rst_type => "SYNC",
			c_prim_type => 1,
			c_read_width_b => 8,
			c_initb_val => "0",
			c_family => "virtex5",
			c_read_width_a => 8,
			c_disable_warn_bhv_coll => 0,
			c_write_mode_b => "WRITE_FIRST",
			c_init_file_name => "bmg_33_e4cac21e8ed012aa.mif",
			c_write_mode_a => "WRITE_FIRST",
			c_mux_pipeline_stages => 0,
			c_has_mem_output_regs_b => 0,
			c_has_mem_output_regs_a => 1,
			c_load_init_file => 1,
			c_xdevicefamily => "virtex5",
			c_write_depth_b => 2048,
			c_write_depth_a => 2048,
			c_has_rstb => 0,
			c_has_rsta => 0,
			c_has_mux_output_regs_b => 0,
			c_inita_val => "0",
			c_has_mux_output_regs_a => 0,
			c_addra_width => 11,
			c_addrb_width => 11,
			c_default_data => "0",
			c_use_ecc => 0,
			c_algorithm => 1,
			c_disable_warn_bhv_range => 0,
			c_write_width_b => 8,
			c_write_width_a => 8,
			c_read_depth_b => 2048,
			c_read_depth_a => 2048,
			c_byte_size => 9,
			c_sim_collision_check => "ALL",
			c_common_clk => 0,
			c_wea_width => 1,
			c_has_enb => 0,
			c_web_width => 1,
			c_has_ena => 1,
			c_use_byte_web => 0,
			c_use_byte_wea => 0,
			c_rst_priority_b => "CE",
			c_rst_priority_a => "CE",
			c_use_default_data => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_33_e4cac21e8ed012aa
		port map (
			clka => clka,
			ena => ena,
			addra => addra,
			douta => douta);
-- synthesis translate_on

END bmg_33_e4cac21e8ed012aa_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_29076546cca80226.vhd when simulating
-- the core, cntr_11_0_29076546cca80226. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_29076546cca80226 IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(11 downto 0));
END cntr_11_0_29076546cca80226;

ARCHITECTURE cntr_11_0_29076546cca80226_a OF cntr_11_0_29076546cca80226 IS
-- synthesis translate_off
component wrapped_cntr_11_0_29076546cca80226
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(11 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_29076546cca80226 use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 12,
			c_verbosity => 0,
			c_has_load => 0,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_29076546cca80226
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			q => q);
-- synthesis translate_on

END cntr_11_0_29076546cca80226_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_86f7251946088efb.vhd when simulating
-- the core, cntr_11_0_86f7251946088efb. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_86f7251946088efb IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(22 downto 0));
END cntr_11_0_86f7251946088efb;

ARCHITECTURE cntr_11_0_86f7251946088efb_a OF cntr_11_0_86f7251946088efb IS
-- synthesis translate_off
component wrapped_cntr_11_0_86f7251946088efb
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(22 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_86f7251946088efb use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 23,
			c_verbosity => 0,
			c_has_load => 0,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_86f7251946088efb
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			q => q);
-- synthesis translate_on

END cntr_11_0_86f7251946088efb_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file mlt_11_2_4ed06302eba93f8e.vhd when simulating
-- the core, mlt_11_2_4ed06302eba93f8e. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY mlt_11_2_4ed06302eba93f8e IS
	port (
	clk: IN std_logic;
	a: IN std_logic_VECTOR(17 downto 0);
	b: IN std_logic_VECTOR(16 downto 0);
	ce: IN std_logic;
	sclr: IN std_logic;
	p: OUT std_logic_VECTOR(34 downto 0));
END mlt_11_2_4ed06302eba93f8e;

ARCHITECTURE mlt_11_2_4ed06302eba93f8e_a OF mlt_11_2_4ed06302eba93f8e IS
-- synthesis translate_off
component wrapped_mlt_11_2_4ed06302eba93f8e
	port (
	clk: IN std_logic;
	a: IN std_logic_VECTOR(17 downto 0);
	b: IN std_logic_VECTOR(16 downto 0);
	ce: IN std_logic;
	sclr: IN std_logic;
	p: OUT std_logic_VECTOR(34 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_mlt_11_2_4ed06302eba93f8e use entity XilinxCoreLib.mult_gen_v11_2(behavioral)
		generic map(
			c_a_width => 18,
			c_b_type => 1,
			c_ce_overrides_sclr => 1,
			c_has_sclr => 1,
			c_round_pt => 0,
			c_model_type => 0,
			c_out_high => 34,
			c_verbosity => 0,
			c_mult_type => 1,
			c_ccm_imp => 0,
			c_latency => 3,
			c_has_ce => 1,
			c_has_zero_detect => 0,
			c_round_output => 0,
			c_optimize_goal => 1,
			c_xdevicefamily => "virtex5",
			c_a_type => 0,
			c_out_low => 0,
			c_b_width => 17,
			c_b_value => "10000001");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mlt_11_2_4ed06302eba93f8e
		port map (
			clk => clk,
			a => a,
			b => b,
			ce => ce,
			sclr => sclr,
			p => p);
-- synthesis translate_on

END mlt_11_2_4ed06302eba93f8e_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_33_0bdc6c125e0742ca.vhd when simulating
-- the core, bmg_33_0bdc6c125e0742ca. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_33_0bdc6c125e0742ca IS
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	wea: IN std_logic_VECTOR(0 downto 0);
	addra: IN std_logic_VECTOR(5 downto 0);
	dina: IN std_logic_VECTOR(16 downto 0);
	douta: OUT std_logic_VECTOR(16 downto 0);
	clkb: IN std_logic;
	enb: IN std_logic;
	web: IN std_logic_VECTOR(0 downto 0);
	addrb: IN std_logic_VECTOR(5 downto 0);
	dinb: IN std_logic_VECTOR(16 downto 0);
	doutb: OUT std_logic_VECTOR(16 downto 0));
END bmg_33_0bdc6c125e0742ca;

ARCHITECTURE bmg_33_0bdc6c125e0742ca_a OF bmg_33_0bdc6c125e0742ca IS
-- synthesis translate_off
component wrapped_bmg_33_0bdc6c125e0742ca
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	wea: IN std_logic_VECTOR(0 downto 0);
	addra: IN std_logic_VECTOR(5 downto 0);
	dina: IN std_logic_VECTOR(16 downto 0);
	douta: OUT std_logic_VECTOR(16 downto 0);
	clkb: IN std_logic;
	enb: IN std_logic;
	web: IN std_logic_VECTOR(0 downto 0);
	addrb: IN std_logic_VECTOR(5 downto 0);
	dinb: IN std_logic_VECTOR(16 downto 0);
	doutb: OUT std_logic_VECTOR(16 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_bmg_33_0bdc6c125e0742ca use entity XilinxCoreLib.blk_mem_gen_v3_3(behavioral)
		generic map(
			c_has_regceb => 0,
			c_has_regcea => 0,
			c_mem_type => 2,
			c_rstram_b => 0,
			c_rstram_a => 0,
			c_has_injecterr => 0,
			c_rst_type => "SYNC",
			c_prim_type => 1,
			c_read_width_b => 17,
			c_initb_val => "0",
			c_family => "virtex5",
			c_read_width_a => 17,
			c_disable_warn_bhv_coll => 0,
			c_write_mode_b => "WRITE_FIRST",
			c_init_file_name => "bmg_33_0bdc6c125e0742ca.mif",
			c_write_mode_a => "WRITE_FIRST",
			c_mux_pipeline_stages => 0,
			c_has_mem_output_regs_b => 1,
			c_has_mem_output_regs_a => 1,
			c_load_init_file => 1,
			c_xdevicefamily => "virtex5",
			c_write_depth_b => 64,
			c_write_depth_a => 64,
			c_has_rstb => 0,
			c_has_rsta => 0,
			c_has_mux_output_regs_b => 0,
			c_inita_val => "0",
			c_has_mux_output_regs_a => 0,
			c_addra_width => 6,
			c_addrb_width => 6,
			c_default_data => "0",
			c_use_ecc => 0,
			c_algorithm => 1,
			c_disable_warn_bhv_range => 0,
			c_write_width_b => 17,
			c_write_width_a => 17,
			c_read_depth_b => 64,
			c_read_depth_a => 64,
			c_byte_size => 9,
			c_sim_collision_check => "ALL",
			c_common_clk => 1,
			c_wea_width => 1,
			c_has_enb => 1,
			c_web_width => 1,
			c_has_ena => 1,
			c_use_byte_web => 0,
			c_use_byte_wea => 0,
			c_rst_priority_b => "CE",
			c_rst_priority_a => "CE",
			c_use_default_data => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_33_0bdc6c125e0742ca
		port map (
			clka => clka,
			ena => ena,
			wea => wea,
			addra => addra,
			dina => dina,
			douta => douta,
			clkb => clkb,
			enb => enb,
			web => web,
			addrb => addrb,
			dinb => dinb,
			doutb => doutb);
-- synthesis translate_on

END bmg_33_0bdc6c125e0742ca_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_33_ea3aeec639126d38.vhd when simulating
-- the core, bmg_33_ea3aeec639126d38. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_33_ea3aeec639126d38 IS
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	wea: IN std_logic_VECTOR(0 downto 0);
	addra: IN std_logic_VECTOR(10 downto 0);
	dina: IN std_logic_VECTOR(143 downto 0);
	douta: OUT std_logic_VECTOR(143 downto 0));
END bmg_33_ea3aeec639126d38;

ARCHITECTURE bmg_33_ea3aeec639126d38_a OF bmg_33_ea3aeec639126d38 IS
-- synthesis translate_off
component wrapped_bmg_33_ea3aeec639126d38
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	wea: IN std_logic_VECTOR(0 downto 0);
	addra: IN std_logic_VECTOR(10 downto 0);
	dina: IN std_logic_VECTOR(143 downto 0);
	douta: OUT std_logic_VECTOR(143 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_bmg_33_ea3aeec639126d38 use entity XilinxCoreLib.blk_mem_gen_v3_3(behavioral)
		generic map(
			c_has_regceb => 0,
			c_has_regcea => 0,
			c_mem_type => 0,
			c_rstram_b => 0,
			c_rstram_a => 0,
			c_has_injecterr => 0,
			c_rst_type => "SYNC",
			c_prim_type => 1,
			c_read_width_b => 144,
			c_initb_val => "0",
			c_family => "virtex5",
			c_read_width_a => 144,
			c_disable_warn_bhv_coll => 0,
			c_write_mode_b => "WRITE_FIRST",
			c_init_file_name => "bmg_33_ea3aeec639126d38.mif",
			c_write_mode_a => "READ_FIRST",
			c_mux_pipeline_stages => 0,
			c_has_mem_output_regs_b => 0,
			c_has_mem_output_regs_a => 1,
			c_load_init_file => 1,
			c_xdevicefamily => "virtex5",
			c_write_depth_b => 2048,
			c_write_depth_a => 2048,
			c_has_rstb => 0,
			c_has_rsta => 0,
			c_has_mux_output_regs_b => 0,
			c_inita_val => "0",
			c_has_mux_output_regs_a => 0,
			c_addra_width => 11,
			c_addrb_width => 11,
			c_default_data => "0",
			c_use_ecc => 0,
			c_algorithm => 1,
			c_disable_warn_bhv_range => 0,
			c_write_width_b => 144,
			c_write_width_a => 144,
			c_read_depth_b => 2048,
			c_read_depth_a => 2048,
			c_byte_size => 9,
			c_sim_collision_check => "ALL",
			c_common_clk => 0,
			c_wea_width => 1,
			c_has_enb => 0,
			c_web_width => 1,
			c_has_ena => 1,
			c_use_byte_web => 0,
			c_use_byte_wea => 0,
			c_rst_priority_b => "CE",
			c_rst_priority_a => "CE",
			c_use_default_data => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_33_ea3aeec639126d38
		port map (
			clka => clka,
			ena => ena,
			wea => wea,
			addra => addra,
			dina => dina,
			douta => douta);
-- synthesis translate_on

END bmg_33_ea3aeec639126d38_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_43_02dd3a157d80ae94.vhd when simulating
-- the core, dmg_43_02dd3a157d80ae94. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY dmg_43_02dd3a157d80ae94 IS
	port (
	a: IN std_logic_VECTOR(10 downto 0);
	spo: OUT std_logic_VECTOR(10 downto 0));
END dmg_43_02dd3a157d80ae94;

ARCHITECTURE dmg_43_02dd3a157d80ae94_a OF dmg_43_02dd3a157d80ae94 IS
-- synthesis translate_off
component wrapped_dmg_43_02dd3a157d80ae94
	port (
	a: IN std_logic_VECTOR(10 downto 0);
	spo: OUT std_logic_VECTOR(10 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_dmg_43_02dd3a157d80ae94 use entity XilinxCoreLib.dist_mem_gen_v4_3(behavioral)
		generic map(
			c_has_clk => 0,
			c_has_qdpo_clk => 0,
			c_has_qdpo_ce => 0,
			c_parser_type => 1,
			c_has_d => 0,
			c_has_spo => 1,
			c_read_mif => 1,
			c_has_qspo => 0,
			c_width => 11,
			c_reg_a_d_inputs => 0,
			c_has_we => 0,
			c_pipeline_stages => 0,
			c_has_qdpo_rst => 0,
			c_reg_dpra_input => 0,
			c_qualify_we => 0,
			c_family => "virtex5",
			c_sync_enable => 1,
			c_depth => 2048,
			c_has_qspo_srst => 0,
			c_has_qdpo_srst => 0,
			c_has_dpra => 0,
			c_qce_joined => 0,
			c_mem_type => 0,
			c_has_i_ce => 0,
			c_has_dpo => 0,
			c_mem_init_file => "dmg_43_02dd3a157d80ae94.mif",
			c_default_data => "0",
			c_has_spra => 0,
			c_has_qspo_ce => 0,
			c_addr_width => 11,
			c_has_qspo_rst => 0,
			c_has_qdpo => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_43_02dd3a157d80ae94
		port map (
			a => a,
			spo => spo);
-- synthesis translate_on

END dmg_43_02dd3a157d80ae94_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file asr_11_0_372caaa934b22d95.vhd when simulating
-- the core, asr_11_0_372caaa934b22d95. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY asr_11_0_372caaa934b22d95 IS
	port (
	a: IN std_logic_VECTOR(3 downto 0);
	d: IN std_logic_VECTOR(7 downto 0);
	clk: IN std_logic;
	ce: IN std_logic;
	q: OUT std_logic_VECTOR(7 downto 0));
END asr_11_0_372caaa934b22d95;

ARCHITECTURE asr_11_0_372caaa934b22d95_a OF asr_11_0_372caaa934b22d95 IS
-- synthesis translate_off
component wrapped_asr_11_0_372caaa934b22d95
	port (
	a: IN std_logic_VECTOR(3 downto 0);
	d: IN std_logic_VECTOR(7 downto 0);
	clk: IN std_logic;
	ce: IN std_logic;
	q: OUT std_logic_VECTOR(7 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_asr_11_0_372caaa934b22d95 use entity XilinxCoreLib.c_shift_ram_v11_0(behavioral)
		generic map(
			c_parser_type => 1,
			c_read_mif => 1,
			c_has_a => 1,
			c_sync_priority => 1,
			c_opt_goal => 0,
			c_has_sclr => 0,
			c_width => 8,
			c_verbosity => 0,
			c_ainit_val => "00000000",
			c_has_ce => 1,
			c_sync_enable => 0,
			c_depth => 16,
			c_sinit_val => "00000000",
			c_has_sset => 0,
			c_has_sinit => 0,
			c_mem_init_file => "asr_11_0_372caaa934b22d95.mif",
			c_shift_type => 1,
			c_default_data => "00000000",
			c_reg_last_bit => 0,
			c_xdevicefamily => "virtex5",
			c_addr_width => 4);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_asr_11_0_372caaa934b22d95
		port map (
			a => a,
			d => d,
			clk => clk,
			ce => ce,
			q => q);
-- synthesis translate_on

END asr_11_0_372caaa934b22d95_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_4bb0cbb813922871.vhd when simulating
-- the core, cntr_11_0_4bb0cbb813922871. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_4bb0cbb813922871 IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(14 downto 0));
END cntr_11_0_4bb0cbb813922871;

ARCHITECTURE cntr_11_0_4bb0cbb813922871_a OF cntr_11_0_4bb0cbb813922871 IS
-- synthesis translate_off
component wrapped_cntr_11_0_4bb0cbb813922871
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(14 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_4bb0cbb813922871 use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 15,
			c_verbosity => 0,
			c_has_load => 0,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_4bb0cbb813922871
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			q => q);
-- synthesis translate_on

END cntr_11_0_4bb0cbb813922871_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file mlt_11_2_0af49143406018f5.vhd when simulating
-- the core, mlt_11_2_0af49143406018f5. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY mlt_11_2_0af49143406018f5 IS
	port (
	clk: IN std_logic;
	a: IN std_logic_VECTOR(15 downto 0);
	b: IN std_logic_VECTOR(15 downto 0);
	ce: IN std_logic;
	sclr: IN std_logic;
	p: OUT std_logic_VECTOR(31 downto 0));
END mlt_11_2_0af49143406018f5;

ARCHITECTURE mlt_11_2_0af49143406018f5_a OF mlt_11_2_0af49143406018f5 IS
-- synthesis translate_off
component wrapped_mlt_11_2_0af49143406018f5
	port (
	clk: IN std_logic;
	a: IN std_logic_VECTOR(15 downto 0);
	b: IN std_logic_VECTOR(15 downto 0);
	ce: IN std_logic;
	sclr: IN std_logic;
	p: OUT std_logic_VECTOR(31 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_mlt_11_2_0af49143406018f5 use entity XilinxCoreLib.mult_gen_v11_2(behavioral)
		generic map(
			c_a_width => 16,
			c_b_type => 0,
			c_ce_overrides_sclr => 1,
			c_has_sclr => 1,
			c_round_pt => 0,
			c_model_type => 0,
			c_out_high => 31,
			c_verbosity => 0,
			c_mult_type => 1,
			c_ccm_imp => 0,
			c_latency => 3,
			c_has_ce => 1,
			c_has_zero_detect => 0,
			c_round_output => 0,
			c_optimize_goal => 1,
			c_xdevicefamily => "virtex5",
			c_a_type => 0,
			c_out_low => 0,
			c_b_width => 16,
			c_b_value => "10000001");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mlt_11_2_0af49143406018f5
		port map (
			clk => clk,
			a => a,
			b => b,
			ce => ce,
			sclr => sclr,
			p => p);
-- synthesis translate_on

END mlt_11_2_0af49143406018f5_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_33_d9b3e13a04ce0977.vhd when simulating
-- the core, bmg_33_d9b3e13a04ce0977. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_33_d9b3e13a04ce0977 IS
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	wea: IN std_logic_VECTOR(0 downto 0);
	addra: IN std_logic_VECTOR(10 downto 0);
	dina: IN std_logic_VECTOR(31 downto 0);
	douta: OUT std_logic_VECTOR(31 downto 0));
END bmg_33_d9b3e13a04ce0977;

ARCHITECTURE bmg_33_d9b3e13a04ce0977_a OF bmg_33_d9b3e13a04ce0977 IS
-- synthesis translate_off
component wrapped_bmg_33_d9b3e13a04ce0977
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	wea: IN std_logic_VECTOR(0 downto 0);
	addra: IN std_logic_VECTOR(10 downto 0);
	dina: IN std_logic_VECTOR(31 downto 0);
	douta: OUT std_logic_VECTOR(31 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_bmg_33_d9b3e13a04ce0977 use entity XilinxCoreLib.blk_mem_gen_v3_3(behavioral)
		generic map(
			c_has_regceb => 0,
			c_has_regcea => 0,
			c_mem_type => 0,
			c_rstram_b => 0,
			c_rstram_a => 0,
			c_has_injecterr => 0,
			c_rst_type => "SYNC",
			c_prim_type => 1,
			c_read_width_b => 32,
			c_initb_val => "0",
			c_family => "virtex5",
			c_read_width_a => 32,
			c_disable_warn_bhv_coll => 0,
			c_write_mode_b => "WRITE_FIRST",
			c_init_file_name => "bmg_33_d9b3e13a04ce0977.mif",
			c_write_mode_a => "READ_FIRST",
			c_mux_pipeline_stages => 0,
			c_has_mem_output_regs_b => 0,
			c_has_mem_output_regs_a => 1,
			c_load_init_file => 1,
			c_xdevicefamily => "virtex5",
			c_write_depth_b => 2048,
			c_write_depth_a => 2048,
			c_has_rstb => 0,
			c_has_rsta => 0,
			c_has_mux_output_regs_b => 0,
			c_inita_val => "0",
			c_has_mux_output_regs_a => 0,
			c_addra_width => 11,
			c_addrb_width => 11,
			c_default_data => "0",
			c_use_ecc => 0,
			c_algorithm => 1,
			c_disable_warn_bhv_range => 0,
			c_write_width_b => 32,
			c_write_width_a => 32,
			c_read_depth_b => 2048,
			c_read_depth_a => 2048,
			c_byte_size => 9,
			c_sim_collision_check => "ALL",
			c_common_clk => 0,
			c_wea_width => 1,
			c_has_enb => 0,
			c_web_width => 1,
			c_has_ena => 1,
			c_use_byte_web => 0,
			c_use_byte_wea => 0,
			c_rst_priority_b => "CE",
			c_rst_priority_a => "CE",
			c_use_default_data => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_33_d9b3e13a04ce0977
		port map (
			clka => clka,
			ena => ena,
			wea => wea,
			addra => addra,
			dina => dina,
			douta => douta);
-- synthesis translate_on

END bmg_33_d9b3e13a04ce0977_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_14a789a49ff66b1b.vhd when simulating
-- the core, cntr_11_0_14a789a49ff66b1b. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_14a789a49ff66b1b IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	load: IN std_logic;
	l: IN std_logic_VECTOR(11 downto 0);
	q: OUT std_logic_VECTOR(11 downto 0));
END cntr_11_0_14a789a49ff66b1b;

ARCHITECTURE cntr_11_0_14a789a49ff66b1b_a OF cntr_11_0_14a789a49ff66b1b IS
-- synthesis translate_off
component wrapped_cntr_11_0_14a789a49ff66b1b
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	load: IN std_logic;
	l: IN std_logic_VECTOR(11 downto 0);
	q: OUT std_logic_VECTOR(11 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_14a789a49ff66b1b use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 1,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 12,
			c_verbosity => 0,
			c_has_load => 1,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_14a789a49ff66b1b
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			load => load,
			l => l,
			q => q);
-- synthesis translate_on

END cntr_11_0_14a789a49ff66b1b_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_ae406e50e98e0e45.vhd when simulating
-- the core, cntr_11_0_ae406e50e98e0e45. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_ae406e50e98e0e45 IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(10 downto 0));
END cntr_11_0_ae406e50e98e0e45;

ARCHITECTURE cntr_11_0_ae406e50e98e0e45_a OF cntr_11_0_ae406e50e98e0e45 IS
-- synthesis translate_off
component wrapped_cntr_11_0_ae406e50e98e0e45
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(10 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_ae406e50e98e0e45 use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 11,
			c_verbosity => 0,
			c_has_load => 0,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_ae406e50e98e0e45
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			q => q);
-- synthesis translate_on

END cntr_11_0_ae406e50e98e0e45_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_33_4c2b84f72036519d.vhd when simulating
-- the core, bmg_33_4c2b84f72036519d. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_33_4c2b84f72036519d IS
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	addra: IN std_logic_VECTOR(10 downto 0);
	douta: OUT std_logic_VECTOR(8 downto 0));
END bmg_33_4c2b84f72036519d;

ARCHITECTURE bmg_33_4c2b84f72036519d_a OF bmg_33_4c2b84f72036519d IS
-- synthesis translate_off
component wrapped_bmg_33_4c2b84f72036519d
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	addra: IN std_logic_VECTOR(10 downto 0);
	douta: OUT std_logic_VECTOR(8 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_bmg_33_4c2b84f72036519d use entity XilinxCoreLib.blk_mem_gen_v3_3(behavioral)
		generic map(
			c_has_regceb => 0,
			c_has_regcea => 0,
			c_mem_type => 3,
			c_rstram_b => 0,
			c_rstram_a => 0,
			c_has_injecterr => 0,
			c_rst_type => "SYNC",
			c_prim_type => 1,
			c_read_width_b => 9,
			c_initb_val => "0",
			c_family => "virtex5",
			c_read_width_a => 9,
			c_disable_warn_bhv_coll => 0,
			c_write_mode_b => "WRITE_FIRST",
			c_init_file_name => "bmg_33_4c2b84f72036519d.mif",
			c_write_mode_a => "WRITE_FIRST",
			c_mux_pipeline_stages => 0,
			c_has_mem_output_regs_b => 0,
			c_has_mem_output_regs_a => 0,
			c_load_init_file => 1,
			c_xdevicefamily => "virtex5",
			c_write_depth_b => 2048,
			c_write_depth_a => 2048,
			c_has_rstb => 0,
			c_has_rsta => 0,
			c_has_mux_output_regs_b => 0,
			c_inita_val => "0",
			c_has_mux_output_regs_a => 0,
			c_addra_width => 11,
			c_addrb_width => 11,
			c_default_data => "0",
			c_use_ecc => 0,
			c_algorithm => 1,
			c_disable_warn_bhv_range => 0,
			c_write_width_b => 9,
			c_write_width_a => 9,
			c_read_depth_b => 2048,
			c_read_depth_a => 2048,
			c_byte_size => 9,
			c_sim_collision_check => "ALL",
			c_common_clk => 0,
			c_wea_width => 1,
			c_has_enb => 0,
			c_web_width => 1,
			c_has_ena => 1,
			c_use_byte_web => 0,
			c_use_byte_wea => 0,
			c_rst_priority_b => "CE",
			c_rst_priority_a => "CE",
			c_use_default_data => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_33_4c2b84f72036519d
		port map (
			clka => clka,
			ena => ena,
			addra => addra,
			douta => douta);
-- synthesis translate_on

END bmg_33_4c2b84f72036519d_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_f233f255cb1ca263.vhd when simulating
-- the core, cntr_11_0_f233f255cb1ca263. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_f233f255cb1ca263 IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(26 downto 0));
END cntr_11_0_f233f255cb1ca263;

ARCHITECTURE cntr_11_0_f233f255cb1ca263_a OF cntr_11_0_f233f255cb1ca263 IS
-- synthesis translate_off
component wrapped_cntr_11_0_f233f255cb1ca263
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(26 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_f233f255cb1ca263 use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 27,
			c_verbosity => 0,
			c_has_load => 0,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_f233f255cb1ca263
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			q => q);
-- synthesis translate_on

END cntr_11_0_f233f255cb1ca263_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_33_7de9efda5baafcf4.vhd when simulating
-- the core, bmg_33_7de9efda5baafcf4. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_33_7de9efda5baafcf4 IS
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	addra: IN std_logic_VECTOR(10 downto 0);
	douta: OUT std_logic_VECTOR(7 downto 0));
END bmg_33_7de9efda5baafcf4;

ARCHITECTURE bmg_33_7de9efda5baafcf4_a OF bmg_33_7de9efda5baafcf4 IS
-- synthesis translate_off
component wrapped_bmg_33_7de9efda5baafcf4
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	addra: IN std_logic_VECTOR(10 downto 0);
	douta: OUT std_logic_VECTOR(7 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_bmg_33_7de9efda5baafcf4 use entity XilinxCoreLib.blk_mem_gen_v3_3(behavioral)
		generic map(
			c_has_regceb => 0,
			c_has_regcea => 0,
			c_mem_type => 3,
			c_rstram_b => 0,
			c_rstram_a => 0,
			c_has_injecterr => 0,
			c_rst_type => "SYNC",
			c_prim_type => 1,
			c_read_width_b => 8,
			c_initb_val => "0",
			c_family => "virtex5",
			c_read_width_a => 8,
			c_disable_warn_bhv_coll => 0,
			c_write_mode_b => "WRITE_FIRST",
			c_init_file_name => "bmg_33_7de9efda5baafcf4.mif",
			c_write_mode_a => "WRITE_FIRST",
			c_mux_pipeline_stages => 0,
			c_has_mem_output_regs_b => 0,
			c_has_mem_output_regs_a => 1,
			c_load_init_file => 1,
			c_xdevicefamily => "virtex5",
			c_write_depth_b => 2048,
			c_write_depth_a => 2048,
			c_has_rstb => 0,
			c_has_rsta => 0,
			c_has_mux_output_regs_b => 0,
			c_inita_val => "0",
			c_has_mux_output_regs_a => 0,
			c_addra_width => 11,
			c_addrb_width => 11,
			c_default_data => "0",
			c_use_ecc => 0,
			c_algorithm => 1,
			c_disable_warn_bhv_range => 0,
			c_write_width_b => 8,
			c_write_width_a => 8,
			c_read_depth_b => 2048,
			c_read_depth_a => 2048,
			c_byte_size => 9,
			c_sim_collision_check => "ALL",
			c_common_clk => 0,
			c_wea_width => 1,
			c_has_enb => 0,
			c_web_width => 1,
			c_has_ena => 1,
			c_use_byte_web => 0,
			c_use_byte_wea => 0,
			c_rst_priority_b => "CE",
			c_rst_priority_a => "CE",
			c_use_default_data => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_33_7de9efda5baafcf4
		port map (
			clka => clka,
			ena => ena,
			addra => addra,
			douta => douta);
-- synthesis translate_on

END bmg_33_7de9efda5baafcf4_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file mlt_11_2_fb712a1e6f4360e8.vhd when simulating
-- the core, mlt_11_2_fb712a1e6f4360e8. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY mlt_11_2_fb712a1e6f4360e8 IS
	port (
	clk: IN std_logic;
	a: IN std_logic_VECTOR(8 downto 0);
	b: IN std_logic_VECTOR(7 downto 0);
	ce: IN std_logic;
	sclr: IN std_logic;
	p: OUT std_logic_VECTOR(16 downto 0));
END mlt_11_2_fb712a1e6f4360e8;

ARCHITECTURE mlt_11_2_fb712a1e6f4360e8_a OF mlt_11_2_fb712a1e6f4360e8 IS
-- synthesis translate_off
component wrapped_mlt_11_2_fb712a1e6f4360e8
	port (
	clk: IN std_logic;
	a: IN std_logic_VECTOR(8 downto 0);
	b: IN std_logic_VECTOR(7 downto 0);
	ce: IN std_logic;
	sclr: IN std_logic;
	p: OUT std_logic_VECTOR(16 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_mlt_11_2_fb712a1e6f4360e8 use entity XilinxCoreLib.mult_gen_v11_2(behavioral)
		generic map(
			c_a_width => 9,
			c_b_type => 0,
			c_ce_overrides_sclr => 1,
			c_has_sclr => 1,
			c_round_pt => 0,
			c_model_type => 0,
			c_out_high => 16,
			c_verbosity => 0,
			c_mult_type => 1,
			c_ccm_imp => 0,
			c_latency => 3,
			c_has_ce => 1,
			c_has_zero_detect => 0,
			c_round_output => 0,
			c_optimize_goal => 1,
			c_xdevicefamily => "virtex5",
			c_a_type => 1,
			c_out_low => 0,
			c_b_width => 8,
			c_b_value => "10000001");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mlt_11_2_fb712a1e6f4360e8
		port map (
			clk => clk,
			a => a,
			b => b,
			ce => ce,
			sclr => sclr,
			p => p);
-- synthesis translate_on

END mlt_11_2_fb712a1e6f4360e8_a;


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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
package conv_pkg is
    constant simulating : boolean := false
      -- synopsys translate_off
        or true
      -- synopsys translate_on
    ;
    constant xlUnsigned : integer := 1;
    constant xlSigned : integer := 2;
    constant xlWrap : integer := 1;
    constant xlSaturate : integer := 2;
    constant xlTruncate : integer := 1;
    constant xlRound : integer := 2;
    constant xlRoundBanker : integer := 3;
    constant xlAddMode : integer := 1;
    constant xlSubMode : integer := 2;
    attribute black_box : boolean;
    attribute syn_black_box : boolean;
    attribute fpga_dont_touch: string;
    attribute box_type :  string;
    attribute keep : string;
    attribute syn_keep : boolean;
    function std_logic_vector_to_unsigned(inp : std_logic_vector) return unsigned;
    function unsigned_to_std_logic_vector(inp : unsigned) return std_logic_vector;
    function std_logic_vector_to_signed(inp : std_logic_vector) return signed;
    function signed_to_std_logic_vector(inp : signed) return std_logic_vector;
    function unsigned_to_signed(inp : unsigned) return signed;
    function signed_to_unsigned(inp : signed) return unsigned;
    function pos(inp : std_logic_vector; arith : INTEGER) return boolean;
    function all_same(inp: std_logic_vector) return boolean;
    function all_zeros(inp: std_logic_vector) return boolean;
    function is_point_five(inp: std_logic_vector) return boolean;
    function all_ones(inp: std_logic_vector) return boolean;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector;
    function cast (inp : std_logic_vector; old_bin_pt,
                   new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
        return std_logic_vector;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
        return unsigned;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
        return unsigned;
    function s2s_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function u2s_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function s2u_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2u_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2v_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function s2v_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                    new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function max_signed(width : INTEGER) return std_logic_vector;
    function min_signed(width : INTEGER) return std_logic_vector;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER) return std_logic_vector;
    function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                        old_arith, new_width, new_bin_pt, new_arith : INTEGER)
                        return std_logic_vector;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                          new_width: INTEGER)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width, arith : integer)
        return std_logic_vector;
    function max(L, R: INTEGER) return INTEGER;
    function min(L, R: INTEGER) return INTEGER;
    function "="(left,right: STRING) return boolean;
    function boolean_to_signed (inp : boolean; width: integer)
        return signed;
    function boolean_to_unsigned (inp : boolean; width: integer)
        return unsigned;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector;
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector;
    function hex_string_to_std_logic_vector (inp : string; width : integer)
        return std_logic_vector;
    function makeZeroBinStr (width : integer) return STRING;
    function and_reduce(inp: std_logic_vector) return std_logic;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean;
    function is_binary_string_undefined (inp : string)
        return boolean;
    function is_XorU(inp : std_logic_vector)
        return boolean;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector;
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector;
    constant display_precision : integer := 20;
    function real_to_string (inp : real) return string;
    function valid_bin_string(inp : string) return boolean;
    function std_logic_vector_to_bin_string(inp : std_logic_vector) return string;
    function std_logic_to_bin_string(inp : std_logic) return string;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string;
    type stdlogic_to_char_t is array(std_logic) of character;
    constant to_char : stdlogic_to_char_t := (
        'U' => 'U',
        'X' => 'X',
        '0' => '0',
        '1' => '1',
        'Z' => 'Z',
        'W' => 'W',
        'L' => 'L',
        'H' => 'H',
        '-' => '-');
    -- synopsys translate_on
end conv_pkg;
package body conv_pkg is
    function std_logic_vector_to_unsigned(inp : std_logic_vector)
        return unsigned
    is
    begin
        return unsigned (inp);
    end;
    function unsigned_to_std_logic_vector(inp : unsigned)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function std_logic_vector_to_signed(inp : std_logic_vector)
        return signed
    is
    begin
        return  signed (inp);
    end;
    function signed_to_std_logic_vector(inp : signed)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function unsigned_to_signed (inp : unsigned)
        return signed
    is
    begin
        return signed(std_logic_vector(inp));
    end;
    function signed_to_unsigned (inp : signed)
        return unsigned
    is
    begin
        return unsigned(std_logic_vector(inp));
    end;
    function pos(inp : std_logic_vector; arith : INTEGER)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            return true;
        else
            if vec(width-1) = '0' then
                return true;
            else
                return false;
            end if;
        end if;
        return true;
    end;
    function max_signed(width : INTEGER)
        return std_logic_vector
    is
        variable ones : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        ones := (others => '1');
        result(width-1) := '0';
        result(width-2 downto 0) := ones;
        return result;
    end;
    function min_signed(width : INTEGER)
        return std_logic_vector
    is
        variable zeros : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        zeros := (others => '0');
        result(width-1) := '1';
        result(width-2 downto 0) := zeros;
        return result;
    end;
    function and_reduce(inp: std_logic_vector) return std_logic
    is
        variable result: std_logic;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := vec(0);
        if width > 1 then
            for i in 1 to width-1 loop
                result := result and vec(i);
            end loop;
        end if;
        return result;
    end;
    function all_same(inp: std_logic_vector) return boolean
    is
        variable result: boolean;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := true;
        if width > 0 then
            for i in 1 to width-1 loop
                if vec(i) /= vec(0) then
                    result := false;
                end if;
            end loop;
        end if;
        return result;
    end;
    function all_zeros(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable zero : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        zero := (others => '0');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(zero)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function is_point_five(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (width > 1) then
           if ((vec(width-1) = '1') and (all_zeros(vec(width-2 downto 0)) = true)) then
               result := true;
           else
               result := false;
           end if;
        else
           if (vec(width-1) = '1') then
               result := true;
           else
               result := false;
           end if;
        end if;
        return result;
    end;
    function all_ones(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable one : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        one := (others => '1');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(one)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function full_precision_num_width(quantization, overflow, old_width,
                                      old_bin_pt, old_arith,
                                      new_width, new_bin_pt, new_arith : INTEGER)
        return integer
    is
        variable result : integer;
    begin
        result := old_width + 2;
        return result;
    end;
    function quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                 old_arith, new_width, new_bin_pt, new_arith
                                 : INTEGER)
        return integer
    is
        variable right_of_dp, left_of_dp, result : integer;
    begin
        right_of_dp := max(new_bin_pt, old_bin_pt);
        left_of_dp := max((new_width - new_bin_pt), (old_width - old_bin_pt));
        result := (old_width + 2) + (new_bin_pt - old_bin_pt);
        return result;
    end;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector
    is
        constant fp_width : integer :=
            full_precision_num_width(quantization, overflow, old_width,
                                     old_bin_pt, old_arith, new_width,
                                     new_bin_pt, new_arith);
        constant fp_bin_pt : integer := old_bin_pt;
        constant fp_arith : integer := old_arith;
        variable full_precision_result : std_logic_vector(fp_width-1 downto 0);
        constant q_width : integer :=
            quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith);
        constant q_bin_pt : integer := new_bin_pt;
        constant q_arith : integer := old_arith;
        variable quantized_result : std_logic_vector(q_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result := (others => '0');
        full_precision_result := cast(inp, old_bin_pt, fp_width, fp_bin_pt,
                                      fp_arith);
        if (quantization = xlRound) then
            quantized_result := round_towards_inf(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        elsif (quantization = xlRoundBanker) then
            quantized_result := round_towards_even(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        else
            quantized_result := trunc(full_precision_result, fp_width, fp_bin_pt,
                                      fp_arith, q_width, q_bin_pt, q_arith);
        end if;
        if (overflow = xlSaturate) then
            result := saturation_arith(quantized_result, q_width, q_bin_pt,
                                       q_arith, new_width, new_bin_pt, new_arith);
        else
             result := wrap_arith(quantized_result, q_width, q_bin_pt, q_arith,
                                  new_width, new_bin_pt, new_arith);
        end if;
        return result;
    end;
    function cast (inp : std_logic_vector; old_bin_pt, new_width,
                   new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        constant left_of_dp : integer := (new_width - new_bin_pt)
                                         - (old_width - old_bin_pt);
        constant right_of_dp : integer := (new_bin_pt - old_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable j   : integer;
    begin
        vec := inp;
        for i in new_width-1 downto 0 loop
            j := i - right_of_dp;
            if ( j > old_width-1) then
                if (new_arith = xlUnsigned) then
                    result(i) := '0';
                else
                    result(i) := vec(old_width-1);
                end if;
            elsif ( j >= 0) then
                result(i) := vec(j);
            else
                result(i) := '0';
            end if;
        end loop;
        return result;
    end;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
      return std_logic_vector
    is
    begin
        return inp(upper downto lower);
    end;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function s2s_cast (inp : signed; old_bin_pt, new_width, new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function s2u_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function u2s_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2u_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2v_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned);
    end;
    function s2v_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned);
    end;
    function boolean_to_signed (inp : boolean; width : integer)
        return signed
    is
        variable result : signed(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_unsigned (inp : boolean; width : integer)
        return unsigned
    is
        variable result : unsigned(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result(0) := inp;
        return result;
    end;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                                new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                result := zero_ext(vec(old_width-1 downto right_of_dp), new_width);
            else
                result := sign_ext(vec(old_width-1 downto right_of_dp), new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                result := zero_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            else
                result := sign_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            end if;
        end if;
        return result;
    end;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (new_arith = xlSigned) then
            if (vec(old_width-1) = '0') then
                one_or_zero(0) := '1';
            end if;
            if (right_of_dp >= 2) and (right_of_dp <= old_width) then
                if (all_zeros(vec(right_of_dp-2 downto 0)) = false) then
                    one_or_zero(0) := '1';
                end if;
            end if;
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                if vec(right_of_dp-1) = '0' then
                    one_or_zero(0) := '0';
                end if;
            else
                one_or_zero(0) := '0';
            end if;
        else
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (right_of_dp >= 1) and (right_of_dp <= old_width) then
            if (is_point_five(vec(right_of_dp-1 downto 0)) = false) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            else
                one_or_zero(0) :=  vec(right_of_dp);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER)
        return std_logic_vector
    is
        constant left_of_dp : integer := (old_width - old_bin_pt) -
                                         (new_width - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable overflow : boolean;
    begin
        vec := inp;
        overflow := true;
        result := (others => '0');
        if (new_width >= old_width) then
            overflow := false;
        end if;
        if ((old_arith = xlSigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if (old_arith = xlSigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    if (vec(new_width-1) = '0') then
                        overflow := false;
                    end if;
                end if;
            end if;
        end if;
        if (old_arith = xlUnsigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    overflow := false;
                end if;
            end if;
        end if;
        if ((old_arith = xlUnsigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if overflow then
            if new_arith = xlSigned then
                if vec(old_width-1) = '0' then
                    result := max_signed(new_width);
                else
                    result := min_signed(new_width);
                end if;
            else
                if ((old_arith = xlSigned) and vec(old_width-1) = '1') then
                    result := (others => '0');
                else
                    result := (others => '1');
                end if;
            end if;
        else
            if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
                if (vec(old_width-1) = '1') then
                    vec := (others => '0');
                end if;
            end if;
            if new_width <= old_width then
                result := vec(new_width-1 downto 0);
            else
                if new_arith = xlUnsigned then
                    result := zero_ext(vec, new_width);
                else
                    result := sign_ext(vec, new_width);
                end if;
            end if;
        end if;
        return result;
    end;
   function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                       old_arith, new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
        variable result_arith : integer;
    begin
        if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
            result_arith := xlSigned;
        end if;
        result := cast(inp, old_bin_pt, new_width, new_bin_pt, result_arith);
        return result;
    end;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER is
    begin
        return max(a_bin_pt, b_bin_pt);
    end;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER is
    begin
        return  max(a_width - a_bin_pt, b_width - b_bin_pt);
    end;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
        constant pad_pos : integer := new_width - orig_width - 1;
    begin
        vec := inp;
        pos := new_width-1;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pad_pos >= 0 then
                for i in pad_pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := vec(old_width-1);
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := '0';
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result(0) := inp;
        for i in new_width-1 downto 1 loop
            result(i) := '0';
        end loop;
        return result;
    end;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            result := zero_ext(vec, new_width);
        else
            result := sign_ext(vec, new_width);
        end if;
        return result;
    end;
    function pad_LSB(inp : std_logic_vector; new_width, arith: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
    begin
        vec := inp;
        pos := new_width-1;
        if (arith = xlUnsigned) then
            result(pos) := '0';
            pos := pos - 1;
        else
            result(pos) := vec(orig_width-1);
            pos := pos - 1;
        end if;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pos >= 0 then
                for i in pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                         new_width: INTEGER)
        return std_logic_vector
    is
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable padded_inp : std_logic_vector((old_width + delta)-1  downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if delta > 0 then
            padded_inp := pad_LSB(vec, old_width+delta);
            result := extend_MSB(padded_inp, new_width, new_arith);
        else
            result := extend_MSB(vec, new_width, new_arith);
        end if;
        return result;
    end;
    function max(L, R: INTEGER) return INTEGER is
    begin
        if L > R then
            return L;
        else
            return R;
        end if;
    end;
    function min(L, R: INTEGER) return INTEGER is
    begin
        if L < R then
            return L;
        else
            return R;
        end if;
    end;
    function "="(left,right: STRING) return boolean is
    begin
        if (left'length /= right'length) then
            return false;
        else
            test : for i in 1 to left'length loop
                if left(i) /= right(i) then
                    return false;
                end if;
            end loop test;
            return true;
        end if;
    end;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'X' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_binary_string_undefined (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'U' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_XorU(inp : std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 0 to width-1 loop
            if (vec(i) = 'U') or (vec(i) = 'X') then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real
    is
        variable  vec : std_logic_vector(inp'length-1 downto 0);
        variable result, shift_val, undefined_real : real;
        variable neg_num : boolean;
    begin
        vec := inp;
        result := 0.0;
        neg_num := false;
        if vec(inp'length-1) = '1' then
            neg_num := true;
        end if;
        for i in 0 to inp'length-1 loop
            if  vec(i) = 'U' or vec(i) = 'X' then
                return undefined_real;
            end if;
            if arith = xlSigned then
                if neg_num then
                    if vec(i) = '0' then
                        result := result + 2.0**i;
                    end if;
                else
                    if vec(i) = '1' then
                        result := result + 2.0**i;
                    end if;
                end if;
            else
                if vec(i) = '1' then
                    result := result + 2.0**i;
                end if;
            end if;
        end loop;
        if arith = xlSigned then
            if neg_num then
                result := result + 1.0;
                result := result * (-1.0);
            end if;
        end if;
        shift_val := 2.0**(-1*bin_pt);
        result := result * shift_val;
        return result;
    end;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real
    is
        variable result : real := 0.0;
    begin
        if inp = '1' then
            result := 1.0;
        end if;
        if arith = xlSigned then
            assert false
                report "It doesn't make sense to convert a 1 bit number to a signed real.";
        end if;
        return result;
    end;
    -- synopsys translate_on
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
    begin
        if (arith = xlSigned) then
            signed_val := to_signed(inp, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(inp, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer
    is
        constant width : integer := inp'length;
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
        variable result : integer;
    begin
        if (arith = xlSigned) then
            signed_val := std_logic_vector_to_signed(inp);
            result := to_integer(signed_val);
        else
            unsigned_val := std_logic_vector_to_unsigned(inp);
            result := to_integer(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer
    is
    begin
        if inp = '1' then
            return 1;
        else
            return 0;
        end if;
    end;
    function makeZeroBinStr (width : integer) return STRING is
        variable result : string(1 to width+3);
    begin
        result(1) := '0';
        result(2) := 'b';
        for i in 3 to width+2 loop
            result(i) := '0';
        end loop;
        result(width+3) := '.';
        return result;
    end;
    -- synopsys translate_off
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
    begin
        result := (others => '0');
        return result;
    end;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable real_val : real;
        variable int_val : integer;
        variable result : std_logic_vector(width-1 downto 0) := (others => '0');
        variable unsigned_val : unsigned(width-1 downto 0) := (others => '0');
        variable signed_val : signed(width-1 downto 0) := (others => '0');
    begin
        real_val := inp;
        int_val := integer(real_val * 2.0**(bin_pt));
        if (arith = xlSigned) then
            signed_val := to_signed(int_val, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(int_val, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    -- synopsys translate_on
    function valid_bin_string (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
    begin
        vec := inp;
        if (vec(1) = '0' and vec(2) = 'b') then
            return true;
        else
            return false;
        end if;
    end;
    function hex_string_to_std_logic_vector(inp: string; width : integer)
        return std_logic_vector is
        constant strlen       : integer := inp'LENGTH;
        variable result       : std_logic_vector(width-1 downto 0);
        variable bitval       : std_logic_vector((strlen*4)-1 downto 0);
        variable posn         : integer;
        variable ch           : character;
        variable vec          : string(1 to strlen);
    begin
        vec := inp;
        result := (others => '0');
        posn := (strlen*4)-1;
        for i in 1 to strlen loop
            ch := vec(i);
            case ch is
                when '0' => bitval(posn downto posn-3) := "0000";
                when '1' => bitval(posn downto posn-3) := "0001";
                when '2' => bitval(posn downto posn-3) := "0010";
                when '3' => bitval(posn downto posn-3) := "0011";
                when '4' => bitval(posn downto posn-3) := "0100";
                when '5' => bitval(posn downto posn-3) := "0101";
                when '6' => bitval(posn downto posn-3) := "0110";
                when '7' => bitval(posn downto posn-3) := "0111";
                when '8' => bitval(posn downto posn-3) := "1000";
                when '9' => bitval(posn downto posn-3) := "1001";
                when 'A' | 'a' => bitval(posn downto posn-3) := "1010";
                when 'B' | 'b' => bitval(posn downto posn-3) := "1011";
                when 'C' | 'c' => bitval(posn downto posn-3) := "1100";
                when 'D' | 'd' => bitval(posn downto posn-3) := "1101";
                when 'E' | 'e' => bitval(posn downto posn-3) := "1110";
                when 'F' | 'f' => bitval(posn downto posn-3) := "1111";
                when others => bitval(posn downto posn-3) := "XXXX";
                               -- synopsys translate_off
                               ASSERT false
                                   REPORT "Invalid hex value" SEVERITY ERROR;
                               -- synopsys translate_on
            end case;
            posn := posn - 4;
        end loop;
        if (width <= strlen*4) then
            result :=  bitval(width-1 downto 0);
        else
            result((strlen*4)-1 downto 0) := bitval;
        end if;
        return result;
    end;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector
    is
        variable pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(inp'length-1 downto 0);
    begin
        vec := inp;
        pos := inp'length-1;
        result := (others => '0');
        for i in 1 to vec'length loop
            -- synopsys translate_off
            if (pos < 0) and (vec(i) = '0' or vec(i) = '1' or vec(i) = 'X' or vec(i) = 'U')  then
                assert false
                    report "Input string is larger than output std_logic_vector. Truncating output.";
                return result;
            end if;
            -- synopsys translate_on
            if vec(i) = '0' then
                result(pos) := '0';
                pos := pos - 1;
            end if;
            if vec(i) = '1' then
                result(pos) := '1';
                pos := pos - 1;
            end if;
            -- synopsys translate_off
            if (vec(i) = 'X' or vec(i) = 'U') then
                result(pos) := 'U';
                pos := pos - 1;
            end if;
            -- synopsys translate_on
        end loop;
        return result;
    end;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector
    is
        constant str_width : integer := width + 4;
        constant inp_len : integer := inp'length;
        constant num_elements : integer := (inp_len + 1)/str_width;
        constant reverse_index : integer := (num_elements-1) - index;
        variable left_pos : integer;
        variable right_pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := (others => '0');
        if (reverse_index = 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := 1;
            right_pos := width + 3;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        if (reverse_index > 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := (reverse_index * str_width) + 1;
            right_pos := left_pos + width + 2;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        return result;
    end;
   -- synopsys translate_off
    function std_logic_vector_to_bin_string(inp : std_logic_vector)
        return string
    is
        variable vec : std_logic_vector(1 to inp'length);
        variable result : string(vec'range);
    begin
        vec := inp;
        for i in vec'range loop
            result(i) := to_char(vec(i));
        end loop;
        return result;
    end;
    function std_logic_to_bin_string(inp : std_logic)
        return string
    is
        variable result : string(1 to 3);
    begin
        result(1) := '0';
        result(2) := 'b';
        result(3) := to_char(inp);
        return result;
    end;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string
    is
        variable width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable str_pos : integer;
        variable result : string(1 to width+3);
    begin
        vec := inp;
        str_pos := 1;
        result(str_pos) := '0';
        str_pos := 2;
        result(str_pos) := 'b';
        str_pos := 3;
        for i in width-1 downto 0  loop
            if (((width+3) - bin_pt) = str_pos) then
                result(str_pos) := '.';
                str_pos := str_pos + 1;
            end if;
            result(str_pos) := to_char(vec(i));
            str_pos := str_pos + 1;
        end loop;
        if (bin_pt = 0) then
            result(str_pos) := '.';
        end if;
        return result;
    end;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string
    is
        variable result : string(1 to width);
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := real_to_std_logic_vector(inp, width, bin_pt, arith);
        result := std_logic_vector_to_bin_string(vec);
        return result;
    end;
    function real_to_string (inp : real) return string
    is
        variable result : string(1 to display_precision) := (others => ' ');
    begin
        result(real'image(inp)'range) := real'image(inp);
        return result;
    end;
    -- synopsys translate_on
end conv_pkg;

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
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity srl17e is
    generic (width : integer:=16;
             latency : integer :=8);
    port (clk   : in std_logic;
          ce    : in std_logic;
          d     : in std_logic_vector(width-1 downto 0);
          q     : out std_logic_vector(width-1 downto 0));
end srl17e;
architecture structural of srl17e is
    component SRL16E
        port (D   : in STD_ULOGIC;
              CE  : in STD_ULOGIC;
              CLK : in STD_ULOGIC;
              A0  : in STD_ULOGIC;
              A1  : in STD_ULOGIC;
              A2  : in STD_ULOGIC;
              A3  : in STD_ULOGIC;
              Q   : out STD_ULOGIC);
    end component;
    attribute syn_black_box of SRL16E : component is true;
    attribute fpga_dont_touch of SRL16E : component is "true";
    component FDE
        port(
            Q  :        out   STD_ULOGIC;
            D  :        in    STD_ULOGIC;
            C  :        in    STD_ULOGIC;
            CE :        in    STD_ULOGIC);
    end component;
    attribute syn_black_box of FDE : component is true;
    attribute fpga_dont_touch of FDE : component is "true";
    constant a : std_logic_vector(4 downto 0) :=
        integer_to_std_logic_vector(latency-2,5,xlSigned);
    signal d_delayed : std_logic_vector(width-1 downto 0);
    signal srl16_out : std_logic_vector(width-1 downto 0);
begin
    d_delayed <= d after 200 ps;
    reg_array : for i in 0 to width-1 generate
        srl16_used: if latency > 1 generate
            u1 : srl16e port map(clk => clk,
                                 d => d_delayed(i),
                                 q => srl16_out(i),
                                 ce => ce,
                                 a0 => a(0),
                                 a1 => a(1),
                                 a2 => a(2),
                                 a3 => a(3));
        end generate;
        srl16_not_used: if latency <= 1 generate
            srl16_out(i) <= d_delayed(i);
        end generate;
        fde_used: if latency /= 0  generate
            u2 : fde port map(c => clk,
                              d => srl16_out(i),
                              q => q(i),
                              ce => ce);
        end generate;
        fde_not_used: if latency = 0  generate
            q(i) <= srl16_out(i);
        end generate;
    end generate;
 end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg;
architecture structural of synth_reg is
    component srl17e
        generic (width : integer:=16;
                 latency : integer :=8);
        port (clk : in std_logic;
              ce  : in std_logic;
              d   : in std_logic_vector(width-1 downto 0);
              q   : out std_logic_vector(width-1 downto 0));
    end component;
    function calc_num_srl17es (latency : integer)
        return integer
    is
        variable remaining_latency : integer;
        variable result : integer;
    begin
        result := latency / 17;
        remaining_latency := latency - (result * 17);
        if (remaining_latency /= 0) then
            result := result + 1;
        end if;
        return result;
    end;
    constant complete_num_srl17es : integer := latency / 17;
    constant num_srl17es : integer := calc_num_srl17es(latency);
    constant remaining_latency : integer := latency - (complete_num_srl17es * 17);
    type register_array is array (num_srl17es downto 0) of
        std_logic_vector(width-1 downto 0);
    signal z : register_array;
begin
    z(0) <= i;
    complete_ones : if complete_num_srl17es > 0 generate
        srl17e_array: for i in 0 to complete_num_srl17es-1 generate
            delay_comp : srl17e
                generic map (width => width,
                             latency => 17)
                port map (clk => clk,
                          ce  => ce,
                          d       => z(i),
                          q       => z(i+1));
        end generate;
    end generate;
    partial_one : if remaining_latency > 0 generate
        last_srl17e : srl17e
            generic map (width => width,
                         latency => remaining_latency)
            port map (clk => clk,
                      ce  => ce,
                      d   => z(num_srl17es-1),
                      q   => z(num_srl17es));
    end generate;
    o <= z(num_srl17es);
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg_reg;
architecture behav of synth_reg_reg is
  type reg_array_type is array (latency-1 downto 0) of std_logic_vector(width -1 downto 0);
  signal reg_bank : reg_array_type := (others => (others => '0'));
  signal reg_bank_in : reg_array_type := (others => (others => '0'));
  attribute syn_allow_retiming : boolean;
  attribute syn_srlstyle : string;
  attribute syn_allow_retiming of reg_bank : signal is true;
  attribute syn_allow_retiming of reg_bank_in : signal is true;
  attribute syn_srlstyle of reg_bank : signal is "registers";
  attribute syn_srlstyle of reg_bank_in : signal is "registers";
begin
  latency_eq_0: if latency = 0 generate
    o <= i;
  end generate latency_eq_0;
  latency_gt_0: if latency >= 1 generate
    o <= reg_bank(latency-1);
    reg_bank_in(0) <= i;
    loop_gen: for idx in latency-2 downto 0 generate
      reg_bank_in(idx+1) <= reg_bank(idx);
    end generate loop_gen;
    sync_loop: for sync_idx in latency-1 downto 0 generate
      sync_proc: process (clk)
      begin
        if clk'event and clk = '1' then
          if ce = '1'  then
            reg_bank(sync_idx) <= reg_bank_in(sync_idx);
          end if;
        end if;
      end process sync_proc;
    end generate sync_loop;
  end generate latency_gt_0;
end behav;

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
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity single_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000"
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end single_reg_w_init;
architecture structural of single_reg_w_init is
  function build_init_const(width: integer;
                            init_index: integer;
                            init_value: bit_vector)
    return std_logic_vector
  is
    variable result: std_logic_vector(width - 1 downto 0);
  begin
    if init_index = 0 then
      result := (others => '0');
    elsif init_index = 1 then
      result := (others => '0');
      result(0) := '1';
    else
      result := to_stdlogicvector(init_value);
    end if;
    return result;
  end;
  component fdre
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      r: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdre: component is true;
  attribute fpga_dont_touch of fdre: component is "true";
  component fdse
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      s: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdse: component is true;
  attribute fpga_dont_touch of fdse: component is "true";
  constant init_const: std_logic_vector(width - 1 downto 0)
    := build_init_const(width, init_index, init_value);
begin
  fd_prim_array: for index in 0 to width - 1 generate
    bit_is_0: if (init_const(index) = '0') generate
      fdre_comp: fdre
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          r => clr
        );
    end generate;
    bit_is_1: if (init_const(index) = '1') generate
      fdse_comp: fdse
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          s => clr
        );
    end generate;
  end generate;
end architecture structural;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000";
    latency: integer := 1
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end synth_reg_w_init;
architecture structural of synth_reg_w_init is
  component single_reg_w_init
    generic (
      width: integer := 8;
      init_index: integer := 0;
      init_value: bit_vector := b"0000"
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal dly_i: std_logic_vector((latency + 1) * width - 1 downto 0);
  signal dly_clr: std_logic;
begin
  latency_eq_0: if (latency = 0) generate
    o <= i;
  end generate;
  latency_gt_0: if (latency >= 1) generate
    dly_i((latency + 1) * width - 1 downto latency * width) <= i
      after 200 ps;
    dly_clr <= clr after 200 ps;
    fd_array: for index in latency downto 1 generate
       reg_comp: single_reg_w_init
          generic map (
            width => width,
            init_index => init_index,
            init_value => init_value
          )
          port map (
            clk => clk,
            i => dly_i((index + 1) * width - 1 downto index * width),
            o => dly_i(index * width - 1 downto (index - 1) * width),
            ce => ce,
            clr => dly_clr
          );
    end generate;
    o <= dly_i(width - 1 downto 0);
  end generate;
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_e8aae5d3bb is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_e8aae5d3bb;


architecture behavior of constant_e8aae5d3bb is
begin
  op <= "10000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_240f289783 is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_240f289783;


architecture behavior of constant_240f289783 is
begin
  op <= "10000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_387191112d is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((8 - 1) downto 0);
    d1 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_387191112d;


architecture behavior of mux_387191112d is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((8 - 1) downto 0);
  signal d1_1_27: std_logic_vector((8 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((8 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_50d6ab372f is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_50d6ab372f;


architecture behavior of relational_50d6ab372f is
  signal a_1_31: signed((8 - 1) downto 0);
  signal b_1_34: signed((8 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;


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
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xldelay is
   generic(width        : integer := -1;
           latency      : integer := -1;
           reg_retiming : integer := 0);
   port(d       : in std_logic_vector (width-1 downto 0);
        ce      : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        q       : out std_logic_vector (width-1 downto 0));
end xldelay;
architecture behavior of xldelay is
   component synth_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   component synth_reg_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   signal internal_ce  : std_logic;
begin
   internal_ce  <= ce and en;
   srl_delay: if (reg_retiming = 0) or (latency < 1) generate
     synth_reg_srl_inst : synth_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => '0',
         clk => clk,
         o   => q);
   end generate srl_delay;
   reg_delay: if (reg_retiming = 1) and (latency >= 1) generate
     synth_reg_reg_inst : synth_reg_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => '0',
         clk => clk,
         o   => q);
   end generate reg_delay;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_e5b38cca3b is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_e5b38cca3b;


architecture behavior of inverter_e5b38cca3b is
  signal ip_1_26: boolean;
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of boolean;
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => false);
  signal op_mem_22_20_front_din: boolean;
  signal op_mem_22_20_back: boolean;
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: boolean;
begin
  ip_1_26 <= ((ip) = "1");
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_push_front_pop_back_en <= '0';
  op <= boolean_to_vector(internal_ip_12_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_80f90b97d0 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_80f90b97d0;


architecture behavior of logical_80f90b97d0 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_c50603e098 is
  port (
    op : out std_logic_vector((28 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_c50603e098;


architecture behavior of constant_c50603e098 is
begin
  op <= "1011111010111100001000000000";
end behavior;


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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlcounter_free is
  generic (
    core_name0: string := "";
    op_width: integer := 5;
    op_arith: integer := xlSigned
  );
  port (
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    op: out std_logic_vector(op_width - 1 downto 0);
    up: in std_logic_vector(0 downto 0) := (others => '0');
    load: in std_logic_vector(0 downto 0) := (others => '0');
    din: in std_logic_vector(op_width - 1 downto 0) := (others => '0');
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0)
  );
end xlcounter_free ;
architecture behavior of xlcounter_free is
  component cntr_11_0_05e2750227d8d748
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_05e2750227d8d748:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_05e2750227d8d748:
    component is "true";
  attribute box_type of cntr_11_0_05e2750227d8d748:
    component  is "black_box";
  component cntr_11_0_29076546cca80226
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_29076546cca80226:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_29076546cca80226:
    component is "true";
  attribute box_type of cntr_11_0_29076546cca80226:
    component  is "black_box";
  component cntr_11_0_ae406e50e98e0e45
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_ae406e50e98e0e45:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_ae406e50e98e0e45:
    component is "true";
  attribute box_type of cntr_11_0_ae406e50e98e0e45:
    component  is "black_box";
  component cntr_11_0_86f7251946088efb
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_86f7251946088efb:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_86f7251946088efb:
    component is "true";
  attribute box_type of cntr_11_0_86f7251946088efb:
    component  is "black_box";
  component cntr_11_0_14a789a49ff66b1b
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_14a789a49ff66b1b:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_14a789a49ff66b1b:
    component is "true";
  attribute box_type of cntr_11_0_14a789a49ff66b1b:
    component  is "black_box";
  component cntr_11_0_f233f255cb1ca263
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_f233f255cb1ca263:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_f233f255cb1ca263:
    component is "true";
  attribute box_type of cntr_11_0_f233f255cb1ca263:
    component  is "black_box";
  component cntr_11_0_87d335e994d59139
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_87d335e994d59139:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_87d335e994d59139:
    component is "true";
  attribute box_type of cntr_11_0_87d335e994d59139:
    component  is "black_box";
-- synopsys translate_off
  constant zeroVec: std_logic_vector(op_width - 1 downto 0) := (others => '0');
  constant oneVec: std_logic_vector(op_width - 1 downto 0) := (others => '1');
  constant zeroStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(zeroVec);
  constant oneStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(oneVec);
-- synopsys translate_on
  signal core_sinit: std_logic;
  signal core_ce: std_logic;
  signal op_net: std_logic_vector(op_width - 1 downto 0);
begin
  core_ce <= ce and en(0);
  core_sinit <= (clr or rst(0)) and ce;
  op <= op_net;
  comp0: if ((core_name0 = "cntr_11_0_05e2750227d8d748")) generate
    core_instance0: cntr_11_0_05e2750227d8d748
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp1: if ((core_name0 = "cntr_11_0_29076546cca80226")) generate
    core_instance1: cntr_11_0_29076546cca80226
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp2: if ((core_name0 = "cntr_11_0_ae406e50e98e0e45")) generate
    core_instance2: cntr_11_0_ae406e50e98e0e45
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp3: if ((core_name0 = "cntr_11_0_86f7251946088efb")) generate
    core_instance3: cntr_11_0_86f7251946088efb
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp4: if ((core_name0 = "cntr_11_0_14a789a49ff66b1b")) generate
    core_instance4: cntr_11_0_14a789a49ff66b1b
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp5: if ((core_name0 = "cntr_11_0_f233f255cb1ca263")) generate
    core_instance5: cntr_11_0_f233f255cb1ca263
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp6: if ((core_name0 = "cntr_11_0_87d335e994d59139")) generate
    core_instance6: cntr_11_0_87d335e994d59139
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_8759749125 is
  port (
    a : in std_logic_vector((28 - 1) downto 0);
    b : in std_logic_vector((28 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_8759749125;


architecture behavior of relational_8759749125 is
  signal a_1_31: unsigned((28 - 1) downto 0);
  signal b_1_34: unsigned((28 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_1bef4ba0e4 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_1bef4ba0e4;


architecture behavior of mux_1bef4ba0e4 is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal unregy_join_6_1: std_logic;
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= std_logic_to_vector(unregy_join_6_1);
end behavior;


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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlslice is
    generic (
        new_msb      : integer := 9;
        new_lsb      : integer := 1;
        x_width      : integer := 16;
        y_width      : integer := 8);
    port (
        x : in std_logic_vector (x_width-1 downto 0);
        y : out std_logic_vector (y_width-1 downto 0));
end xlslice;
architecture behavior of xlslice is
begin
    y <= x(new_msb downto new_lsb);
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_66f3e02bd3 is
  port (
    in0 : in std_logic_vector((17 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_66f3e02bd3;


architecture behavior of concat_66f3e02bd3 is
  signal in0_1_23: unsigned((17 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((18 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_6293007044 is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_6293007044;


architecture behavior of constant_6293007044 is
begin
  op <= "1";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_573890e1c0 is
  port (
    input_port : in std_logic_vector((17 - 1) downto 0);
    output_port : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_573890e1c0;


architecture behavior of reinterpret_573890e1c0 is
  signal input_port_1_40: signed((17 - 1) downto 0);
  signal output_port_5_5_force: unsigned((17 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_542df25df6 is
  port (
    a : in std_logic_vector((18 - 1) downto 0);
    b : in std_logic_vector((11 - 1) downto 0);
    s : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_542df25df6;


architecture behavior of addsub_542df25df6 is
  signal a_17_32: signed((18 - 1) downto 0);
  signal b_17_35: unsigned((11 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((8 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "00000000");
  signal op_mem_91_20_front_din: signed((8 - 1) downto 0);
  signal op_mem_91_20_back: signed((8 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((19 - 1) downto 0);
  signal cast_69_22: signed((19 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((19 - 1) downto 0);
  signal cast_internal_s_83_3_convert: signed((8 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= s2s_cast(a_17_32, 11, 19, 11);
  cast_69_22 <= u2s_cast(b_17_35, 11, 19, 11);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_69_5_addsub, 11, 8, 0);
  op_mem_91_20_front_din <= cast_internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_f5d769813d is
  port (
    op : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_f5d769813d;


architecture behavior of constant_f5d769813d is
begin
  op <= "01111111111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_9a0fa0f632 is
  port (
    input_port : in std_logic_vector((18 - 1) downto 0);
    output_port : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_9a0fa0f632;


architecture behavior of reinterpret_9a0fa0f632 is
  signal input_port_1_40: unsigned((18 - 1) downto 0);
  signal output_port_5_5_force: signed((18 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_6b1adb5d55 is
  port (
    input_port : in std_logic_vector((11 - 1) downto 0);
    output_port : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_6b1adb5d55;


architecture behavior of reinterpret_6b1adb5d55 is
  signal input_port_1_40: unsigned((11 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_9d76333483 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_9d76333483;


architecture behavior of logical_9d76333483 is
  signal d0_1_24: std_logic_vector((1 - 1) downto 0);
  signal d1_1_27: std_logic_vector((1 - 1) downto 0);
  signal fully_2_1_bit: std_logic_vector((1 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  fully_2_1_bit <= d0_1_24 xor d1_1_27;
  y <= fully_2_1_bit;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_1e8142cab4 is
  port (
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_1e8142cab4;


architecture behavior of logical_1e8142cab4 is
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => "00000000000000000000000000000000");
  signal latency_pipe_5_26_front_din: std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26_back: std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic_vector((32 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 xor d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= latency_pipe_5_26_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_0fa52c7c40 is
  port (
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_0fa52c7c40;


architecture behavior of logical_0fa52c7c40 is
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => "00000000000000000000000000000000");
  signal latency_pipe_5_26_front_din: std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26_back: std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic_vector((32 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= latency_pipe_5_26_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_f8d41441cb is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_f8d41441cb;


architecture behavior of constant_f8d41441cb is
begin
  op <= "00101011010110110010010100000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_7a5a41eeb1 is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_7a5a41eeb1;


architecture behavior of constant_7a5a41eeb1 is
begin
  op <= "11011011100010110000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_a3d6e8e72f is
  port (
    ip : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_a3d6e8e72f;


architecture behavior of shift_a3d6e8e72f is
  signal ip_1_23: unsigned((32 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of unsigned((32 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "00000000000000000000000000000000");
  signal op_mem_46_20_front_din: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_back: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_25_3_lsh: unsigned((39 - 1) downto 0);
  signal cast_internal_ip_33_3_convert: unsigned((32 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_unsigned(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_25_3_lsh <= u2u_cast(ip_1_23, 0, 39, 7);
  cast_internal_ip_33_3_convert <= u2u_cast(cast_internal_ip_25_3_lsh, 0, 32, 0);
  op_mem_46_20_push_front_pop_back_en <= '0';
  op <= unsigned_to_std_logic_vector(cast_internal_ip_33_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_9c14cd27bd is
  port (
    ip : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_9c14cd27bd;


architecture behavior of shift_9c14cd27bd is
  signal ip_1_23: unsigned((32 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of unsigned((32 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "00000000000000000000000000000000");
  signal op_mem_46_20_front_din: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_back: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_25_3_lsh: unsigned((47 - 1) downto 0);
  signal cast_internal_ip_33_3_convert: unsigned((32 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_unsigned(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_25_3_lsh <= u2u_cast(ip_1_23, 0, 47, 15);
  cast_internal_ip_33_3_convert <= u2u_cast(cast_internal_ip_25_3_lsh, 0, 32, 0);
  op_mem_46_20_push_front_pop_back_en <= '0';
  op <= unsigned_to_std_logic_vector(cast_internal_ip_33_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_37567836aa is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_37567836aa;


architecture behavior of constant_37567836aa is
begin
  op <= "00000000000000000000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_f1acd27428 is
  port (
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    d2 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_f1acd27428;


architecture behavior of logical_f1acd27428 is
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  signal d2_1_30: std_logic_vector((32 - 1) downto 0);
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => "00000000000000000000000000000000");
  signal latency_pipe_5_26_front_din: std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26_back: std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic_vector((32 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 xor d1_1_27 xor d2_1_30;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= latency_pipe_5_26_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_52ae77d946 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_52ae77d946;


architecture behavior of mux_52ae77d946 is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "00000000000000000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((32 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_86a34309e7 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_86a34309e7;


architecture behavior of mux_86a34309e7 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "00000000000000000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((32 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_79cd191324 is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_79cd191324;


architecture behavior of constant_79cd191324 is
begin
  op <= "10001110101111111101000000101000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_82822b2849 is
  port (
    ip : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_82822b2849;


architecture behavior of shift_82822b2849 is
  signal ip_1_23: unsigned((32 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of unsigned((32 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "00000000000000000000000000000000");
  signal op_mem_46_20_front_din: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_back: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_33_3_convert: unsigned((32 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_unsigned(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_33_3_convert <= u2u_cast(ip_1_23, 1, 32, 0);
  op_mem_46_20_front_din <= cast_internal_ip_33_3_convert;
  op_mem_46_20_push_front_pop_back_en <= '1';
  op <= unsigned_to_std_logic_vector(op_mem_46_20_back);
end behavior;


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
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlregister is
   generic (d_width          : integer := 5;
            init_value       : bit_vector := b"00");
   port (d   : in std_logic_vector (d_width-1 downto 0);
         rst : in std_logic_vector(0 downto 0) := "0";
         en  : in std_logic_vector(0 downto 0) := "1";
         ce  : in std_logic;
         clk : in std_logic;
         q   : out std_logic_vector (d_width-1 downto 0));
end xlregister;
architecture behavior of xlregister is
   component synth_reg_w_init
      generic (width      : integer;
               init_index : integer;
               init_value : bit_vector;
               latency    : integer);
      port (i   : in std_logic_vector(width-1 downto 0);
            ce  : in std_logic;
            clr : in std_logic;
            clk : in std_logic;
            o   : out std_logic_vector(width-1 downto 0));
   end component;
   -- synopsys translate_off
   signal real_d, real_q           : real;
   -- synopsys translate_on
   signal internal_clr             : std_logic;
   signal internal_ce              : std_logic;
begin
   internal_clr <= rst(0) and ce;
   internal_ce  <= en(0) and ce;
   synth_reg_inst : synth_reg_w_init
      generic map (width      => d_width,
                   init_index => 2,
                   init_value => init_value,
                   latency    => 1)
      port map (i   => d,
                ce  => internal_ce,
                clr => internal_clr,
                clk => clk,
                o   => q);
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity expr_c255d1cf74 is
  port (
    curr : in std_logic_vector((1 - 1) downto 0);
    prev : in std_logic_vector((1 - 1) downto 0);
    dout : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end expr_c255d1cf74;


architecture behavior of expr_c255d1cf74 is
  signal curr_1_24: boolean;
  signal prev_1_30: boolean;
  signal bitnot_5_25: boolean;
  signal fulldout_5_2_bit: boolean;
begin
  curr_1_24 <= ((curr) = "1");
  prev_1_30 <= ((prev) = "1");
  bitnot_5_25 <= ((not boolean_to_vector(prev_1_30)) = "1");
  fulldout_5_2_bit <= ((boolean_to_vector(bitnot_5_25) and boolean_to_vector(curr_1_24)) = "1");
  dout <= boolean_to_vector(fulldout_5_2_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity expr_52ec6336d5 is
  port (
    bootstrap : in std_logic_vector((1 - 1) downto 0);
    ld : in std_logic_vector((1 - 1) downto 0);
    ld_ext : in std_logic_vector((1 - 1) downto 0);
    dout : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end expr_52ec6336d5;


architecture behavior of expr_52ec6336d5 is
  signal bootstrap_1_24: boolean;
  signal ld_1_35: boolean;
  signal ld_ext_1_39: boolean;
  type array_type_pipe_12_18 is array (0 to (1 - 1)) of boolean;
  signal pipe_12_18: array_type_pipe_12_18 := (
    0 => false);
  signal pipe_12_18_front_din: boolean;
  signal pipe_12_18_back: boolean;
  signal pipe_12_18_push_front_pop_back_en: std_logic;
  signal bit_6_39: boolean;
  signal fulldout_6_2_bit: boolean;
begin
  bootstrap_1_24 <= ((bootstrap) = "1");
  ld_1_35 <= ((ld) = "1");
  ld_ext_1_39 <= ((ld_ext) = "1");
  pipe_12_18_back <= pipe_12_18(0);
  proc_pipe_12_18: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_12_18_push_front_pop_back_en = '1')) then
        pipe_12_18(0) <= pipe_12_18_front_din;
      end if;
    end if;
  end process proc_pipe_12_18;
  bit_6_39 <= ((boolean_to_vector(ld_1_35) or boolean_to_vector(bootstrap_1_24)) = "1");
  fulldout_6_2_bit <= ((boolean_to_vector(ld_ext_1_39) or boolean_to_vector(bit_6_39)) = "1");
  pipe_12_18_front_din <= fulldout_6_2_bit;
  pipe_12_18_push_front_pop_back_en <= '1';
  dout <= boolean_to_vector(pipe_12_18_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity lfsr_49df07576f is
  port (
    din : in std_logic_vector((32 - 1) downto 0);
    load : in std_logic_vector((1 - 1) downto 0);
    dout : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end lfsr_49df07576f;


architecture behavior of lfsr_49df07576f is
  signal din_1_24: unsigned((32 - 1) downto 0);
  signal load_1_28: boolean;
  signal lfsr0_2_19_next: unsigned((1 - 1) downto 0);
  signal lfsr0_2_19: unsigned((1 - 1) downto 0) := "0";
  signal lfsr1_3_19_next: unsigned((1 - 1) downto 0);
  signal lfsr1_3_19: unsigned((1 - 1) downto 0) := "0";
  signal lfsr2_4_19_next: unsigned((1 - 1) downto 0);
  signal lfsr2_4_19: unsigned((1 - 1) downto 0) := "0";
  signal lfsr3_5_19_next: unsigned((1 - 1) downto 0);
  signal lfsr3_5_19: unsigned((1 - 1) downto 0);
  signal lfsr3_5_19_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr3_5_19_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr4_6_19_next: unsigned((1 - 1) downto 0);
  signal lfsr4_6_19: unsigned((1 - 1) downto 0);
  signal lfsr4_6_19_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr4_6_19_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr5_7_19_next: unsigned((1 - 1) downto 0);
  signal lfsr5_7_19: unsigned((1 - 1) downto 0);
  signal lfsr5_7_19_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr5_7_19_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr6_8_19_next: unsigned((1 - 1) downto 0);
  signal lfsr6_8_19: unsigned((1 - 1) downto 0);
  signal lfsr6_8_19_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr6_8_19_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr7_9_19_next: unsigned((1 - 1) downto 0);
  signal lfsr7_9_19: unsigned((1 - 1) downto 0) := "0";
  signal lfsr8_10_19_next: unsigned((1 - 1) downto 0);
  signal lfsr8_10_19: unsigned((1 - 1) downto 0) := "0";
  signal lfsr9_11_19_next: unsigned((1 - 1) downto 0);
  signal lfsr9_11_19: unsigned((1 - 1) downto 0);
  signal lfsr9_11_19_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr9_11_19_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr10_12_20_next: unsigned((1 - 1) downto 0);
  signal lfsr10_12_20: unsigned((1 - 1) downto 0);
  signal lfsr10_12_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr10_12_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr11_13_20_next: unsigned((1 - 1) downto 0);
  signal lfsr11_13_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr12_14_20_next: unsigned((1 - 1) downto 0);
  signal lfsr12_14_20: unsigned((1 - 1) downto 0);
  signal lfsr12_14_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr12_14_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr13_15_20_next: unsigned((1 - 1) downto 0);
  signal lfsr13_15_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr14_16_20_next: unsigned((1 - 1) downto 0);
  signal lfsr14_16_20: unsigned((1 - 1) downto 0);
  signal lfsr14_16_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr14_16_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr15_17_20_next: unsigned((1 - 1) downto 0);
  signal lfsr15_17_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr16_18_20_next: unsigned((1 - 1) downto 0);
  signal lfsr16_18_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr17_19_20_next: unsigned((1 - 1) downto 0);
  signal lfsr17_19_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr18_20_20_next: unsigned((1 - 1) downto 0);
  signal lfsr18_20_20: unsigned((1 - 1) downto 0);
  signal lfsr18_20_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr18_20_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr19_21_20_next: unsigned((1 - 1) downto 0);
  signal lfsr19_21_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr20_22_20_next: unsigned((1 - 1) downto 0);
  signal lfsr20_22_20: unsigned((1 - 1) downto 0);
  signal lfsr20_22_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr20_22_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr21_23_20_next: unsigned((1 - 1) downto 0);
  signal lfsr21_23_20: unsigned((1 - 1) downto 0);
  signal lfsr21_23_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr21_23_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr22_24_20_next: unsigned((1 - 1) downto 0);
  signal lfsr22_24_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr23_25_20_next: unsigned((1 - 1) downto 0);
  signal lfsr23_25_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr24_26_20_next: unsigned((1 - 1) downto 0);
  signal lfsr24_26_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr25_27_20_next: unsigned((1 - 1) downto 0);
  signal lfsr25_27_20: unsigned((1 - 1) downto 0);
  signal lfsr25_27_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr25_27_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr26_28_20_next: unsigned((1 - 1) downto 0);
  signal lfsr26_28_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr27_29_20_next: unsigned((1 - 1) downto 0);
  signal lfsr27_29_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr28_30_20_next: unsigned((1 - 1) downto 0);
  signal lfsr28_30_20: unsigned((1 - 1) downto 0);
  signal lfsr28_30_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr28_30_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr29_31_20_next: unsigned((1 - 1) downto 0);
  signal lfsr29_31_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr30_32_20_next: unsigned((1 - 1) downto 0);
  signal lfsr30_32_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr31_33_20_next: unsigned((1 - 1) downto 0);
  signal lfsr31_33_20: unsigned((1 - 1) downto 0) := "0";
  signal concat_34_26: unsigned((32 - 1) downto 0);
  signal bit_71_41: unsigned((1 - 1) downto 0);
  signal bit_71_28: unsigned((1 - 1) downto 0);
  signal temp_71_1_bit: unsigned((1 - 1) downto 0);
  signal lfsr31_105_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr30_106_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr29_107_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr28_108_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr27_109_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr26_110_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr25_111_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr24_112_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr23_113_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr22_114_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr21_115_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr20_116_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr19_117_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr18_118_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr17_119_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr16_120_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr15_121_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr14_122_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr13_123_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr12_124_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr11_125_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr10_126_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr9_127_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr8_128_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr7_129_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr6_130_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr5_131_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr4_132_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr3_133_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr2_134_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr1_135_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr0_136_1_slice: unsigned((1 - 1) downto 0);
  signal not_70_4: boolean;
  signal lfsr17_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr14_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr1_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr31_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr7_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr5_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr22_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr21_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr29_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr27_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr4_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr20_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr16_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr10_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr28_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr25_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr6_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr13_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr12_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr15_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr8_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr26_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr0_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr23_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr11_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr9_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr24_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr30_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr2_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr3_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr19_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr18_join_70_1: unsigned((1 - 1) downto 0);
begin
  din_1_24 <= std_logic_vector_to_unsigned(din);
  load_1_28 <= ((load) = "1");
  proc_lfsr0_2_19: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr0_2_19 <= lfsr0_2_19_next;
      end if;
    end if;
  end process proc_lfsr0_2_19;
  proc_lfsr1_3_19: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr1_3_19 <= lfsr1_3_19_next;
      end if;
    end if;
  end process proc_lfsr1_3_19;
  proc_lfsr2_4_19: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr2_4_19 <= lfsr2_4_19_next;
      end if;
    end if;
  end process proc_lfsr2_4_19;
  lfsr3_5_19_reg_i <= unsigned_to_std_logic_vector(lfsr3_5_19_next);
  lfsr3_5_19 <= std_logic_vector_to_unsigned(lfsr3_5_19_reg_o);
  lfsr3_5_19_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr3_5_19_reg_i, 
      o => lfsr3_5_19_reg_o);
  lfsr4_6_19_reg_i <= unsigned_to_std_logic_vector(lfsr4_6_19_next);
  lfsr4_6_19 <= std_logic_vector_to_unsigned(lfsr4_6_19_reg_o);
  lfsr4_6_19_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr4_6_19_reg_i, 
      o => lfsr4_6_19_reg_o);
  lfsr5_7_19_reg_i <= unsigned_to_std_logic_vector(lfsr5_7_19_next);
  lfsr5_7_19 <= std_logic_vector_to_unsigned(lfsr5_7_19_reg_o);
  lfsr5_7_19_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr5_7_19_reg_i, 
      o => lfsr5_7_19_reg_o);
  lfsr6_8_19_reg_i <= unsigned_to_std_logic_vector(lfsr6_8_19_next);
  lfsr6_8_19 <= std_logic_vector_to_unsigned(lfsr6_8_19_reg_o);
  lfsr6_8_19_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr6_8_19_reg_i, 
      o => lfsr6_8_19_reg_o);
  proc_lfsr7_9_19: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr7_9_19 <= lfsr7_9_19_next;
      end if;
    end if;
  end process proc_lfsr7_9_19;
  proc_lfsr8_10_19: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr8_10_19 <= lfsr8_10_19_next;
      end if;
    end if;
  end process proc_lfsr8_10_19;
  lfsr9_11_19_reg_i <= unsigned_to_std_logic_vector(lfsr9_11_19_next);
  lfsr9_11_19 <= std_logic_vector_to_unsigned(lfsr9_11_19_reg_o);
  lfsr9_11_19_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr9_11_19_reg_i, 
      o => lfsr9_11_19_reg_o);
  lfsr10_12_20_reg_i <= unsigned_to_std_logic_vector(lfsr10_12_20_next);
  lfsr10_12_20 <= std_logic_vector_to_unsigned(lfsr10_12_20_reg_o);
  lfsr10_12_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr10_12_20_reg_i, 
      o => lfsr10_12_20_reg_o);
  proc_lfsr11_13_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr11_13_20 <= lfsr11_13_20_next;
      end if;
    end if;
  end process proc_lfsr11_13_20;
  lfsr12_14_20_reg_i <= unsigned_to_std_logic_vector(lfsr12_14_20_next);
  lfsr12_14_20 <= std_logic_vector_to_unsigned(lfsr12_14_20_reg_o);
  lfsr12_14_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr12_14_20_reg_i, 
      o => lfsr12_14_20_reg_o);
  proc_lfsr13_15_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr13_15_20 <= lfsr13_15_20_next;
      end if;
    end if;
  end process proc_lfsr13_15_20;
  lfsr14_16_20_reg_i <= unsigned_to_std_logic_vector(lfsr14_16_20_next);
  lfsr14_16_20 <= std_logic_vector_to_unsigned(lfsr14_16_20_reg_o);
  lfsr14_16_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr14_16_20_reg_i, 
      o => lfsr14_16_20_reg_o);
  proc_lfsr15_17_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr15_17_20 <= lfsr15_17_20_next;
      end if;
    end if;
  end process proc_lfsr15_17_20;
  proc_lfsr16_18_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr16_18_20 <= lfsr16_18_20_next;
      end if;
    end if;
  end process proc_lfsr16_18_20;
  proc_lfsr17_19_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr17_19_20 <= lfsr17_19_20_next;
      end if;
    end if;
  end process proc_lfsr17_19_20;
  lfsr18_20_20_reg_i <= unsigned_to_std_logic_vector(lfsr18_20_20_next);
  lfsr18_20_20 <= std_logic_vector_to_unsigned(lfsr18_20_20_reg_o);
  lfsr18_20_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr18_20_20_reg_i, 
      o => lfsr18_20_20_reg_o);
  proc_lfsr19_21_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr19_21_20 <= lfsr19_21_20_next;
      end if;
    end if;
  end process proc_lfsr19_21_20;
  lfsr20_22_20_reg_i <= unsigned_to_std_logic_vector(lfsr20_22_20_next);
  lfsr20_22_20 <= std_logic_vector_to_unsigned(lfsr20_22_20_reg_o);
  lfsr20_22_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr20_22_20_reg_i, 
      o => lfsr20_22_20_reg_o);
  lfsr21_23_20_reg_i <= unsigned_to_std_logic_vector(lfsr21_23_20_next);
  lfsr21_23_20 <= std_logic_vector_to_unsigned(lfsr21_23_20_reg_o);
  lfsr21_23_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr21_23_20_reg_i, 
      o => lfsr21_23_20_reg_o);
  proc_lfsr22_24_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr22_24_20 <= lfsr22_24_20_next;
      end if;
    end if;
  end process proc_lfsr22_24_20;
  proc_lfsr23_25_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr23_25_20 <= lfsr23_25_20_next;
      end if;
    end if;
  end process proc_lfsr23_25_20;
  proc_lfsr24_26_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr24_26_20 <= lfsr24_26_20_next;
      end if;
    end if;
  end process proc_lfsr24_26_20;
  lfsr25_27_20_reg_i <= unsigned_to_std_logic_vector(lfsr25_27_20_next);
  lfsr25_27_20 <= std_logic_vector_to_unsigned(lfsr25_27_20_reg_o);
  lfsr25_27_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr25_27_20_reg_i, 
      o => lfsr25_27_20_reg_o);
  proc_lfsr26_28_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr26_28_20 <= lfsr26_28_20_next;
      end if;
    end if;
  end process proc_lfsr26_28_20;
  proc_lfsr27_29_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr27_29_20 <= lfsr27_29_20_next;
      end if;
    end if;
  end process proc_lfsr27_29_20;
  lfsr28_30_20_reg_i <= unsigned_to_std_logic_vector(lfsr28_30_20_next);
  lfsr28_30_20 <= std_logic_vector_to_unsigned(lfsr28_30_20_reg_o);
  lfsr28_30_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr28_30_20_reg_i, 
      o => lfsr28_30_20_reg_o);
  proc_lfsr29_31_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr29_31_20 <= lfsr29_31_20_next;
      end if;
    end if;
  end process proc_lfsr29_31_20;
  proc_lfsr30_32_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr30_32_20 <= lfsr30_32_20_next;
      end if;
    end if;
  end process proc_lfsr30_32_20;
  proc_lfsr31_33_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr31_33_20 <= lfsr31_33_20_next;
      end if;
    end if;
  end process proc_lfsr31_33_20;
  concat_34_26 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(lfsr31_33_20) & unsigned_to_std_logic_vector(lfsr30_32_20) & unsigned_to_std_logic_vector(lfsr29_31_20) & unsigned_to_std_logic_vector(lfsr28_30_20) & unsigned_to_std_logic_vector(lfsr27_29_20) & unsigned_to_std_logic_vector(lfsr26_28_20) & unsigned_to_std_logic_vector(lfsr25_27_20) & unsigned_to_std_logic_vector(lfsr24_26_20) & unsigned_to_std_logic_vector(lfsr23_25_20) & unsigned_to_std_logic_vector(lfsr22_24_20) & unsigned_to_std_logic_vector(lfsr21_23_20) & unsigned_to_std_logic_vector(lfsr20_22_20) & unsigned_to_std_logic_vector(lfsr19_21_20) & unsigned_to_std_logic_vector(lfsr18_20_20) & unsigned_to_std_logic_vector(lfsr17_19_20) & unsigned_to_std_logic_vector(lfsr16_18_20) & unsigned_to_std_logic_vector(lfsr15_17_20) & unsigned_to_std_logic_vector(lfsr14_16_20) & unsigned_to_std_logic_vector(lfsr13_15_20) & unsigned_to_std_logic_vector(lfsr12_14_20) & unsigned_to_std_logic_vector(lfsr11_13_20) & unsigned_to_std_logic_vector(lfsr10_12_20) & unsigned_to_std_logic_vector(lfsr9_11_19) & unsigned_to_std_logic_vector(lfsr8_10_19) & unsigned_to_std_logic_vector(lfsr7_9_19) & unsigned_to_std_logic_vector(lfsr6_8_19) & unsigned_to_std_logic_vector(lfsr5_7_19) & unsigned_to_std_logic_vector(lfsr4_6_19) & unsigned_to_std_logic_vector(lfsr3_5_19) & unsigned_to_std_logic_vector(lfsr2_4_19) & unsigned_to_std_logic_vector(lfsr1_3_19) & unsigned_to_std_logic_vector(lfsr0_2_19));
  bit_71_41 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(lfsr31_33_20) xor unsigned_to_std_logic_vector(lfsr21_23_20));
  bit_71_28 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(lfsr1_3_19) xor unsigned_to_std_logic_vector(bit_71_41));
  temp_71_1_bit <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(lfsr0_2_19) xor unsigned_to_std_logic_vector(bit_71_28));
  lfsr31_105_1_slice <= u2u_slice(din_1_24, 31, 31);
  lfsr30_106_1_slice <= u2u_slice(din_1_24, 30, 30);
  lfsr29_107_1_slice <= u2u_slice(din_1_24, 29, 29);
  lfsr28_108_1_slice <= u2u_slice(din_1_24, 28, 28);
  lfsr27_109_1_slice <= u2u_slice(din_1_24, 27, 27);
  lfsr26_110_1_slice <= u2u_slice(din_1_24, 26, 26);
  lfsr25_111_1_slice <= u2u_slice(din_1_24, 25, 25);
  lfsr24_112_1_slice <= u2u_slice(din_1_24, 24, 24);
  lfsr23_113_1_slice <= u2u_slice(din_1_24, 23, 23);
  lfsr22_114_1_slice <= u2u_slice(din_1_24, 22, 22);
  lfsr21_115_1_slice <= u2u_slice(din_1_24, 21, 21);
  lfsr20_116_1_slice <= u2u_slice(din_1_24, 20, 20);
  lfsr19_117_1_slice <= u2u_slice(din_1_24, 19, 19);
  lfsr18_118_1_slice <= u2u_slice(din_1_24, 18, 18);
  lfsr17_119_1_slice <= u2u_slice(din_1_24, 17, 17);
  lfsr16_120_1_slice <= u2u_slice(din_1_24, 16, 16);
  lfsr15_121_1_slice <= u2u_slice(din_1_24, 15, 15);
  lfsr14_122_1_slice <= u2u_slice(din_1_24, 14, 14);
  lfsr13_123_1_slice <= u2u_slice(din_1_24, 13, 13);
  lfsr12_124_1_slice <= u2u_slice(din_1_24, 12, 12);
  lfsr11_125_1_slice <= u2u_slice(din_1_24, 11, 11);
  lfsr10_126_1_slice <= u2u_slice(din_1_24, 10, 10);
  lfsr9_127_1_slice <= u2u_slice(din_1_24, 9, 9);
  lfsr8_128_1_slice <= u2u_slice(din_1_24, 8, 8);
  lfsr7_129_1_slice <= u2u_slice(din_1_24, 7, 7);
  lfsr6_130_1_slice <= u2u_slice(din_1_24, 6, 6);
  lfsr5_131_1_slice <= u2u_slice(din_1_24, 5, 5);
  lfsr4_132_1_slice <= u2u_slice(din_1_24, 4, 4);
  lfsr3_133_1_slice <= u2u_slice(din_1_24, 3, 3);
  lfsr2_134_1_slice <= u2u_slice(din_1_24, 2, 2);
  lfsr1_135_1_slice <= u2u_slice(din_1_24, 1, 1);
  lfsr0_136_1_slice <= u2u_slice(din_1_24, 0, 0);
  not_70_4 <=  not load_1_28;
  proc_if_70_1: process (lfsr0_136_1_slice, lfsr0_2_19, lfsr10_126_1_slice, lfsr10_12_20, lfsr11_125_1_slice, lfsr11_13_20, lfsr12_124_1_slice, lfsr12_14_20, lfsr13_123_1_slice, lfsr13_15_20, lfsr14_122_1_slice, lfsr14_16_20, lfsr15_121_1_slice, lfsr15_17_20, lfsr16_120_1_slice, lfsr16_18_20, lfsr17_119_1_slice, lfsr17_19_20, lfsr18_118_1_slice, lfsr18_20_20, lfsr19_117_1_slice, lfsr19_21_20, lfsr1_135_1_slice, lfsr1_3_19, lfsr20_116_1_slice, lfsr20_22_20, lfsr21_115_1_slice, lfsr21_23_20, lfsr22_114_1_slice, lfsr22_24_20, lfsr23_113_1_slice, lfsr23_25_20, lfsr24_112_1_slice, lfsr24_26_20, lfsr25_111_1_slice, lfsr25_27_20, lfsr26_110_1_slice, lfsr26_28_20, lfsr27_109_1_slice, lfsr27_29_20, lfsr28_108_1_slice, lfsr28_30_20, lfsr29_107_1_slice, lfsr29_31_20, lfsr2_134_1_slice, lfsr2_4_19, lfsr30_106_1_slice, lfsr30_32_20, lfsr31_105_1_slice, lfsr3_133_1_slice, lfsr3_5_19, lfsr4_132_1_slice, lfsr4_6_19, lfsr5_131_1_slice, lfsr5_7_19, lfsr6_130_1_slice, lfsr6_8_19, lfsr7_129_1_slice, lfsr7_9_19, lfsr8_10_19, lfsr8_128_1_slice, lfsr9_11_19, lfsr9_127_1_slice, not_70_4, temp_71_1_bit)
  is
  begin
    if not_70_4 then
      lfsr17_join_70_1 <= lfsr16_18_20;
      lfsr14_join_70_1 <= lfsr13_15_20;
      lfsr1_join_70_1 <= lfsr0_2_19;
      lfsr31_join_70_1 <= lfsr30_32_20;
      lfsr7_join_70_1 <= lfsr6_8_19;
      lfsr5_join_70_1 <= lfsr4_6_19;
      lfsr22_join_70_1 <= lfsr21_23_20;
      lfsr21_join_70_1 <= lfsr20_22_20;
      lfsr29_join_70_1 <= lfsr28_30_20;
      lfsr27_join_70_1 <= lfsr26_28_20;
      lfsr4_join_70_1 <= lfsr3_5_19;
      lfsr20_join_70_1 <= lfsr19_21_20;
      lfsr16_join_70_1 <= lfsr15_17_20;
      lfsr10_join_70_1 <= lfsr9_11_19;
      lfsr28_join_70_1 <= lfsr27_29_20;
      lfsr25_join_70_1 <= lfsr24_26_20;
      lfsr6_join_70_1 <= lfsr5_7_19;
      lfsr13_join_70_1 <= lfsr12_14_20;
      lfsr12_join_70_1 <= lfsr11_13_20;
      lfsr15_join_70_1 <= lfsr14_16_20;
      lfsr8_join_70_1 <= lfsr7_9_19;
      lfsr26_join_70_1 <= lfsr25_27_20;
      lfsr0_join_70_1 <= temp_71_1_bit;
      lfsr23_join_70_1 <= lfsr22_24_20;
      lfsr11_join_70_1 <= lfsr10_12_20;
      lfsr9_join_70_1 <= lfsr8_10_19;
      lfsr24_join_70_1 <= lfsr23_25_20;
      lfsr30_join_70_1 <= lfsr29_31_20;
      lfsr2_join_70_1 <= lfsr1_3_19;
      lfsr3_join_70_1 <= lfsr2_4_19;
      lfsr19_join_70_1 <= lfsr18_20_20;
      lfsr18_join_70_1 <= lfsr17_19_20;
    else 
      lfsr17_join_70_1 <= lfsr17_119_1_slice;
      lfsr14_join_70_1 <= lfsr14_122_1_slice;
      lfsr1_join_70_1 <= lfsr1_135_1_slice;
      lfsr31_join_70_1 <= lfsr31_105_1_slice;
      lfsr7_join_70_1 <= lfsr7_129_1_slice;
      lfsr5_join_70_1 <= lfsr5_131_1_slice;
      lfsr22_join_70_1 <= lfsr22_114_1_slice;
      lfsr21_join_70_1 <= lfsr21_115_1_slice;
      lfsr29_join_70_1 <= lfsr29_107_1_slice;
      lfsr27_join_70_1 <= lfsr27_109_1_slice;
      lfsr4_join_70_1 <= lfsr4_132_1_slice;
      lfsr20_join_70_1 <= lfsr20_116_1_slice;
      lfsr16_join_70_1 <= lfsr16_120_1_slice;
      lfsr10_join_70_1 <= lfsr10_126_1_slice;
      lfsr28_join_70_1 <= lfsr28_108_1_slice;
      lfsr25_join_70_1 <= lfsr25_111_1_slice;
      lfsr6_join_70_1 <= lfsr6_130_1_slice;
      lfsr13_join_70_1 <= lfsr13_123_1_slice;
      lfsr12_join_70_1 <= lfsr12_124_1_slice;
      lfsr15_join_70_1 <= lfsr15_121_1_slice;
      lfsr8_join_70_1 <= lfsr8_128_1_slice;
      lfsr26_join_70_1 <= lfsr26_110_1_slice;
      lfsr0_join_70_1 <= lfsr0_136_1_slice;
      lfsr23_join_70_1 <= lfsr23_113_1_slice;
      lfsr11_join_70_1 <= lfsr11_125_1_slice;
      lfsr9_join_70_1 <= lfsr9_127_1_slice;
      lfsr24_join_70_1 <= lfsr24_112_1_slice;
      lfsr30_join_70_1 <= lfsr30_106_1_slice;
      lfsr2_join_70_1 <= lfsr2_134_1_slice;
      lfsr3_join_70_1 <= lfsr3_133_1_slice;
      lfsr19_join_70_1 <= lfsr19_117_1_slice;
      lfsr18_join_70_1 <= lfsr18_118_1_slice;
    end if;
  end process proc_if_70_1;
  lfsr0_2_19_next <= lfsr0_join_70_1;
  lfsr1_3_19_next <= lfsr1_join_70_1;
  lfsr2_4_19_next <= lfsr2_join_70_1;
  lfsr3_5_19_next <= lfsr3_join_70_1;
  lfsr4_6_19_next <= lfsr4_join_70_1;
  lfsr5_7_19_next <= lfsr5_join_70_1;
  lfsr6_8_19_next <= lfsr6_join_70_1;
  lfsr7_9_19_next <= lfsr7_join_70_1;
  lfsr8_10_19_next <= lfsr8_join_70_1;
  lfsr9_11_19_next <= lfsr9_join_70_1;
  lfsr10_12_20_next <= lfsr10_join_70_1;
  lfsr11_13_20_next <= lfsr11_join_70_1;
  lfsr12_14_20_next <= lfsr12_join_70_1;
  lfsr13_15_20_next <= lfsr13_join_70_1;
  lfsr14_16_20_next <= lfsr14_join_70_1;
  lfsr15_17_20_next <= lfsr15_join_70_1;
  lfsr16_18_20_next <= lfsr16_join_70_1;
  lfsr17_19_20_next <= lfsr17_join_70_1;
  lfsr18_20_20_next <= lfsr18_join_70_1;
  lfsr19_21_20_next <= lfsr19_join_70_1;
  lfsr20_22_20_next <= lfsr20_join_70_1;
  lfsr21_23_20_next <= lfsr21_join_70_1;
  lfsr22_24_20_next <= lfsr22_join_70_1;
  lfsr23_25_20_next <= lfsr23_join_70_1;
  lfsr24_26_20_next <= lfsr24_join_70_1;
  lfsr25_27_20_next <= lfsr25_join_70_1;
  lfsr26_28_20_next <= lfsr26_join_70_1;
  lfsr27_29_20_next <= lfsr27_join_70_1;
  lfsr28_30_20_next <= lfsr28_join_70_1;
  lfsr29_31_20_next <= lfsr29_join_70_1;
  lfsr30_32_20_next <= lfsr30_join_70_1;
  lfsr31_33_20_next <= lfsr31_join_70_1;
  dout <= unsigned_to_std_logic_vector(concat_34_26);
end behavior;


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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlsprom is
  generic (
    core_name0: string := "";
    c_width: integer := 12;
    c_address_width: integer := 4;
    latency: integer := 1
  );
  port (
    addr: in std_logic_vector(c_address_width - 1 downto 0);
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0);
    ce: in std_logic;
    clk: in std_logic;
    data: out std_logic_vector(c_width - 1 downto 0)
  );
end xlsprom ;
architecture behavior of xlsprom is
  component synth_reg
    generic (
      width: integer;
      latency: integer
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal core_addr: std_logic_vector(c_address_width - 1 downto 0);
  signal core_data_out: std_logic_vector(c_width - 1 downto 0);
  signal core_ce, sinit: std_logic;
  component bmg_33_e4cac21e8ed012aa
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_33_e4cac21e8ed012aa:
    component is true;
  attribute fpga_dont_touch of bmg_33_e4cac21e8ed012aa:
    component is "true";
  attribute box_type of bmg_33_e4cac21e8ed012aa:
    component  is "black_box";
  component bmg_33_7de9efda5baafcf4
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_33_7de9efda5baafcf4:
    component is true;
  attribute fpga_dont_touch of bmg_33_7de9efda5baafcf4:
    component is "true";
  attribute box_type of bmg_33_7de9efda5baafcf4:
    component  is "black_box";
  component bmg_33_4c2b84f72036519d
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_33_4c2b84f72036519d:
    component is true;
  attribute fpga_dont_touch of bmg_33_4c2b84f72036519d:
    component is "true";
  attribute box_type of bmg_33_4c2b84f72036519d:
    component  is "black_box";
begin
  core_addr <= addr;
  core_ce <= ce and en(0);
  sinit <= rst(0) and ce;
  comp0: if ((core_name0 = "bmg_33_e4cac21e8ed012aa")) generate
    core_instance0: bmg_33_e4cac21e8ed012aa
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp1: if ((core_name0 = "bmg_33_7de9efda5baafcf4")) generate
    core_instance1: bmg_33_7de9efda5baafcf4
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp2: if ((core_name0 = "bmg_33_4c2b84f72036519d")) generate
    core_instance2: bmg_33_4c2b84f72036519d
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  latency_test: if (latency > 1) generate
    reg: synth_reg
      generic map (
        width => c_width,
        latency => latency - 1
      )
      port map (
        i => core_data_out,
        ce => core_ce,
        clr => '0',
        clk => clk,
        o => data
      );
  end generate;
  latency_1: if (latency <= 1) generate
    data <= core_data_out;
  end generate;
end  behavior;

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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlmult is
  generic (
    core_name0: string := "";
    a_width: integer := 4;
    a_bin_pt: integer := 2;
    a_arith: integer := xlSigned;
    b_width: integer := 4;
    b_bin_pt: integer := 1;
    b_arith: integer := xlSigned;
    p_width: integer := 8;
    p_bin_pt: integer := 2;
    p_arith: integer := xlSigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    quantization: integer := xlTruncate;
    overflow: integer := xlWrap;
    extra_registers: integer := 0;
    c_a_width: integer := 7;
    c_b_width: integer := 7;
    c_type: integer := 0;
    c_a_type: integer := 0;
    c_b_type: integer := 0;
    c_pipelined: integer := 1;
    c_baat: integer := 4;
    multsign: integer := xlSigned;
    c_output_width: integer := 16
  );
  port (
    a: in std_logic_vector(a_width - 1 downto 0);
    b: in std_logic_vector(b_width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    core_ce: in std_logic := '0';
    core_clr: in std_logic := '0';
    core_clk: in std_logic := '0';
    rst: in std_logic_vector(rst_width - 1 downto 0);
    en: in std_logic_vector(en_width - 1 downto 0);
    p: out std_logic_vector(p_width - 1 downto 0)
  );
end xlmult;
architecture behavior of xlmult is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  component mlt_11_2_fb712a1e6f4360e8
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of mlt_11_2_fb712a1e6f4360e8:
    component is true;
  attribute fpga_dont_touch of mlt_11_2_fb712a1e6f4360e8:
    component is "true";
  attribute box_type of mlt_11_2_fb712a1e6f4360e8:
    component  is "black_box";
  component mlt_11_2_22d57f485ffd805c
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of mlt_11_2_22d57f485ffd805c:
    component is true;
  attribute fpga_dont_touch of mlt_11_2_22d57f485ffd805c:
    component is "true";
  attribute box_type of mlt_11_2_22d57f485ffd805c:
    component  is "black_box";
  component mlt_11_2_4ed06302eba93f8e
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of mlt_11_2_4ed06302eba93f8e:
    component is true;
  attribute fpga_dont_touch of mlt_11_2_4ed06302eba93f8e:
    component is "true";
  attribute box_type of mlt_11_2_4ed06302eba93f8e:
    component  is "black_box";
  component mlt_11_2_0af49143406018f5
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of mlt_11_2_0af49143406018f5:
    component is true;
  attribute fpga_dont_touch of mlt_11_2_0af49143406018f5:
    component is "true";
  attribute box_type of mlt_11_2_0af49143406018f5:
    component  is "black_box";
  signal tmp_a: std_logic_vector(c_a_width - 1 downto 0);
  signal conv_a: std_logic_vector(c_a_width - 1 downto 0);
  signal tmp_b: std_logic_vector(c_b_width - 1 downto 0);
  signal conv_b: std_logic_vector(c_b_width - 1 downto 0);
  signal tmp_p: std_logic_vector(c_output_width - 1 downto 0);
  signal conv_p: std_logic_vector(p_width - 1 downto 0);
  -- synopsys translate_off
  signal real_a, real_b, real_p: real;
  -- synopsys translate_on
  signal rfd: std_logic;
  signal rdy: std_logic;
  signal nd: std_logic;
  signal internal_ce: std_logic;
  signal internal_clr: std_logic;
  signal internal_core_ce: std_logic;
begin
-- synopsys translate_off
-- synopsys translate_on
  internal_ce <= ce and en(0);
  internal_core_ce <= core_ce and en(0);
  internal_clr <= (clr or rst(0)) and ce;
  nd <= internal_ce;
  input_process:  process (a,b)
  begin
    tmp_a <= zero_ext(a, c_a_width);
    tmp_b <= zero_ext(b, c_b_width);
  end process;
  output_process: process (tmp_p)
  begin
    conv_p <= convert_type(tmp_p, c_output_width, a_bin_pt+b_bin_pt, multsign,
                           p_width, p_bin_pt, p_arith, quantization, overflow);
  end process;
  comp0: if ((core_name0 = "mlt_11_2_fb712a1e6f4360e8")) generate
    core_instance0: mlt_11_2_fb712a1e6f4360e8
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp1: if ((core_name0 = "mlt_11_2_22d57f485ffd805c")) generate
    core_instance1: mlt_11_2_22d57f485ffd805c
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp2: if ((core_name0 = "mlt_11_2_4ed06302eba93f8e")) generate
    core_instance2: mlt_11_2_4ed06302eba93f8e
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp3: if ((core_name0 = "mlt_11_2_0af49143406018f5")) generate
    core_instance3: mlt_11_2_0af49143406018f5
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  latency_gt_0: if (extra_registers > 0) generate
    reg: synth_reg
      generic map (
        width => p_width,
        latency => extra_registers
      )
      port map (
        i => conv_p,
        ce => internal_ce,
        clr => internal_clr,
        clk => clk,
        o => p
      );
  end generate;
  latency_eq_0: if (extra_registers = 0) generate
    p <= conv_p;
  end generate;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_d9988e3d87 is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_d9988e3d87;


architecture behavior of reinterpret_d9988e3d87 is
  signal input_port_1_40: signed((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port <= signed_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity scale_b42effccbc is
  port (
    ip : in std_logic_vector((17 - 1) downto 0);
    op : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end scale_b42effccbc;


architecture behavior of scale_b42effccbc is
  signal ip_17_23: signed((17 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_4ded11ba54 is
  port (
    a : in std_logic_vector((36 - 1) downto 0);
    b : in std_logic_vector((36 - 1) downto 0);
    s : out std_logic_vector((37 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_4ded11ba54;


architecture behavior of addsub_4ded11ba54 is
  signal a_17_32: signed((36 - 1) downto 0);
  signal b_17_35: signed((36 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (2 - 1)) of signed((37 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    "0000000000000000000000000000000000000",
    "0000000000000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((37 - 1) downto 0);
  signal op_mem_91_20_back: signed((37 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (2 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    "0",
    "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((37 - 1) downto 0);
  signal cast_69_22: signed((37 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((37 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(1);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_91_20(i) <= op_mem_91_20(i-1);
        end loop;
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(1);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        for i_x_000000 in 1 downto 1 loop 
          cout_mem_92_22(i_x_000000) <= cout_mem_92_22(i_x_000000-1);
        end loop;
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= s2s_cast(a_17_32, 34, 37, 34);
  cast_69_22 <= s2s_cast(b_17_35, 34, 37, 34);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  op_mem_91_20_front_din <= internal_s_69_5_addsub;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end behavior;


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
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity convert_func_call is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        result : out std_logic_vector (dout_width-1 downto 0));
end convert_func_call;
architecture behavior of convert_func_call is
begin
    result <= convert_type(din, din_width, din_bin_pt, din_arith,
                           dout_width, dout_bin_pt, dout_arith,
                           quantization, overflow);
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlconvert is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        bool_conversion : integer :=0;
        latency      : integer := 0;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        ce  : in std_logic;
        clr : in std_logic;
        clk : in std_logic;
        dout : out std_logic_vector (dout_width-1 downto 0));
end xlconvert;
architecture behavior of xlconvert is
    component synth_reg
        generic (width       : integer;
                 latency     : integer);
        port (i           : in std_logic_vector(width-1 downto 0);
              ce      : in std_logic;
              clr     : in std_logic;
              clk     : in std_logic;
              o       : out std_logic_vector(width-1 downto 0));
    end component;
    component convert_func_call
        generic (
            din_width    : integer := 16;
            din_bin_pt   : integer := 4;
            din_arith    : integer := xlUnsigned;
            dout_width   : integer := 8;
            dout_bin_pt  : integer := 2;
            dout_arith   : integer := xlUnsigned;
            quantization : integer := xlTruncate;
            overflow     : integer := xlWrap);
        port (
            din : in std_logic_vector (din_width-1 downto 0);
            result : out std_logic_vector (dout_width-1 downto 0));
    end component;
    -- synopsys translate_off
    signal real_din, real_dout : real;
    -- synopsys translate_on
    signal result : std_logic_vector(dout_width-1 downto 0);
begin
    -- synopsys translate_off
    -- synopsys translate_on
    bool_conversion_generate : if (bool_conversion = 1)
    generate
      result <= din;
    end generate;
    std_conversion_generate : if (bool_conversion = 0)
    generate
      convert : convert_func_call
        generic map (
          din_width   => din_width,
          din_bin_pt  => din_bin_pt,
          din_arith   => din_arith,
          dout_width  => dout_width,
          dout_bin_pt => dout_bin_pt,
          dout_arith  => dout_arith,
          quantization => quantization,
          overflow     => overflow)
        port map (
          din => din,
          result => result);
    end generate;
    latency_test : if (latency > 0)
    generate
        reg : synth_reg
            generic map ( width => dout_width,
                          latency => latency)
            port map (i => result,
                      ce => ce,
                      clr => clr,
                      clk => clk,
                      o => dout);
    end generate;
    latency0 : if (latency = 0)
    generate
        dout <= result;
    end generate latency0;
end  behavior;

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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;
entity xlcounter_limit is
  generic (
    core_name0: string := "";
    op_width: integer := 5;
    op_arith: integer := xlSigned;
    cnt_63_48: integer:= 0;
    cnt_47_32: integer:= 0;
    cnt_31_16: integer:= 0;
    cnt_15_0: integer:= 0;
    count_limited: integer := 0
  );
  port (
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    op: out std_logic_vector(op_width - 1 downto 0);
    up: in std_logic_vector(0 downto 0) := (others => '0');
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0)
  );
end xlcounter_limit ;
architecture behavior of xlcounter_limit is
  signal high_cnt_to: std_logic_vector(31 downto 0);
  signal low_cnt_to: std_logic_vector(31 downto 0);
  signal cnt_to: std_logic_vector(63 downto 0);
  signal core_sinit, op_thresh0, core_ce: std_logic;
  signal rst_overrides_en: std_logic;
  signal op_net: std_logic_vector(op_width - 1 downto 0);
  -- synopsys translate_off
  signal real_op : real;
   -- synopsys translate_on
  function equals(op, cnt_to : std_logic_vector; width, arith : integer)
    return std_logic
  is
    variable signed_op, signed_cnt_to : signed (width - 1 downto 0);
    variable unsigned_op, unsigned_cnt_to : unsigned (width - 1 downto 0);
    variable result : std_logic;
  begin
    -- synopsys translate_off
    if ((is_XorU(op)) or (is_XorU(cnt_to)) ) then
      result := '0';
      return result;
    end if;
    -- synopsys translate_on
    if (op = cnt_to) then
      result := '1';
    else
      result := '0';
    end if;
    return result;
  end;
  component cntr_11_0_ae406e50e98e0e45
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_ae406e50e98e0e45:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_ae406e50e98e0e45:
    component is "true";
  attribute box_type of cntr_11_0_ae406e50e98e0e45:
    component  is "black_box";
  component cntr_11_0_4bb0cbb813922871
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_4bb0cbb813922871:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_4bb0cbb813922871:
    component is "true";
  attribute box_type of cntr_11_0_4bb0cbb813922871:
    component  is "black_box";
-- synopsys translate_off
  constant zeroVec : std_logic_vector(op_width - 1 downto 0) := (others => '0');
  constant oneVec : std_logic_vector(op_width - 1 downto 0) := (others => '1');
  constant zeroStr : string(1 to op_width) :=
    std_logic_vector_to_bin_string(zeroVec);
  constant oneStr : string(1 to op_width) :=
    std_logic_vector_to_bin_string(oneVec);
-- synopsys translate_on
begin
  -- synopsys translate_off
  -- synopsys translate_on
  cnt_to(63 downto 48) <= integer_to_std_logic_vector(cnt_63_48, 16, op_arith);
  cnt_to(47 downto 32) <= integer_to_std_logic_vector(cnt_47_32, 16, op_arith);
  cnt_to(31 downto 16) <= integer_to_std_logic_vector(cnt_31_16, 16, op_arith);
  cnt_to(15 downto 0) <= integer_to_std_logic_vector(cnt_15_0, 16, op_arith);
  op <= op_net;
  core_ce <= ce and en(0);
  rst_overrides_en <= rst(0) or en(0);
  limit : if (count_limited = 1) generate
    eq_cnt_to : process (op_net, cnt_to)
    begin
      op_thresh0 <= equals(op_net, cnt_to(op_width - 1 downto 0),
                     op_width, op_arith);
    end process;
    core_sinit <= (op_thresh0 or clr or rst(0)) and ce and rst_overrides_en;
  end generate;
  no_limit : if (count_limited = 0) generate
    core_sinit <= (clr or rst(0)) and ce and rst_overrides_en;
  end generate;
  comp0: if ((core_name0 = "cntr_11_0_ae406e50e98e0e45")) generate
    core_instance0: cntr_11_0_ae406e50e98e0e45
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp1: if ((core_name0 = "cntr_11_0_4bb0cbb813922871")) generate
    core_instance1: cntr_11_0_4bb0cbb813922871
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
end  behavior;

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
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlspram is
  generic (
    core_name0: string := "";
    c_width: integer := 12;
    c_address_width: integer := 4;
    latency: integer := 1
    );
  port (
    data_in: in std_logic_vector(c_width - 1 downto 0);
    addr: in std_logic_vector(c_address_width - 1 downto 0);
    we: in std_logic_vector(0 downto 0);
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0);
    ce: in std_logic;
    clk: in std_logic;
    data_out: out std_logic_vector(c_width - 1 downto 0)
  );
end xlspram ;
architecture behavior of xlspram is
  component synth_reg
    generic (
      width: integer;
      latency: integer
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal core_data_out, dly_data_out: std_logic_vector(c_width - 1 downto 0);
  signal core_we, core_ce, sinit: std_logic;
  component bmg_33_d9b3e13a04ce0977
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_33_d9b3e13a04ce0977:
    component is true;
  attribute fpga_dont_touch of bmg_33_d9b3e13a04ce0977:
    component is "true";
  attribute box_type of bmg_33_d9b3e13a04ce0977:
    component  is "black_box";
  component bmg_33_ea3aeec639126d38
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_33_ea3aeec639126d38:
    component is true;
  attribute fpga_dont_touch of bmg_33_ea3aeec639126d38:
    component is "true";
  attribute box_type of bmg_33_ea3aeec639126d38:
    component  is "black_box";
begin
  data_out <= dly_data_out;
  core_we <= we(0);
  core_ce <= ce and en(0);
  sinit <= rst(0) and ce;
  comp0: if ((core_name0 = "bmg_33_d9b3e13a04ce0977")) generate
    core_instance0: bmg_33_d9b3e13a04ce0977
      port map (
                                        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out
      );
  end generate;
  comp1: if ((core_name0 = "bmg_33_ea3aeec639126d38")) generate
    core_instance1: bmg_33_ea3aeec639126d38
      port map (
                                        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out
      );
  end generate;
  latency_test: if (latency > 1) generate
    reg: synth_reg
      generic map (
        width => c_width,
        latency => latency - 1
      )
      port map (
        i => core_data_out,
        ce => core_ce,
        clr => '0',
        clk => clk,
        o => dly_data_out
      );
  end generate;
  latency_1: if (latency <= 1) generate
    dly_data_out <= core_data_out;
  end generate;
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_e054d850c5 is
  port (
    op : out std_logic_vector((12 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_e054d850c5;


architecture behavior of constant_e054d850c5 is
begin
  op <= "100000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_acb3c05dd0 is
  port (
    a : in std_logic_vector((12 - 1) downto 0);
    b : in std_logic_vector((12 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_acb3c05dd0;


architecture behavior of relational_acb3c05dd0 is
  signal a_1_31: unsigned((12 - 1) downto 0);
  signal b_1_34: unsigned((12 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_41967782b8 is
  port (
    a : in std_logic_vector((37 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    s : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_41967782b8;


architecture behavior of addsub_41967782b8 is
  signal a_17_32: signed((37 - 1) downto 0);
  signal b_17_35: signed((32 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (2 - 1)) of signed((32 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    "00000000000000000000000000000000",
    "00000000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((32 - 1) downto 0);
  signal op_mem_91_20_back: signed((32 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (2 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    "0",
    "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((38 - 1) downto 0);
  signal cast_69_22: signed((38 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((38 - 1) downto 0);
  signal cast_internal_s_83_3_convert: signed((32 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(1);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_91_20(i) <= op_mem_91_20(i-1);
        end loop;
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(1);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        for i_x_000000 in 1 downto 1 loop 
          cout_mem_92_22(i_x_000000) <= cout_mem_92_22(i_x_000000-1);
        end loop;
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= s2s_cast(a_17_32, 34, 38, 34);
  cast_69_22 <= s2s_cast(b_17_35, 31, 38, 34);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_69_5_addsub, 34, 32, 31);
  op_mem_91_20_front_din <= cast_internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_286b77e019 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_286b77e019;


architecture behavior of mux_286b77e019 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((32 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_2aa09bfea3 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_2aa09bfea3;


architecture behavior of mux_2aa09bfea3 is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic;
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => '0');
  signal pipe_16_22_front_din: std_logic;
  signal pipe_16_22_back: std_logic;
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic;
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(pipe_16_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity bitbasher_a85d9bdfd2 is
  port (
    delay : in std_logic_vector((32 - 1) downto 0);
    delay0 : out std_logic_vector((4 - 1) downto 0);
    delay1 : out std_logic_vector((4 - 1) downto 0);
    delay2 : out std_logic_vector((4 - 1) downto 0);
    delay3 : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_a85d9bdfd2;


architecture behavior of bitbasher_a85d9bdfd2 is
  signal delay_1_52: unsigned((32 - 1) downto 0);
  signal slice_5_33: unsigned((4 - 1) downto 0);
  signal fulldelay0_5_1_concat: unsigned((4 - 1) downto 0);
  signal slice_6_33: unsigned((4 - 1) downto 0);
  signal fulldelay1_6_1_concat: unsigned((4 - 1) downto 0);
  signal slice_7_33: unsigned((4 - 1) downto 0);
  signal fulldelay2_7_1_concat: unsigned((4 - 1) downto 0);
  signal slice_8_33: unsigned((4 - 1) downto 0);
  signal fulldelay3_8_1_concat: unsigned((4 - 1) downto 0);
begin
  delay_1_52 <= std_logic_vector_to_unsigned(delay);
  slice_5_33 <= u2u_slice(delay_1_52, 3, 0);
  fulldelay0_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_33));
  slice_6_33 <= u2u_slice(delay_1_52, 7, 4);
  fulldelay1_6_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_6_33));
  slice_7_33 <= u2u_slice(delay_1_52, 11, 8);
  fulldelay2_7_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_7_33));
  slice_8_33 <= u2u_slice(delay_1_52, 15, 12);
  fulldelay3_8_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_8_33));
  delay0 <= unsigned_to_std_logic_vector(fulldelay0_5_1_concat);
  delay1 <= unsigned_to_std_logic_vector(fulldelay1_6_1_concat);
  delay2 <= unsigned_to_std_logic_vector(fulldelay2_7_1_concat);
  delay3 <= unsigned_to_std_logic_vector(fulldelay3_8_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity bitbasher_1f3692b5e0 is
  port (
    delay : in std_logic_vector((32 - 1) downto 0);
    delay4 : out std_logic_vector((4 - 1) downto 0);
    delay5 : out std_logic_vector((4 - 1) downto 0);
    delay6 : out std_logic_vector((4 - 1) downto 0);
    delay7 : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_1f3692b5e0;


architecture behavior of bitbasher_1f3692b5e0 is
  signal delay_1_52: unsigned((32 - 1) downto 0);
  signal slice_5_33: unsigned((4 - 1) downto 0);
  signal fulldelay4_5_1_concat: unsigned((4 - 1) downto 0);
  signal slice_6_33: unsigned((4 - 1) downto 0);
  signal fulldelay5_6_1_concat: unsigned((4 - 1) downto 0);
  signal slice_7_33: unsigned((4 - 1) downto 0);
  signal fulldelay6_7_1_concat: unsigned((4 - 1) downto 0);
  signal slice_8_33: unsigned((4 - 1) downto 0);
  signal fulldelay7_8_1_concat: unsigned((4 - 1) downto 0);
begin
  delay_1_52 <= std_logic_vector_to_unsigned(delay);
  slice_5_33 <= u2u_slice(delay_1_52, 19, 16);
  fulldelay4_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_33));
  slice_6_33 <= u2u_slice(delay_1_52, 23, 20);
  fulldelay5_6_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_6_33));
  slice_7_33 <= u2u_slice(delay_1_52, 27, 24);
  fulldelay6_7_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_7_33));
  slice_8_33 <= u2u_slice(delay_1_52, 31, 28);
  fulldelay7_8_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_8_33));
  delay4 <= unsigned_to_std_logic_vector(fulldelay4_5_1_concat);
  delay5 <= unsigned_to_std_logic_vector(fulldelay5_6_1_concat);
  delay6 <= unsigned_to_std_logic_vector(fulldelay6_7_1_concat);
  delay7 <= unsigned_to_std_logic_vector(fulldelay7_8_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_e77c53f8bd is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_e77c53f8bd;


architecture behavior of logical_e77c53f8bd is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 xor d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_b198bd62b0 is
  port (
    in0 : in std_logic_vector((18 - 1) downto 0);
    in1 : in std_logic_vector((18 - 1) downto 0);
    y : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_b198bd62b0;


architecture behavior of concat_b198bd62b0 is
  signal in0_1_23: unsigned((18 - 1) downto 0);
  signal in1_1_27: unsigned((18 - 1) downto 0);
  signal y_2_1_concat: unsigned((36 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_32afb77cd2 is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_32afb77cd2;


architecture behavior of concat_32afb77cd2 is
  signal in0_1_23: boolean;
  signal in1_1_27: boolean;
  signal y_2_1_concat: unsigned((2 - 1) downto 0);
begin
  in0_1_23 <= ((in0) = "1");
  in1_1_27 <= ((in1) = "1");
  y_2_1_concat <= std_logic_vector_to_unsigned(boolean_to_vector(in0_1_23) & boolean_to_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_e3cd42f5d3 is
  port (
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_e3cd42f5d3;


architecture behavior of constant_e3cd42f5d3 is
begin
  op <= "011111111111111111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_571125472d is
  port (
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_571125472d;


architecture behavior of constant_571125472d is
begin
  op <= "100000000000000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_acc4af9f66 is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((18 - 1) downto 0);
    d1 : in std_logic_vector((18 - 1) downto 0);
    d2 : in std_logic_vector((18 - 1) downto 0);
    y : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_acc4af9f66;


architecture behavior of mux_acc4af9f66 is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((18 - 1) downto 0);
  signal d1_1_27: std_logic_vector((18 - 1) downto 0);
  signal d2_1_30: std_logic_vector((18 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((18 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= d0_1_24;
      when "01" =>
        unregy_join_6_1 <= d1_1_27;
      when others =>
        unregy_join_6_1 <= d2_1_30;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_580feec131 is
  port (
    input_port : in std_logic_vector((18 - 1) downto 0);
    output_port : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_580feec131;


architecture behavior of reinterpret_580feec131 is
  signal input_port_1_40: signed((18 - 1) downto 0);
  signal output_port_5_5_force: unsigned((18 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_c6e139f236 is
  port (
    a : in std_logic_vector((35 - 1) downto 0);
    b : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_c6e139f236;


architecture behavior of relational_c6e139f236 is
  signal a_1_31: signed((35 - 1) downto 0);
  signal b_1_34: signed((18 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (2 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    false,
    false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal cast_18_16: signed((35 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_32_22_back <= op_mem_32_22(1);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_32_22(i) <= op_mem_32_22(i-1);
        end loop;
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  cast_18_16 <= s2s_cast(b_1_34, 17, 35, 24);
  result_18_3_rel <= a_1_31 > cast_18_16;
  op_mem_32_22_front_din <= result_18_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_dc801cb463 is
  port (
    a : in std_logic_vector((35 - 1) downto 0);
    b : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_dc801cb463;


architecture behavior of relational_dc801cb463 is
  signal a_1_31: signed((35 - 1) downto 0);
  signal b_1_34: signed((18 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (2 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    false,
    false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal cast_16_16: signed((35 - 1) downto 0);
  signal result_16_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_32_22_back <= op_mem_32_22(1);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_32_22(i) <= op_mem_32_22(i-1);
        end loop;
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  cast_16_16 <= s2s_cast(b_1_34, 17, 35, 24);
  result_16_3_rel <= a_1_31 < cast_16_16;
  op_mem_32_22_front_din <= result_16_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a803a2dbbb is
  port (
    op : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a803a2dbbb;


architecture behavior of constant_a803a2dbbb is
begin
  op <= "00000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_963ed6358a is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_963ed6358a;


architecture behavior of constant_963ed6358a is
begin
  op <= "0";
end behavior;


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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xldpram is
  generic (
    core_name0: string := "";
    c_width_a: integer := 13;
    c_address_width_a: integer := 4;
    c_width_b: integer := 13;
    c_address_width_b: integer := 4;
    c_has_sinita: integer := 0;
    c_has_sinitb: integer := 0;
    latency: integer := 1
  );
  port (
    dina: in std_logic_vector(c_width_a - 1 downto 0);
    addra: in std_logic_vector(c_address_width_a - 1 downto 0);
    wea: in std_logic_vector(0 downto 0);
    a_ce: in std_logic;
    a_clk: in std_logic;
    rsta: in std_logic_vector(0 downto 0) := (others => '0');
    ena: in std_logic_vector(0 downto 0) := (others => '1');
    douta: out std_logic_vector(c_width_a - 1 downto 0);
    dinb: in std_logic_vector(c_width_b - 1 downto 0);
    addrb: in std_logic_vector(c_address_width_b - 1 downto 0);
    web: in std_logic_vector(0 downto 0);
    b_ce: in std_logic;
    b_clk: in std_logic;
    rstb: in std_logic_vector(0 downto 0) := (others => '0');
    enb: in std_logic_vector(0 downto 0) := (others => '1');
    doutb: out std_logic_vector(c_width_b - 1 downto 0)
  );
end xldpram ;
architecture behavior of xldpram is
  component synth_reg
    generic (
      width: integer;
      latency: integer
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;

  signal core_addra: std_logic_vector(c_address_width_a - 1 downto 0);
  signal core_addrb: std_logic_vector(c_address_width_b - 1 downto 0);
  signal core_dina, core_douta, dly_douta:
    std_logic_vector(c_width_a - 1 downto 0);
  signal core_dinb, core_doutb, dly_doutb:
    std_logic_vector(c_width_b - 1 downto 0);
  signal core_wea, core_web: std_logic;
  signal core_a_ce, core_b_ce: std_logic;
  signal sinita, sinitb: std_logic;

  component bmg_33_0bdc6c125e0742ca
    port (
        addra: in std_logic_vector(c_address_width_a - 1 downto 0);
      addrb: in std_logic_vector(c_address_width_b - 1 downto 0);
      dina: in std_logic_vector(c_width_a - 1 downto 0);
      dinb: in std_logic_vector(c_width_b - 1 downto 0);
      clka: in std_logic;
      clkb: in std_logic;
      wea: in std_logic_vector(0 downto 0);
      web: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      enb: in std_logic;
      douta: out std_logic_vector(c_width_a - 1 downto 0);
      doutb: out std_logic_vector(c_width_b - 1 downto 0)
     );
  end component;
  attribute syn_black_box of bmg_33_0bdc6c125e0742ca:
    component is true;
  attribute fpga_dont_touch of bmg_33_0bdc6c125e0742ca:
    component is "true";
  attribute box_type of bmg_33_0bdc6c125e0742ca:
    component  is "black_box";
  component bmg_33_5855b709c81b1172
    port (
        addra: in std_logic_vector(c_address_width_a - 1 downto 0);
      addrb: in std_logic_vector(c_address_width_b - 1 downto 0);
      dina: in std_logic_vector(c_width_a - 1 downto 0);
      dinb: in std_logic_vector(c_width_b - 1 downto 0);
      clka: in std_logic;
      clkb: in std_logic;
      wea: in std_logic_vector(0 downto 0);
      web: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      enb: in std_logic;
      douta: out std_logic_vector(c_width_a - 1 downto 0);
      doutb: out std_logic_vector(c_width_b - 1 downto 0)
     );
  end component;
  attribute syn_black_box of bmg_33_5855b709c81b1172:
    component is true;
  attribute fpga_dont_touch of bmg_33_5855b709c81b1172:
    component is "true";
  attribute box_type of bmg_33_5855b709c81b1172:
    component  is "black_box";
begin
  core_addra <= addra;
  core_dina <= dina;
  douta <= dly_douta;
  core_wea <= wea(0);
  core_a_ce <= a_ce and ena(0);
  sinita <= rsta(0) and a_ce;

  core_addrb <= addrb;
  core_dinb <= dinb;
  doutb <= dly_doutb;
  core_web <= web(0);
  core_b_ce <= b_ce and enb(0);
  sinitb <= rstb(0) and b_ce;
  comp0: if ((core_name0 = "bmg_33_0bdc6c125e0742ca")) generate
    core_instance0: bmg_33_0bdc6c125e0742ca
      port map (
          addra => core_addra,
        clka => a_clk,
        addrb => core_addrb,
        clkb => b_clk,
        dina => core_dina,
        wea(0) => core_wea,
        dinb => core_dinb,
        web(0) => core_web,
        ena => core_a_ce,
        enb => core_b_ce,
        douta => core_douta,
        doutb => core_doutb
      );
  end generate;
  comp1: if ((core_name0 = "bmg_33_5855b709c81b1172")) generate
    core_instance1: bmg_33_5855b709c81b1172
      port map (
          addra => core_addra,
        clka => a_clk,
        addrb => core_addrb,
        clkb => b_clk,
        dina => core_dina,
        wea(0) => core_wea,
        dinb => core_dinb,
        web(0) => core_web,
        ena => core_a_ce,
        enb => core_b_ce,
        douta => core_douta,
        doutb => core_doutb
      );
  end generate;
  latency_test: if (latency > 2) generate
    regA: synth_reg
      generic map (
        width => c_width_a,
        latency => latency - 2
      )
      port map (
        i => core_douta,
        ce => core_a_ce,
        clr => '0',
        clk => a_clk,
        o => dly_douta
      );
    regB: synth_reg
      generic map (
        width => c_width_b,
        latency => latency - 2
      )
      port map (
        i => core_doutb,
        ce => core_b_ce,
        clr => '0',
        clk => b_clk,
        o => dly_doutb
      );
  end generate;
  latency1: if (latency <= 2) generate
    dly_douta <= core_douta;
    dly_doutb <= core_doutb;
  end generate;
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_d109c65ff6 is
  port (
    input_port : in std_logic_vector((17 - 1) downto 0);
    output_port : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_d109c65ff6;


architecture behavior of reinterpret_d109c65ff6 is
  signal input_port_1_40: unsigned((17 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;


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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;
entity xladdrsr is
  generic (
    core_name0: string := "";
    addr_arith: integer := xlSigned;
    addr_bin_pt: integer := 7;
    addr_width: integer := 12;
    core_addr_width: integer := 0;
    d_arith: integer := xlSigned;
    d_bin_pt: integer := 7;
    d_width: integer := 12;
    en_width: integer := 5;
    en_bin_pt: integer := 2;
    en_arith: integer := xlUnsigned;
    q_arith: integer := xlSigned;
    q_bin_pt: integer := 7;
    q_width: integer := xlSigned
  );
  port (
    d: in std_logic_vector(d_width - 1 downto 0);
    addr: in std_logic_vector(addr_width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    en: in std_logic_vector(0 downto 0) := (others => '1');
    q: out std_logic_vector(d_width - 1 downto 0)
  );
end xladdrsr ;
architecture behavior of xladdrsr is
  signal internal_ce: std_logic;
  signal padded_addr: std_logic_vector(core_addr_width-1 downto 0) := (others => '0');
  component asr_11_0_372caaa934b22d95
    port (
      clk: in std_logic;
      d: in std_logic_vector(d_width - 1 downto 0);
      q: out std_logic_vector(d_width - 1 downto 0);
      a: in std_logic_vector(core_addr_width - 1 downto 0);
      ce: in std_logic
    );
  end component;
  attribute syn_black_box of asr_11_0_372caaa934b22d95:
    component is true;
  attribute fpga_dont_touch of asr_11_0_372caaa934b22d95:
    component is "true";
  attribute box_type of asr_11_0_372caaa934b22d95:
    component  is "black_box";
begin
  internal_ce <= ce and en(0);
  padded_addr(addr_width-1 downto 0) <= addr(addr_width-1 downto 0);
  comp0: if ((core_name0 = "asr_11_0_372caaa934b22d95")) generate
    core_instance0: asr_11_0_372caaa934b22d95
      port map (
        clk => clk,
        d => d,
        q => q,
        a => padded_addr,
        ce => internal_ce
      );
  end generate;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_91ef1678ca is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_91ef1678ca;


architecture behavior of constant_91ef1678ca is
begin
  op <= "00000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_81f00cece7 is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((8 - 1) downto 0);
    d1 : in std_logic_vector((8 - 1) downto 0);
    d2 : in std_logic_vector((8 - 1) downto 0);
    d3 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_81f00cece7;


architecture behavior of mux_81f00cece7 is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((8 - 1) downto 0);
  signal d1_1_27: std_logic_vector((8 - 1) downto 0);
  signal d2_1_30: std_logic_vector((8 - 1) downto 0);
  signal d3_1_33: std_logic_vector((8 - 1) downto 0);
  type array_type_pipe_20_22 is array (0 to (1 - 1)) of std_logic_vector((8 - 1) downto 0);
  signal pipe_20_22: array_type_pipe_20_22 := (
    0 => "00000000");
  signal pipe_20_22_front_din: std_logic_vector((8 - 1) downto 0);
  signal pipe_20_22_back: std_logic_vector((8 - 1) downto 0);
  signal pipe_20_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((8 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  d3_1_33 <= d3;
  pipe_20_22_back <= pipe_20_22(0);
  proc_pipe_20_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_20_22_push_front_pop_back_en = '1')) then
        pipe_20_22(0) <= pipe_20_22_front_din;
      end if;
    end if;
  end process proc_pipe_20_22;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, d3_1_33, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= d0_1_24;
      when "01" =>
        unregy_join_6_1 <= d1_1_27;
      when "10" =>
        unregy_join_6_1 <= d2_1_30;
      when others =>
        unregy_join_6_1 <= d3_1_33;
    end case;
  end process proc_switch_6_1;
  pipe_20_22_front_din <= unregy_join_6_1;
  pipe_20_22_push_front_pop_back_en <= '1';
  y <= pipe_20_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity bitbasher_0b7a692256 is
  port (
    insel : in std_logic_vector((32 - 1) downto 0);
    insel0 : out std_logic_vector((2 - 1) downto 0);
    insel1 : out std_logic_vector((2 - 1) downto 0);
    insel2 : out std_logic_vector((2 - 1) downto 0);
    insel3 : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_0b7a692256;


architecture behavior of bitbasher_0b7a692256 is
  signal insel_1_52: unsigned((32 - 1) downto 0);
  signal slice_5_33: unsigned((2 - 1) downto 0);
  signal fullinsel0_5_1_concat: unsigned((2 - 1) downto 0);
  signal slice_6_33: unsigned((2 - 1) downto 0);
  signal fullinsel1_6_1_concat: unsigned((2 - 1) downto 0);
  signal slice_7_33: unsigned((2 - 1) downto 0);
  signal fullinsel2_7_1_concat: unsigned((2 - 1) downto 0);
  signal slice_8_33: unsigned((2 - 1) downto 0);
  signal fullinsel3_8_1_concat: unsigned((2 - 1) downto 0);
begin
  insel_1_52 <= std_logic_vector_to_unsigned(insel);
  slice_5_33 <= u2u_slice(insel_1_52, 1, 0);
  fullinsel0_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_33));
  slice_6_33 <= u2u_slice(insel_1_52, 5, 4);
  fullinsel1_6_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_6_33));
  slice_7_33 <= u2u_slice(insel_1_52, 9, 8);
  fullinsel2_7_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_7_33));
  slice_8_33 <= u2u_slice(insel_1_52, 13, 12);
  fullinsel3_8_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_8_33));
  insel0 <= unsigned_to_std_logic_vector(fullinsel0_5_1_concat);
  insel1 <= unsigned_to_std_logic_vector(fullinsel1_6_1_concat);
  insel2 <= unsigned_to_std_logic_vector(fullinsel2_7_1_concat);
  insel3 <= unsigned_to_std_logic_vector(fullinsel3_8_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity bitbasher_980b18e5c5 is
  port (
    insel : in std_logic_vector((32 - 1) downto 0);
    insel4 : out std_logic_vector((2 - 1) downto 0);
    insel5 : out std_logic_vector((2 - 1) downto 0);
    insel6 : out std_logic_vector((2 - 1) downto 0);
    insel7 : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_980b18e5c5;


architecture behavior of bitbasher_980b18e5c5 is
  signal insel_1_52: unsigned((32 - 1) downto 0);
  signal slice_5_33: unsigned((2 - 1) downto 0);
  signal fullinsel4_5_1_concat: unsigned((2 - 1) downto 0);
  signal slice_6_33: unsigned((2 - 1) downto 0);
  signal fullinsel5_6_1_concat: unsigned((2 - 1) downto 0);
  signal slice_7_33: unsigned((2 - 1) downto 0);
  signal fullinsel6_7_1_concat: unsigned((2 - 1) downto 0);
  signal slice_8_33: unsigned((2 - 1) downto 0);
  signal fullinsel7_8_1_concat: unsigned((2 - 1) downto 0);
begin
  insel_1_52 <= std_logic_vector_to_unsigned(insel);
  slice_5_33 <= u2u_slice(insel_1_52, 17, 16);
  fullinsel4_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_33));
  slice_6_33 <= u2u_slice(insel_1_52, 21, 20);
  fullinsel5_6_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_6_33));
  slice_7_33 <= u2u_slice(insel_1_52, 25, 24);
  fullinsel6_7_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_7_33));
  slice_8_33 <= u2u_slice(insel_1_52, 29, 28);
  fullinsel7_8_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_8_33));
  insel4 <= unsigned_to_std_logic_vector(fullinsel4_5_1_concat);
  insel5 <= unsigned_to_std_logic_vector(fullinsel5_6_1_concat);
  insel6 <= unsigned_to_std_logic_vector(fullinsel6_7_1_concat);
  insel7 <= unsigned_to_std_logic_vector(fullinsel7_8_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_5a49cc39ae is
  port (
    a : in std_logic_vector((6 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    s : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_5a49cc39ae;


architecture behavior of addsub_5a49cc39ae is
  signal a_17_32: unsigned((6 - 1) downto 0);
  signal b_17_35: unsigned((32 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of unsigned((6 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "000000");
  signal op_mem_91_20_front_din: unsigned((6 - 1) downto 0);
  signal op_mem_91_20_back: unsigned((6 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_71_18: signed((34 - 1) downto 0);
  signal cast_71_22: signed((34 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((34 - 1) downto 0);
  signal cast_internal_s_83_3_convert: unsigned((6 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_unsigned(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_71_18 <= u2s_cast(a_17_32, 0, 34, 0);
  cast_71_22 <= u2s_cast(b_17_35, 0, 34, 0);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  cast_internal_s_83_3_convert <= s2u_cast(internal_s_71_5_addsub, 0, 6, 0);
  op_mem_91_20_front_din <= cast_internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= unsigned_to_std_logic_vector(op_mem_91_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity counter_f58b46c4b5 is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end counter_f58b46c4b5;


architecture behavior of counter_f58b46c4b5 is
  signal count_reg_20_23: unsigned((6 - 1) downto 0) := "000000";
begin
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("000001");
      end if;
    end if;
  end process proc_count_reg_20_23;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_2af8d8c05a is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((8 - 1) downto 0);
    d1 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_2af8d8c05a;


architecture behavior of mux_2af8d8c05a is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((8 - 1) downto 0);
  signal d1_1_27: std_logic_vector((8 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((8 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity negate_c4f0d4a411 is
  port (
    ip : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end negate_c4f0d4a411;


architecture behavior of negate_c4f0d4a411 is
  signal ip_18_25: signed((8 - 1) downto 0);
  type array_type_op_mem_42_20 is array (0 to (1 - 1)) of signed((8 - 1) downto 0);
  signal op_mem_42_20: array_type_op_mem_42_20 := (
    0 => "00000000");
  signal op_mem_42_20_front_din: signed((8 - 1) downto 0);
  signal op_mem_42_20_back: signed((8 - 1) downto 0);
  signal op_mem_42_20_push_front_pop_back_en: std_logic;
  signal cast_30_16: signed((9 - 1) downto 0);
  signal internal_ip_30_1_neg: signed((9 - 1) downto 0);
  signal cast_internal_ip_34_3_convert: signed((8 - 1) downto 0);
begin
  ip_18_25 <= std_logic_vector_to_signed(ip);
  op_mem_42_20_back <= op_mem_42_20(0);
  proc_op_mem_42_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_42_20_push_front_pop_back_en = '1')) then
        op_mem_42_20(0) <= op_mem_42_20_front_din;
      end if;
    end if;
  end process proc_op_mem_42_20;
  cast_30_16 <= s2s_cast(ip_18_25, 7, 9, 7);
  internal_ip_30_1_neg <=  -cast_30_16;
  cast_internal_ip_34_3_convert <= s2s_cast(internal_ip_30_1_neg, 7, 8, 7);
  op_mem_42_20_push_front_pop_back_en <= '0';
  op <= signed_to_std_logic_vector(cast_internal_ip_34_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_c93990e9d7 is
  port (
    op : out std_logic_vector((23 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_c93990e9d7;


architecture behavior of constant_c93990e9d7 is
begin
  op <= "10000000000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_b293ef57c5 is
  port (
    a : in std_logic_vector((23 - 1) downto 0);
    b : in std_logic_vector((23 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_b293ef57c5;


architecture behavior of relational_b293ef57c5 is
  signal a_1_31: unsigned((23 - 1) downto 0);
  signal b_1_34: unsigned((23 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_7c91b1b314 is
  port (
    op : out std_logic_vector((12 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_7c91b1b314;


architecture behavior of constant_7c91b1b314 is
begin
  op <= "000000000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_fd28b32bf8 is
  port (
    op : out std_logic_vector((12 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_fd28b32bf8;


architecture behavior of constant_fd28b32bf8 is
begin
  op <= "000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_aacf6e1b0e is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_aacf6e1b0e;


architecture behavior of logical_aacf6e1b0e is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_d36fe12c1c is
  port (
    a : in std_logic_vector((12 - 1) downto 0);
    b : in std_logic_vector((12 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_d36fe12c1c;


architecture behavior of relational_d36fe12c1c is
  signal a_1_31: unsigned((12 - 1) downto 0);
  signal b_1_34: unsigned((12 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_9447359c10 is
  port (
    sel : in std_logic_vector((4 - 1) downto 0);
    d0 : in std_logic_vector((11 - 1) downto 0);
    d1 : in std_logic_vector((11 - 1) downto 0);
    d2 : in std_logic_vector((11 - 1) downto 0);
    d3 : in std_logic_vector((11 - 1) downto 0);
    d4 : in std_logic_vector((11 - 1) downto 0);
    d5 : in std_logic_vector((11 - 1) downto 0);
    d6 : in std_logic_vector((11 - 1) downto 0);
    d7 : in std_logic_vector((11 - 1) downto 0);
    d8 : in std_logic_vector((11 - 1) downto 0);
    d9 : in std_logic_vector((11 - 1) downto 0);
    d10 : in std_logic_vector((11 - 1) downto 0);
    y : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_9447359c10;


architecture behavior of mux_9447359c10 is
  signal sel_1_20: std_logic_vector((4 - 1) downto 0);
  signal d0_1_24: std_logic_vector((11 - 1) downto 0);
  signal d1_1_27: std_logic_vector((11 - 1) downto 0);
  signal d2_1_30: std_logic_vector((11 - 1) downto 0);
  signal d3_1_33: std_logic_vector((11 - 1) downto 0);
  signal d4_1_36: std_logic_vector((11 - 1) downto 0);
  signal d5_1_39: std_logic_vector((11 - 1) downto 0);
  signal d6_1_42: std_logic_vector((11 - 1) downto 0);
  signal d7_1_45: std_logic_vector((11 - 1) downto 0);
  signal d8_1_48: std_logic_vector((11 - 1) downto 0);
  signal d9_1_51: std_logic_vector((11 - 1) downto 0);
  signal d10_1_54: std_logic_vector((11 - 1) downto 0);
  type array_type_pipe_34_22 is array (0 to (1 - 1)) of std_logic_vector((11 - 1) downto 0);
  signal pipe_34_22: array_type_pipe_34_22 := (
    0 => "00000000000");
  signal pipe_34_22_front_din: std_logic_vector((11 - 1) downto 0);
  signal pipe_34_22_back: std_logic_vector((11 - 1) downto 0);
  signal pipe_34_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((11 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  d3_1_33 <= d3;
  d4_1_36 <= d4;
  d5_1_39 <= d5;
  d6_1_42 <= d6;
  d7_1_45 <= d7;
  d8_1_48 <= d8;
  d9_1_51 <= d9;
  d10_1_54 <= d10;
  pipe_34_22_back <= pipe_34_22(0);
  proc_pipe_34_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_34_22_push_front_pop_back_en = '1')) then
        pipe_34_22(0) <= pipe_34_22_front_din;
      end if;
    end if;
  end process proc_pipe_34_22;
  proc_switch_6_1: process (d0_1_24, d10_1_54, d1_1_27, d2_1_30, d3_1_33, d4_1_36, d5_1_39, d6_1_42, d7_1_45, d8_1_48, d9_1_51, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0000" =>
        unregy_join_6_1 <= d0_1_24;
      when "0001" =>
        unregy_join_6_1 <= d1_1_27;
      when "0010" =>
        unregy_join_6_1 <= d2_1_30;
      when "0011" =>
        unregy_join_6_1 <= d3_1_33;
      when "0100" =>
        unregy_join_6_1 <= d4_1_36;
      when "0101" =>
        unregy_join_6_1 <= d5_1_39;
      when "0110" =>
        unregy_join_6_1 <= d6_1_42;
      when "0111" =>
        unregy_join_6_1 <= d7_1_45;
      when "1000" =>
        unregy_join_6_1 <= d8_1_48;
      when "1001" =>
        unregy_join_6_1 <= d9_1_51;
      when others =>
        unregy_join_6_1 <= d10_1_54;
    end case;
  end process proc_switch_6_1;
  pipe_34_22_front_din <= unregy_join_6_1;
  pipe_34_22_push_front_pop_back_en <= '1';
  y <= pipe_34_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_895cbeca91 is
  port (
    d : in std_logic_vector((11 - 1) downto 0);
    q : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_895cbeca91;


architecture behavior of delay_895cbeca91 is
  signal d_1_22: std_logic_vector((11 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_76b1f8d588 is
  port (
    d : in std_logic_vector((4 - 1) downto 0);
    q : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_76b1f8d588;


architecture behavior of delay_76b1f8d588 is
  signal d_1_22: std_logic_vector((4 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_0341f7be44 is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_0341f7be44;


architecture behavior of delay_0341f7be44 is
  signal d_1_22: std_logic;
begin
  d_1_22 <= d(0);
  q <= std_logic_to_vector(d_1_22);
end behavior;


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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlsprom_dist is
  generic (
    core_name0: string := "";
    addr_width: integer := 2;
    latency: integer := 0;
    c_width: integer := 12;
    c_address_width: integer := 4
  );
  port (
    addr: in std_logic_vector(addr_width - 1 downto 0);
    en: in std_logic_vector(0 downto 0);
    ce: in std_logic;
    clk: in std_logic;
    data: out std_logic_vector(c_width - 1 downto 0)
  );
end xlsprom_dist ;
architecture behavior of xlsprom_dist is
  component synth_reg
      generic (width       : integer;
               latency     : integer);
      port (i           : in std_logic_vector(width - 1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width - 1 downto 0));
  end component;
  signal core_data_out: std_logic_vector(c_width - 1 downto 0);
  constant num_extra_addr_bits: integer := (c_address_width - addr_width);
  signal core_addr: std_logic_vector(c_address_width - 1 downto 0);
  signal core_ce: std_logic;
  component dmg_43_02dd3a157d80ae94
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      spo: out std_logic_vector(c_width - 1 downto 0) 
    );
  end component;
  attribute syn_black_box of dmg_43_02dd3a157d80ae94:
    component is true;
  attribute fpga_dont_touch of dmg_43_02dd3a157d80ae94:
    component is "true";
  attribute box_type of dmg_43_02dd3a157d80ae94:
    component  is "black_box";
begin
  need_to_pad_addr: if num_extra_addr_bits > 0 generate
      core_addr(c_address_width - 1 downto addr_width) <= (others => '0');
    core_addr(addr_width - 1 downto 0) <= addr;
  end generate;
  no_need_to_pad_addr: if num_extra_addr_bits = 0 generate
    core_addr <= addr;
  end generate;
  core_ce <= ce and en(0);
  comp0: if ((core_name0 = "dmg_43_02dd3a157d80ae94")) generate
    core_instance0: dmg_43_02dd3a157d80ae94
      port map (
        a => core_addr,
        spo => core_data_out
      );
  end generate;
  latency_test: if (latency > 1) generate
    reg: synth_reg
      generic map (
        width => c_width,
        latency => latency - 1
      )
      port map (
        i => core_data_out,
        ce => core_ce,
        clr => '0',
        clk => clk,
        o => data
      );
  end generate;
  latency_0_or_1: if (latency <= 1)
  generate
    data <= core_data_out;
  end generate;
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_bbc53d9757 is
  port (
    in0 : in std_logic_vector((36 - 1) downto 0);
    in1 : in std_logic_vector((36 - 1) downto 0);
    in2 : in std_logic_vector((36 - 1) downto 0);
    in3 : in std_logic_vector((36 - 1) downto 0);
    y : out std_logic_vector((144 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_bbc53d9757;


architecture behavior of concat_bbc53d9757 is
  signal in0_1_23: unsigned((36 - 1) downto 0);
  signal in1_1_27: unsigned((36 - 1) downto 0);
  signal in2_1_31: unsigned((36 - 1) downto 0);
  signal in3_1_35: unsigned((36 - 1) downto 0);
  signal y_2_1_concat: unsigned((144 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_364e99894a is
  port (
    in0 : in std_logic_vector((72 - 1) downto 0);
    in1 : in std_logic_vector((72 - 1) downto 0);
    y : out std_logic_vector((144 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_364e99894a;


architecture behavior of concat_364e99894a is
  signal in0_1_23: unsigned((72 - 1) downto 0);
  signal in1_1_27: unsigned((72 - 1) downto 0);
  signal y_2_1_concat: unsigned((144 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity counter_9b03e3d644 is
  port (
    rst : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end counter_9b03e3d644;


architecture behavior of counter_9b03e3d644 is
  signal rst_1_40: boolean;
  signal count_reg_20_23: unsigned((1 - 1) downto 0) := "0";
  signal count_reg_20_23_rst: std_logic;
  signal bool_44_4: boolean;
  signal rst_limit_join_44_1: boolean;
  signal count_reg_join_44_1: unsigned((2 - 1) downto 0);
  signal count_reg_join_44_1_rst: std_logic;
begin
  rst_1_40 <= ((rst) = "1");
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (count_reg_20_23_rst = '1')) then
        count_reg_20_23 <= "0";
      elsif (ce = '1') then 
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("1");
      end if;
    end if;
  end process proc_count_reg_20_23;
  bool_44_4 <= rst_1_40 or false;
  proc_if_44_1: process (bool_44_4, count_reg_20_23)
  is
  begin
    if bool_44_4 then
      count_reg_join_44_1_rst <= '1';
    else 
      count_reg_join_44_1_rst <= '0';
    end if;
    if bool_44_4 then
      rst_limit_join_44_1 <= false;
    else 
      rst_limit_join_44_1 <= false;
    end if;
  end process proc_if_44_1;
  count_reg_20_23_rst <= count_reg_join_44_1_rst;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_479574aa10 is
  port (
    d : in std_logic_vector((144 - 1) downto 0);
    q : out std_logic_vector((144 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_479574aa10;


architecture behavior of delay_479574aa10 is
  signal d_1_22: std_logic_vector((144 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (2 - 1)) of std_logic_vector((144 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((144 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((144 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(1);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_dc6e12a537 is
  port (
    d : in std_logic_vector((144 - 1) downto 0);
    q : out std_logic_vector((144 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_dc6e12a537;


architecture behavior of delay_dc6e12a537 is
  signal d_1_22: std_logic_vector((144 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((144 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((144 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((144 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_c53de546ea is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_c53de546ea;


architecture behavior of delay_c53de546ea is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (4 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    '0',
    '0',
    '0',
    '0');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(3);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 3 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= std_logic_to_vector(op_mem_20_24_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_340b095e64 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((144 - 1) downto 0);
    d1 : in std_logic_vector((144 - 1) downto 0);
    y : out std_logic_vector((144 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_340b095e64;


architecture behavior of mux_340b095e64 is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((144 - 1) downto 0);
  signal d1_1_27: std_logic_vector((144 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (2 - 1)) of std_logic_vector((144 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
    "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((144 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((144 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((144 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(1);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          pipe_16_22(i) <= pipe_16_22(i-1);
        end loop;
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_8e53793314 is
  port (
    in0 : in std_logic_vector((8 - 1) downto 0);
    in1 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_8e53793314;


architecture behavior of concat_8e53793314 is
  signal in0_1_23: unsigned((8 - 1) downto 0);
  signal in1_1_27: unsigned((8 - 1) downto 0);
  signal y_2_1_concat: unsigned((16 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_d51df7ac30 is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_d51df7ac30;


architecture behavior of reinterpret_d51df7ac30 is
  signal input_port_1_40: signed((8 - 1) downto 0);
  signal output_port_5_5_force: unsigned((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_dfe2dded7f is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_dfe2dded7f;


architecture behavior of logical_dfe2dded7f is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal bit_2_26: std_logic;
  signal fully_2_1_bitnot: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  bit_2_26 <= d0_1_24 or d1_1_27;
  fully_2_1_bitnot <= not bit_2_26;
  y <= std_logic_to_vector(fully_2_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity bitbasher_5b1e76c782 is
  port (
    seed : in std_logic_vector((32 - 1) downto 0);
    seed0 : out std_logic_vector((32 - 1) downto 0);
    seed1 : out std_logic_vector((32 - 1) downto 0);
    seed2 : out std_logic_vector((32 - 1) downto 0);
    seed3 : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_5b1e76c782;


architecture behavior of bitbasher_5b1e76c782 is
  signal seed_1_48: unsigned((32 - 1) downto 0);
  signal slice_5_58: unsigned((8 - 1) downto 0);
  signal slice_5_87: unsigned((1 - 1) downto 0);
  signal slice_5_106: unsigned((1 - 1) downto 0);
  signal slice_5_125: unsigned((1 - 1) downto 0);
  signal slice_5_144: unsigned((1 - 1) downto 0);
  signal slice_5_163: unsigned((1 - 1) downto 0);
  signal slice_5_182: unsigned((1 - 1) downto 0);
  signal slice_5_201: unsigned((1 - 1) downto 0);
  signal slice_5_220: unsigned((1 - 1) downto 0);
  signal concat_5_78: unsigned((8 - 1) downto 0);
  signal fullseed0_5_1_concat: unsigned((32 - 1) downto 0);
  signal slice_6_58: unsigned((8 - 1) downto 0);
  signal slice_6_88: unsigned((1 - 1) downto 0);
  signal slice_6_107: unsigned((1 - 1) downto 0);
  signal slice_6_126: unsigned((1 - 1) downto 0);
  signal slice_6_147: unsigned((1 - 1) downto 0);
  signal slice_6_168: unsigned((1 - 1) downto 0);
  signal slice_6_189: unsigned((1 - 1) downto 0);
  signal slice_6_210: unsigned((1 - 1) downto 0);
  signal slice_6_231: unsigned((1 - 1) downto 0);
  signal concat_6_79: unsigned((8 - 1) downto 0);
  signal fullseed1_6_1_concat: unsigned((32 - 1) downto 0);
  signal slice_7_58: unsigned((8 - 1) downto 0);
  signal slice_7_89: unsigned((1 - 1) downto 0);
  signal slice_7_110: unsigned((1 - 1) downto 0);
  signal slice_7_131: unsigned((1 - 1) downto 0);
  signal slice_7_152: unsigned((1 - 1) downto 0);
  signal slice_7_173: unsigned((1 - 1) downto 0);
  signal slice_7_194: unsigned((1 - 1) downto 0);
  signal slice_7_215: unsigned((1 - 1) downto 0);
  signal slice_7_236: unsigned((1 - 1) downto 0);
  signal concat_7_80: unsigned((8 - 1) downto 0);
  signal fullseed2_7_1_concat: unsigned((32 - 1) downto 0);
  signal slice_8_58: unsigned((8 - 1) downto 0);
  signal slice_8_89: unsigned((1 - 1) downto 0);
  signal slice_8_110: unsigned((1 - 1) downto 0);
  signal slice_8_131: unsigned((1 - 1) downto 0);
  signal slice_8_152: unsigned((1 - 1) downto 0);
  signal slice_8_173: unsigned((1 - 1) downto 0);
  signal slice_8_194: unsigned((1 - 1) downto 0);
  signal slice_8_215: unsigned((1 - 1) downto 0);
  signal slice_8_236: unsigned((1 - 1) downto 0);
  signal concat_8_80: unsigned((8 - 1) downto 0);
  signal fullseed3_8_1_concat: unsigned((32 - 1) downto 0);
begin
  seed_1_48 <= std_logic_vector_to_unsigned(seed);
  slice_5_58 <= u2u_slice(seed_1_48, 7, 0);
  slice_5_87 <= u2u_slice(seed_1_48, 0, 0);
  slice_5_106 <= u2u_slice(seed_1_48, 1, 1);
  slice_5_125 <= u2u_slice(seed_1_48, 2, 2);
  slice_5_144 <= u2u_slice(seed_1_48, 3, 3);
  slice_5_163 <= u2u_slice(seed_1_48, 4, 4);
  slice_5_182 <= u2u_slice(seed_1_48, 5, 5);
  slice_5_201 <= u2u_slice(seed_1_48, 6, 6);
  slice_5_220 <= u2u_slice(seed_1_48, 7, 7);
  concat_5_78 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_87) & unsigned_to_std_logic_vector(slice_5_106) & unsigned_to_std_logic_vector(slice_5_125) & unsigned_to_std_logic_vector(slice_5_144) & unsigned_to_std_logic_vector(slice_5_163) & unsigned_to_std_logic_vector(slice_5_182) & unsigned_to_std_logic_vector(slice_5_201) & unsigned_to_std_logic_vector(slice_5_220));
  fullseed0_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("01011100")) & unsigned_to_std_logic_vector(slice_5_58) & unsigned_to_std_logic_vector(concat_5_78) & unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("10100011")));
  slice_6_58 <= u2u_slice(seed_1_48, 15, 8);
  slice_6_88 <= u2u_slice(seed_1_48, 8, 8);
  slice_6_107 <= u2u_slice(seed_1_48, 9, 9);
  slice_6_126 <= u2u_slice(seed_1_48, 10, 10);
  slice_6_147 <= u2u_slice(seed_1_48, 11, 11);
  slice_6_168 <= u2u_slice(seed_1_48, 12, 12);
  slice_6_189 <= u2u_slice(seed_1_48, 13, 13);
  slice_6_210 <= u2u_slice(seed_1_48, 14, 14);
  slice_6_231 <= u2u_slice(seed_1_48, 15, 15);
  concat_6_79 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_6_88) & unsigned_to_std_logic_vector(slice_6_107) & unsigned_to_std_logic_vector(slice_6_126) & unsigned_to_std_logic_vector(slice_6_147) & unsigned_to_std_logic_vector(slice_6_168) & unsigned_to_std_logic_vector(slice_6_189) & unsigned_to_std_logic_vector(slice_6_210) & unsigned_to_std_logic_vector(slice_6_231));
  fullseed1_6_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("01011100")) & unsigned_to_std_logic_vector(slice_6_58) & unsigned_to_std_logic_vector(concat_6_79) & unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("10100011")));
  slice_7_58 <= u2u_slice(seed_1_48, 23, 16);
  slice_7_89 <= u2u_slice(seed_1_48, 16, 16);
  slice_7_110 <= u2u_slice(seed_1_48, 17, 17);
  slice_7_131 <= u2u_slice(seed_1_48, 18, 18);
  slice_7_152 <= u2u_slice(seed_1_48, 19, 19);
  slice_7_173 <= u2u_slice(seed_1_48, 20, 20);
  slice_7_194 <= u2u_slice(seed_1_48, 21, 21);
  slice_7_215 <= u2u_slice(seed_1_48, 22, 22);
  slice_7_236 <= u2u_slice(seed_1_48, 23, 23);
  concat_7_80 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_7_89) & unsigned_to_std_logic_vector(slice_7_110) & unsigned_to_std_logic_vector(slice_7_131) & unsigned_to_std_logic_vector(slice_7_152) & unsigned_to_std_logic_vector(slice_7_173) & unsigned_to_std_logic_vector(slice_7_194) & unsigned_to_std_logic_vector(slice_7_215) & unsigned_to_std_logic_vector(slice_7_236));
  fullseed2_7_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("01011100")) & unsigned_to_std_logic_vector(slice_7_58) & unsigned_to_std_logic_vector(concat_7_80) & unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("10100011")));
  slice_8_58 <= u2u_slice(seed_1_48, 31, 24);
  slice_8_89 <= u2u_slice(seed_1_48, 24, 24);
  slice_8_110 <= u2u_slice(seed_1_48, 25, 25);
  slice_8_131 <= u2u_slice(seed_1_48, 26, 26);
  slice_8_152 <= u2u_slice(seed_1_48, 27, 27);
  slice_8_173 <= u2u_slice(seed_1_48, 28, 28);
  slice_8_194 <= u2u_slice(seed_1_48, 29, 29);
  slice_8_215 <= u2u_slice(seed_1_48, 30, 30);
  slice_8_236 <= u2u_slice(seed_1_48, 31, 31);
  concat_8_80 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_8_89) & unsigned_to_std_logic_vector(slice_8_110) & unsigned_to_std_logic_vector(slice_8_131) & unsigned_to_std_logic_vector(slice_8_152) & unsigned_to_std_logic_vector(slice_8_173) & unsigned_to_std_logic_vector(slice_8_194) & unsigned_to_std_logic_vector(slice_8_215) & unsigned_to_std_logic_vector(slice_8_236));
  fullseed3_8_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("01011100")) & unsigned_to_std_logic_vector(slice_8_58) & unsigned_to_std_logic_vector(concat_8_80) & unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("10100011")));
  seed0 <= unsigned_to_std_logic_vector(fullseed0_5_1_concat);
  seed1 <= unsigned_to_std_logic_vector(fullseed1_6_1_concat);
  seed2 <= unsigned_to_std_logic_vector(fullseed2_7_1_concat);
  seed3 <= unsigned_to_std_logic_vector(fullseed3_8_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_bfab03038f is
  port (
    sel : in std_logic_vector((3 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    d4 : in std_logic_vector((1 - 1) downto 0);
    d5 : in std_logic_vector((1 - 1) downto 0);
    d6 : in std_logic_vector((1 - 1) downto 0);
    d7 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_bfab03038f;


architecture behavior of mux_bfab03038f is
  signal sel_1_20: std_logic_vector((3 - 1) downto 0);
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal d3_1_33: std_logic;
  signal d4_1_36: std_logic;
  signal d5_1_39: std_logic;
  signal d6_1_42: std_logic;
  signal d7_1_45: std_logic;
  signal unregy_join_6_1: std_logic;
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  d3_1_33 <= d3(0);
  d4_1_36 <= d4(0);
  d5_1_39 <= d5(0);
  d6_1_42 <= d6(0);
  d7_1_45 <= d7(0);
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, d3_1_33, d4_1_36, d5_1_39, d6_1_42, d7_1_45, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "000" =>
        unregy_join_6_1 <= d0_1_24;
      when "001" =>
        unregy_join_6_1 <= d1_1_27;
      when "010" =>
        unregy_join_6_1 <= d2_1_30;
      when "011" =>
        unregy_join_6_1 <= d3_1_33;
      when "100" =>
        unregy_join_6_1 <= d4_1_36;
      when "101" =>
        unregy_join_6_1 <= d5_1_39;
      when "110" =>
        unregy_join_6_1 <= d6_1_42;
      when others =>
        unregy_join_6_1 <= d7_1_45;
    end case;
  end process proc_switch_6_1;
  y <= std_logic_to_vector(unregy_join_6_1);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_ae6966ed1c is
  port (
    a : in std_logic_vector((32 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    s : out std_logic_vector((33 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_ae6966ed1c;


architecture behavior of addsub_ae6966ed1c is
  signal a_17_32: signed((32 - 1) downto 0);
  signal b_17_35: signed((32 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (2 - 1)) of signed((33 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    "000000000000000000000000000000000",
    "000000000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((33 - 1) downto 0);
  signal op_mem_91_20_back: signed((33 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (2 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    "0",
    "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((33 - 1) downto 0);
  signal cast_69_22: signed((33 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((33 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(1);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_91_20(i) <= op_mem_91_20(i-1);
        end loop;
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(1);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        for i_x_000000 in 1 downto 1 loop 
          cout_mem_92_22(i_x_000000) <= cout_mem_92_22(i_x_000000-1);
        end loop;
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= s2s_cast(a_17_32, 30, 33, 30);
  cast_69_22 <= s2s_cast(b_17_35, 30, 33, 30);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  op_mem_91_20_front_din <= internal_s_69_5_addsub;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_b6f2d3b6eb is
  port (
    a : in std_logic_vector((33 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    s : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_b6f2d3b6eb;


architecture behavior of addsub_b6f2d3b6eb is
  signal a_17_32: signed((33 - 1) downto 0);
  signal b_17_35: signed((32 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (2 - 1)) of signed((32 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    "00000000000000000000000000000000",
    "00000000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((32 - 1) downto 0);
  signal op_mem_91_20_back: signed((32 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (2 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    "0",
    "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((34 - 1) downto 0);
  signal cast_69_22: signed((34 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((34 - 1) downto 0);
  signal cast_internal_s_83_3_convert: signed((32 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(1);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_91_20(i) <= op_mem_91_20(i-1);
        end loop;
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(1);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        for i_x_000000 in 1 downto 1 loop 
          cout_mem_92_22(i_x_000000) <= cout_mem_92_22(i_x_000000-1);
        end loop;
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= s2s_cast(a_17_32, 30, 34, 30);
  cast_69_22 <= s2s_cast(b_17_35, 30, 34, 30);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_69_5_addsub, 30, 32, 30);
  op_mem_91_20_front_din <= cast_internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_8ebe8fc34c is
  port (
    a : in std_logic_vector((32 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    s : out std_logic_vector((33 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_8ebe8fc34c;


architecture behavior of addsub_8ebe8fc34c is
  signal a_17_32: signed((32 - 1) downto 0);
  signal b_17_35: signed((32 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (2 - 1)) of signed((33 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    "000000000000000000000000000000000",
    "000000000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((33 - 1) downto 0);
  signal op_mem_91_20_back: signed((33 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (2 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    "0",
    "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_71_18: signed((33 - 1) downto 0);
  signal cast_71_22: signed((33 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((33 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(1);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_91_20(i) <= op_mem_91_20(i-1);
        end loop;
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(1);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        for i_x_000000 in 1 downto 1 loop 
          cout_mem_92_22(i_x_000000) <= cout_mem_92_22(i_x_000000-1);
        end loop;
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_71_18 <= s2s_cast(a_17_32, 30, 33, 30);
  cast_71_22 <= s2s_cast(b_17_35, 30, 33, 30);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  op_mem_91_20_front_din <= internal_s_71_5_addsub;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end behavior;


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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xladdsub is
  generic (
    core_name0: string := "";
    a_width: integer := 16;
    a_bin_pt: integer := 4;
    a_arith: integer := xlUnsigned;
    c_in_width: integer := 16;
    c_in_bin_pt: integer := 4;
    c_in_arith: integer := xlUnsigned;
    c_out_width: integer := 16;
    c_out_bin_pt: integer := 4;
    c_out_arith: integer := xlUnsigned;
    b_width: integer := 8;
    b_bin_pt: integer := 2;
    b_arith: integer := xlUnsigned;
    s_width: integer := 17;
    s_bin_pt: integer := 4;
    s_arith: integer := xlUnsigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    full_s_width: integer := 17;
    full_s_arith: integer := xlUnsigned;
    mode: integer := xlAddMode;
    extra_registers: integer := 0;
    latency: integer := 0;
    quantization: integer := xlTruncate;
    overflow: integer := xlWrap;
    c_latency: integer := 0;
    c_output_width: integer := 17;
    c_has_c_in : integer := 0;
    c_has_c_out : integer := 0
  );
  port (
    a: in std_logic_vector(a_width - 1 downto 0);
    b: in std_logic_vector(b_width - 1 downto 0);
    c_in : in std_logic_vector (0 downto 0) := "0";
    ce: in std_logic;
    clr: in std_logic := '0';
    clk: in std_logic;
    rst: in std_logic_vector(rst_width - 1 downto 0) := "0";
    en: in std_logic_vector(en_width - 1 downto 0) := "1";
    c_out : out std_logic_vector (0 downto 0);
    s: out std_logic_vector(s_width - 1 downto 0)
  );
end xladdsub;
architecture behavior of xladdsub is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  function format_input(inp: std_logic_vector; old_width, delta, new_arith,
                        new_width: integer)
    return std_logic_vector
  is
    variable vec: std_logic_vector(old_width-1 downto 0);
    variable padded_inp: std_logic_vector((old_width + delta)-1  downto 0);
    variable result: std_logic_vector(new_width-1 downto 0);
  begin
    vec := inp;
    if (delta > 0) then
      padded_inp := pad_LSB(vec, old_width+delta);
      result := extend_MSB(padded_inp, new_width, new_arith);
    else
      result := extend_MSB(vec, new_width, new_arith);
    end if;
    return result;
  end;
  constant full_s_bin_pt: integer := fractional_bits(a_bin_pt, b_bin_pt);
  constant full_a_width: integer := full_s_width;
  constant full_b_width: integer := full_s_width;
  signal full_a: std_logic_vector(full_a_width - 1 downto 0);
  signal full_b: std_logic_vector(full_b_width - 1 downto 0);
  signal core_s: std_logic_vector(full_s_width - 1 downto 0);
  signal conv_s: std_logic_vector(s_width - 1 downto 0);
  signal temp_cout : std_logic;
  signal internal_clr: std_logic;
  signal internal_ce: std_logic;
  signal extra_reg_ce: std_logic;
  signal override: std_logic;
  signal logic1: std_logic_vector(0 downto 0);
  component addsb_11_0_99837fc802519273
    port (
          a: in std_logic_vector(33 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(33 - 1 downto 0)
    );
  end component;
  attribute syn_black_box of addsb_11_0_99837fc802519273:
    component is true;
  attribute fpga_dont_touch of addsb_11_0_99837fc802519273:
    component is "true";
  attribute box_type of addsb_11_0_99837fc802519273:
    component  is "black_box";
begin
  internal_clr <= (clr or (rst(0))) and ce;
  internal_ce <= ce and en(0);
  logic1(0) <= '1';
  addsub_process: process (a, b, core_s)
  begin
    full_a <= format_input (a, a_width, b_bin_pt - a_bin_pt, a_arith,
                            full_a_width);
    full_b <= format_input (b, b_width, a_bin_pt - b_bin_pt, b_arith,
                            full_b_width);
    conv_s <= convert_type (core_s, full_s_width, full_s_bin_pt, full_s_arith,
                            s_width, s_bin_pt, s_arith, quantization, overflow);
  end process addsub_process;

  comp0: if ((core_name0 = "addsb_11_0_99837fc802519273")) generate
    core_instance0: addsb_11_0_99837fc802519273
      port map (
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
      );
  end generate;
  latency_test: if (extra_registers > 0) generate
      override_test: if (c_latency > 1) generate
       override_pipe: synth_reg
          generic map (
            width => 1,
            latency => c_latency
          )
          port map (
            i => logic1,
            ce => internal_ce,
            clr => internal_clr,
            clk => clk,
            o(0) => override);
       extra_reg_ce <= ce and en(0) and override;
      end generate override_test;
      no_override: if ((c_latency = 0) or (c_latency = 1)) generate
       extra_reg_ce <= ce and en(0);
      end generate no_override;
      extra_reg: synth_reg
        generic map (
          width => s_width,
          latency => extra_registers
        )
        port map (
          i => conv_s,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => s
        );
      cout_test: if (c_has_c_out = 1) generate
      c_out_extra_reg: synth_reg
        generic map (
          width => 1,
          latency => extra_registers
        )
        port map (
          i(0) => temp_cout,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => c_out
        );
      end generate cout_test;
  end generate;
  latency_s: if ((latency = 0) or (extra_registers = 0)) generate
    s <= conv_s;
  end generate latency_s;
  latency0: if (((latency = 0) or (extra_registers = 0)) and
                 (c_has_c_out = 1)) generate
    c_out(0) <= temp_cout;
  end generate latency0;
  tie_dangling_cout: if (c_has_c_out = 0) generate
    c_out <= "0";
  end generate tie_dangling_cout;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_a1e126f11c is
  port (
    in0 : in std_logic_vector((8 - 1) downto 0);
    in1 : in std_logic_vector((8 - 1) downto 0);
    in2 : in std_logic_vector((8 - 1) downto 0);
    in3 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_a1e126f11c;


architecture behavior of concat_a1e126f11c is
  signal in0_1_23: unsigned((8 - 1) downto 0);
  signal in1_1_27: unsigned((8 - 1) downto 0);
  signal in2_1_31: unsigned((8 - 1) downto 0);
  signal in3_1_35: unsigned((8 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_b895d092a0 is
  port (
    op : out std_logic_vector((27 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_b895d092a0;


architecture behavior of constant_b895d092a0 is
begin
  op <= "111111111111111111111111111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_ebdfb0074f is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_ebdfb0074f;


architecture behavior of constant_ebdfb0074f is
begin
  op <= "00000000000000000000000000000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_d99e59b6d4 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_d99e59b6d4;


architecture behavior of mux_d99e59b6d4 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic;
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= std_logic_to_vector(unregy_join_6_1);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_9729608ba4 is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((36 - 1) downto 0);
    d1 : in std_logic_vector((36 - 1) downto 0);
    d2 : in std_logic_vector((36 - 1) downto 0);
    y : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_9729608ba4;


architecture behavior of mux_9729608ba4 is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((36 - 1) downto 0);
  signal d1_1_27: std_logic_vector((36 - 1) downto 0);
  signal d2_1_30: std_logic_vector((36 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((36 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= d0_1_24;
      when "01" =>
        unregy_join_6_1 <= d1_1_27;
      when others =>
        unregy_join_6_1 <= d2_1_30;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_472286caed is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_472286caed;


architecture behavior of mux_472286caed is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal unregy_join_6_1: std_logic;
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= d0_1_24;
      when "01" =>
        unregy_join_6_1 <= d1_1_27;
      when others =>
        unregy_join_6_1 <= d2_1_30;
    end case;
  end process proc_switch_6_1;
  y <= std_logic_to_vector(unregy_join_6_1);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_dac42e2d5f is
  port (
    a : in std_logic_vector((27 - 1) downto 0);
    b : in std_logic_vector((27 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_dac42e2d5f;


architecture behavior of relational_dac42e2d5f is
  signal a_1_31: unsigned((27 - 1) downto 0);
  signal b_1_34: unsigned((27 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_97c9d52516 is
  port (
    a : in std_logic_vector((32 - 1) downto 0);
    b : in std_logic_vector((33 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_97c9d52516;


architecture behavior of relational_97c9d52516 is
  signal a_1_31: unsigned((32 - 1) downto 0);
  signal b_1_34: signed((33 - 1) downto 0);
  signal cast_12_12: signed((33 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  cast_12_12 <= u2s_cast(a_1_31, 0, 33, 0);
  result_12_3_rel <= cast_12_12 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;

entity pfb_core is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    pol1_in1: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    pol1_out1: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end pfb_core;
library IEEE;
use IEEE.std_logic_1164.all;

entity fft_1024ch_core is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    po1: in std_logic_vector(17 downto 0); 
    pol2: in std_logic_vector(17 downto 0); 
    pol3: in std_logic_vector(17 downto 0); 
    pol4: in std_logic_vector(17 downto 0); 
    shift: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    oflow: out std_logic; 
    plo02_out: out std_logic_vector(35 downto 0); 
    pol13_out: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_1024ch_core;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/ADC's/sat"

entity sat_entity_8369f531c7 is
  port (
    in2: in std_logic_vector(7 downto 0); 
    out1: out std_logic_vector(7 downto 0)
  );
end sat_entity_8369f531c7;

architecture structural of sat_entity_8369f531c7 is
  signal constant3_op_net: std_logic_vector(7 downto 0);
  signal constant4_op_net: std_logic_vector(7 downto 0);
  signal mux1_y_net_x0: std_logic_vector(7 downto 0);
  signal relational_op_net: std_logic;
  signal rpoco8_testbench_v11_adc_s_quadc0_adc0_data_net_x0: std_logic_vector(7 downto 0);

begin
  rpoco8_testbench_v11_adc_s_quadc0_adc0_data_net_x0 <= in2;
  out1 <= mux1_y_net_x0;

  constant3: entity work.constant_e8aae5d3bb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  constant4: entity work.constant_240f289783
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant4_op_net
    );

  mux1: entity work.mux_387191112d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => rpoco8_testbench_v11_adc_s_quadc0_adc0_data_net_x0,
      d1 => constant4_op_net,
      sel(0) => relational_op_net,
      y => mux1_y_net_x0
    );

  relational: entity work.relational_50d6ab372f
    port map (
      a => constant3_op_net,
      b => rpoco8_testbench_v11_adc_s_quadc0_adc0_data_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/ADC's"

entity adc_s_entity_e3597423e7 is
  port (
    rpoco8_testbench_v11_adc_s_quadc0_adc0_data: in std_logic_vector(7 downto 0); 
    rpoco8_testbench_v11_adc_s_quadc0_adc1_data: in std_logic_vector(7 downto 0); 
    rpoco8_testbench_v11_adc_s_quadc0_adc2_data: in std_logic_vector(7 downto 0); 
    rpoco8_testbench_v11_adc_s_quadc0_adc3_data: in std_logic_vector(7 downto 0); 
    rpoco8_testbench_v11_adc_s_quadc1_adc0_data: in std_logic_vector(7 downto 0); 
    rpoco8_testbench_v11_adc_s_quadc1_adc1_data: in std_logic_vector(7 downto 0); 
    rpoco8_testbench_v11_adc_s_quadc1_adc2_data: in std_logic_vector(7 downto 0); 
    rpoco8_testbench_v11_adc_s_quadc1_adc3_data: in std_logic_vector(7 downto 0); 
    adc0: out std_logic_vector(7 downto 0); 
    adc1: out std_logic_vector(7 downto 0); 
    adc2: out std_logic_vector(7 downto 0); 
    adc3: out std_logic_vector(7 downto 0); 
    adc4: out std_logic_vector(7 downto 0); 
    adc5: out std_logic_vector(7 downto 0); 
    adc6: out std_logic_vector(7 downto 0); 
    adc7: out std_logic_vector(7 downto 0)
  );
end adc_s_entity_e3597423e7;

architecture structural of adc_s_entity_e3597423e7 is
  signal mux1_y_net_x10: std_logic_vector(7 downto 0);
  signal mux1_y_net_x11: std_logic_vector(7 downto 0);
  signal mux1_y_net_x12: std_logic_vector(7 downto 0);
  signal mux1_y_net_x13: std_logic_vector(7 downto 0);
  signal mux1_y_net_x14: std_logic_vector(7 downto 0);
  signal mux1_y_net_x15: std_logic_vector(7 downto 0);
  signal mux1_y_net_x8: std_logic_vector(7 downto 0);
  signal mux1_y_net_x9: std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_adc_s_quadc0_adc0_data_net_x1: std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_adc_s_quadc0_adc1_data_net_x1: std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_adc_s_quadc0_adc2_data_net_x1: std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_adc_s_quadc0_adc3_data_net_x1: std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_adc_s_quadc1_adc0_data_net_x1: std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_adc_s_quadc1_adc1_data_net_x1: std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_adc_s_quadc1_adc2_data_net_x1: std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_adc_s_quadc1_adc3_data_net_x1: std_logic_vector(7 downto 0);

begin
  rpoco8_testbench_v11_adc_s_quadc0_adc0_data_net_x1 <= rpoco8_testbench_v11_adc_s_quadc0_adc0_data;
  rpoco8_testbench_v11_adc_s_quadc0_adc1_data_net_x1 <= rpoco8_testbench_v11_adc_s_quadc0_adc1_data;
  rpoco8_testbench_v11_adc_s_quadc0_adc2_data_net_x1 <= rpoco8_testbench_v11_adc_s_quadc0_adc2_data;
  rpoco8_testbench_v11_adc_s_quadc0_adc3_data_net_x1 <= rpoco8_testbench_v11_adc_s_quadc0_adc3_data;
  rpoco8_testbench_v11_adc_s_quadc1_adc0_data_net_x1 <= rpoco8_testbench_v11_adc_s_quadc1_adc0_data;
  rpoco8_testbench_v11_adc_s_quadc1_adc1_data_net_x1 <= rpoco8_testbench_v11_adc_s_quadc1_adc1_data;
  rpoco8_testbench_v11_adc_s_quadc1_adc2_data_net_x1 <= rpoco8_testbench_v11_adc_s_quadc1_adc2_data;
  rpoco8_testbench_v11_adc_s_quadc1_adc3_data_net_x1 <= rpoco8_testbench_v11_adc_s_quadc1_adc3_data;
  adc0 <= mux1_y_net_x8;
  adc1 <= mux1_y_net_x9;
  adc2 <= mux1_y_net_x10;
  adc3 <= mux1_y_net_x11;
  adc4 <= mux1_y_net_x12;
  adc5 <= mux1_y_net_x13;
  adc6 <= mux1_y_net_x14;
  adc7 <= mux1_y_net_x15;

  sat1_5ba61fab0a: entity work.sat_entity_8369f531c7
    port map (
      in2 => rpoco8_testbench_v11_adc_s_quadc0_adc1_data_net_x1,
      out1 => mux1_y_net_x9
    );

  sat2_c6a5c8f59b: entity work.sat_entity_8369f531c7
    port map (
      in2 => rpoco8_testbench_v11_adc_s_quadc0_adc2_data_net_x1,
      out1 => mux1_y_net_x10
    );

  sat3_c04323055d: entity work.sat_entity_8369f531c7
    port map (
      in2 => rpoco8_testbench_v11_adc_s_quadc0_adc3_data_net_x1,
      out1 => mux1_y_net_x11
    );

  sat4_aec1cd6a28: entity work.sat_entity_8369f531c7
    port map (
      in2 => rpoco8_testbench_v11_adc_s_quadc1_adc0_data_net_x1,
      out1 => mux1_y_net_x12
    );

  sat5_5b88eb9f31: entity work.sat_entity_8369f531c7
    port map (
      in2 => rpoco8_testbench_v11_adc_s_quadc1_adc1_data_net_x1,
      out1 => mux1_y_net_x13
    );

  sat6_41c6fe6813: entity work.sat_entity_8369f531c7
    port map (
      in2 => rpoco8_testbench_v11_adc_s_quadc1_adc2_data_net_x1,
      out1 => mux1_y_net_x14
    );

  sat7_c59481a828: entity work.sat_entity_8369f531c7
    port map (
      in2 => rpoco8_testbench_v11_adc_s_quadc1_adc3_data_net_x1,
      out1 => mux1_y_net_x15
    );

  sat_8369f531c7: entity work.sat_entity_8369f531c7
    port map (
      in2 => rpoco8_testbench_v11_adc_s_quadc0_adc0_data_net_x1,
      out1 => mux1_y_net_x8
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/Sync/posedge"

entity posedge_entity_7ef8015cc7 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end posedge_entity_7ef8015cc7;

architecture structural of posedge_entity_7ef8015cc7 is
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal delay_q_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal slice6_y_net_x0: std_logic;

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  slice6_y_net_x0 <= in_x0;
  out_x0 <= logical_y_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => slice6_y_net_x0,
      en => '1',
      q(0) => delay_q_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      ip(0) => delay_q_net,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => slice6_y_net_x0,
      y(0) => logical_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/Sync/pulse_ext1"

entity pulse_ext1_entity_adac66eb3d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end pulse_ext1_entity_adac66eb3d;

architecture structural of pulse_ext1_entity_adac66eb3d is
  signal ce_1_sg_x3: std_logic;
  signal clk_1_sg_x3: std_logic;
  signal constant5_op_net: std_logic_vector(27 downto 0);
  signal counter3_op_net: std_logic_vector(27 downto 0);
  signal logical_y_net_x2: std_logic;
  signal logical_y_net_x3: std_logic;
  signal relational5_op_net_x0: std_logic;

begin
  ce_1_sg_x3 <= ce_1;
  clk_1_sg_x3 <= clk_1;
  logical_y_net_x3 <= in_x0;
  out_x0 <= relational5_op_net_x0;

  constant5: entity work.constant_c50603e098
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant5_op_net
    );

  counter3: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_05e2750227d8d748",
      op_arith => xlUnsigned,
      op_width => 28
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      en(0) => relational5_op_net_x0,
      rst(0) => logical_y_net_x2,
      op => counter3_op_net
    );

  posedge_cbfaef7578: entity work.posedge_entity_7ef8015cc7
    port map (
      ce_1 => ce_1_sg_x3,
      clk_1 => clk_1_sg_x3,
      in_x0 => logical_y_net_x3,
      out_x0 => logical_y_net_x2
    );

  relational5: entity work.relational_8759749125
    port map (
      a => counter3_op_net,
      b => constant5_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational5_op_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/Sync"

entity sync_entity_ac6883115c is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rpoco8_testbench_v11_sync_arm_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_sync_sync_pulse_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_sync_sync_sel_user_data_out: in std_logic_vector(31 downto 0); 
    sync_adc0: in std_logic; 
    sync_gen: out std_logic
  );
end sync_entity_ac6883115c;

architecture structural of sync_entity_ac6883115c is
  signal ce_1_sg_x4: std_logic;
  signal clk_1_sg_x4: std_logic;
  signal logical1_y_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x3: std_logic;
  signal mux_y_net_x0: std_logic;
  signal relational5_op_net_x0: std_logic;
  signal rpoco8_testbench_v11_adc_s_quadc0_sync_net_x0: std_logic;
  signal rpoco8_testbench_v11_sync_arm_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_sync_sync_pulse_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_sync_sync_sel_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice5_y_net: std_logic;
  signal slice6_y_net_x0: std_logic;
  signal slice7_y_net_x0: std_logic;

begin
  ce_1_sg_x4 <= ce_1;
  clk_1_sg_x4 <= clk_1;
  rpoco8_testbench_v11_sync_arm_user_data_out_net_x0 <= rpoco8_testbench_v11_sync_arm_user_data_out;
  rpoco8_testbench_v11_sync_sync_pulse_user_data_out_net_x0 <= rpoco8_testbench_v11_sync_sync_pulse_user_data_out;
  rpoco8_testbench_v11_sync_sync_sel_user_data_out_net_x0 <= rpoco8_testbench_v11_sync_sync_sel_user_data_out;
  rpoco8_testbench_v11_adc_s_quadc0_sync_net_x0 <= sync_adc0;
  sync_gen <= mux_y_net_x0;

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => rpoco8_testbench_v11_adc_s_quadc0_sync_net_x0,
      d1(0) => relational5_op_net_x0,
      y(0) => logical1_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical1_y_net,
      d1(0) => logical_y_net_x0,
      sel(0) => slice5_y_net,
      y(0) => mux_y_net_x0
    );

  posedge1_4905a86b57: entity work.posedge_entity_7ef8015cc7
    port map (
      ce_1 => ce_1_sg_x4,
      clk_1 => clk_1_sg_x4,
      in_x0 => slice7_y_net_x0,
      out_x0 => logical_y_net_x3
    );

  posedge_7ef8015cc7: entity work.posedge_entity_7ef8015cc7
    port map (
      ce_1 => ce_1_sg_x4,
      clk_1 => clk_1_sg_x4,
      in_x0 => slice6_y_net_x0,
      out_x0 => logical_y_net_x0
    );

  pulse_ext1_adac66eb3d: entity work.pulse_ext1_entity_adac66eb3d
    port map (
      ce_1 => ce_1_sg_x4,
      clk_1 => clk_1_sg_x4,
      in_x0 => logical_y_net_x3,
      out_x0 => relational5_op_net_x0
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => rpoco8_testbench_v11_sync_sync_sel_user_data_out_net_x0,
      y(0) => slice5_y_net
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => rpoco8_testbench_v11_sync_sync_pulse_user_data_out_net_x0,
      y(0) => slice6_y_net_x0
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => rpoco8_testbench_v11_sync_arm_user_data_out_net_x0,
      y(0) => slice7_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/WGNs/noise0/convert"

entity convert_entity_e0e37c2708 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(16 downto 0); 
    out_x0: out std_logic_vector(7 downto 0)
  );
end convert_entity_e0e37c2708;

architecture structural of convert_entity_e0e37c2708 is
  signal adder_s_net_x0: std_logic_vector(7 downto 0);
  signal almost_half_op_net: std_logic_vector(10 downto 0);
  signal bit_y_net: std_logic;
  signal ce_1_sg_x5: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal concat_y_net: std_logic_vector(17 downto 0);
  signal constant_op_net: std_logic;
  signal force1_output_port_net: std_logic_vector(17 downto 0);
  signal force2_output_port_net: std_logic_vector(10 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(16 downto 0);
  signal scale_op_net_x0: std_logic_vector(16 downto 0);
  signal tweak_op_y_net: std_logic;

begin
  ce_1_sg_x5 <= ce_1;
  clk_1_sg_x5 <= clk_1;
  scale_op_net_x0 <= in_x0;
  out_x0 <= adder_s_net_x0;

  adder: entity work.addsub_542df25df6
    port map (
      a => force1_output_port_net,
      b => force2_output_port_net,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      s => adder_s_net_x0
    );

  almost_half: entity work.constant_f5d769813d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => almost_half_op_net
    );

  bit: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 16,
      x_width => 17,
      y_width => 1
    )
    port map (
      x => scale_op_net_x0,
      y(0) => bit_y_net
    );

  concat: entity work.concat_66f3e02bd3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret_output_port_net,
      in1(0) => tweak_op_y_net,
      y => concat_y_net
    );

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  force1: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_y_net,
      output_port => force1_output_port_net
    );

  force2: entity work.reinterpret_6b1adb5d55
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => almost_half_op_net,
      output_port => force2_output_port_net
    );

  reinterpret: entity work.reinterpret_573890e1c0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => scale_op_net_x0,
      output_port => reinterpret_output_port_net
    );

  tweak_op: entity work.logical_9d76333483
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => bit_y_net,
      d1(0) => constant_op_net,
      y(0) => tweak_op_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/WGNs/noise0/wgn/tt800_uprng/tt800_engine/output"

entity output_entity_3c5ce915bc is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(31 downto 0); 
    out_x0: out std_logic_vector(31 downto 0)
  );
end output_entity_3c5ce915bc;

architecture structural of output_entity_3c5ce915bc is
  signal b_op_net: std_logic_vector(31 downto 0);
  signal c_op_net: std_logic_vector(31 downto 0);
  signal ce_1_sg_x7: std_logic;
  signal clk_1_sg_x7: std_logic;
  signal delay1_q_net: std_logic_vector(31 downto 0);
  signal delay_q_net: std_logic_vector(31 downto 0);
  signal logical1_y_net: std_logic_vector(31 downto 0);
  signal logical2_y_net_x0: std_logic_vector(31 downto 0);
  signal logical3_y_net: std_logic_vector(31 downto 0);
  signal logical4_y_net: std_logic_vector(31 downto 0);
  signal lshift_s_op_net: std_logic_vector(31 downto 0);
  signal lshift_t_op_net: std_logic_vector(31 downto 0);
  signal x_l_q_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x7 <= ce_1;
  clk_1_sg_x7 <= clk_1;
  x_l_q_net_x0 <= in_x0;
  out_x0 <= logical2_y_net_x0;

  b: entity work.constant_f8d41441cb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => b_op_net
    );

  c: entity work.constant_7a5a41eeb1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => c_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d => x_l_q_net_x0,
      en => '1',
      q => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d => logical1_y_net,
      en => '1',
      q => delay1_q_net
    );

  logical1: entity work.logical_1e8142cab4
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      d0 => delay_q_net,
      d1 => logical3_y_net,
      y => logical1_y_net
    );

  logical2: entity work.logical_1e8142cab4
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      d0 => delay1_q_net,
      d1 => logical4_y_net,
      y => logical2_y_net_x0
    );

  logical3: entity work.logical_0fa52c7c40
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      d0 => lshift_s_op_net,
      d1 => b_op_net,
      y => logical3_y_net
    );

  logical4: entity work.logical_0fa52c7c40
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      d0 => lshift_t_op_net,
      d1 => c_op_net,
      y => logical4_y_net
    );

  lshift_s: entity work.shift_a3d6e8e72f
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      ip => x_l_q_net_x0,
      op => lshift_s_op_net
    );

  lshift_t: entity work.shift_9c14cd27bd
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      ip => logical1_y_net,
      op => lshift_t_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/WGNs/noise0/wgn/tt800_uprng/tt800_engine"

entity tt800_engine_entity_8eab8aba54 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    seed: in std_logic_vector(31 downto 0); 
    seed_en: in std_logic; 
    u: out std_logic_vector(31 downto 0)
  );
end tt800_engine_entity_8eab8aba54;

architecture structural of tt800_engine_entity_8eab8aba54 is
  signal a_op_net: std_logic_vector(31 downto 0);
  signal ce_1_sg_x8: std_logic;
  signal clk_1_sg_x8: std_logic;
  signal constant3_op_net: std_logic_vector(31 downto 0);
  signal delay_q_net: std_logic_vector(31 downto 0);
  signal expression_dout_net_x0: std_logic;
  signal lfsr_dout_net_x0: std_logic_vector(31 downto 0);
  signal logical2_y_net_x1: std_logic_vector(31 downto 0);
  signal logical_y_net: std_logic_vector(31 downto 0);
  signal lsb_y_net: std_logic;
  signal mux1_y_net: std_logic_vector(31 downto 0);
  signal mux_y_net: std_logic_vector(31 downto 0);
  signal rshift_1_op_net: std_logic_vector(31 downto 0);
  signal x_l_m_q_net: std_logic_vector(31 downto 0);
  signal x_l_q_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x8 <= ce_1;
  clk_1_sg_x8 <= clk_1;
  lfsr_dout_net_x0 <= seed;
  expression_dout_net_x0 <= seed_en;
  u <= logical2_y_net_x1;

  a: entity work.constant_79cd191324
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => a_op_net
    );

  constant3: entity work.constant_37567836aa
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d => x_l_m_q_net,
      en => '1',
      q => delay_q_net
    );

  logical: entity work.logical_f1acd27428
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      d0 => delay_q_net,
      d1 => rshift_1_op_net,
      d2 => mux_y_net,
      y => logical_y_net
    );

  lsb: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => x_l_q_net_x0,
      y(0) => lsb_y_net
    );

  mux: entity work.mux_52ae77d946
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      d0 => constant3_op_net,
      d1 => a_op_net,
      sel(0) => lsb_y_net,
      y => mux_y_net
    );

  mux1: entity work.mux_86a34309e7
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      d0 => logical_y_net,
      d1 => lfsr_dout_net_x0,
      sel(0) => expression_dout_net_x0,
      y => mux1_y_net
    );

  output_3c5ce915bc: entity work.output_entity_3c5ce915bc
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      in_x0 => x_l_q_net_x0,
      out_x0 => logical2_y_net_x1
    );

  rshift_1: entity work.shift_82822b2849
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      ip => x_l_q_net_x0,
      op => rshift_1_op_net
    );

  x_l: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d => x_l_m_q_net,
      en => '1',
      q => x_l_q_net_x0
    );

  x_l_m: entity work.xldelay
    generic map (
      latency => 15,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d => mux1_y_net,
      en => '1',
      q => x_l_m_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/WGNs/noise0/wgn/tt800_uprng/tt800_seed_gen/bootstrap"

entity bootstrap_entity_ec94e2f673 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    out_x0: out std_logic
  );
end bootstrap_entity_ec94e2f673;

architecture structural of bootstrap_entity_ec94e2f673 is
  signal ce_1_sg_x9: std_logic;
  signal clk_1_sg_x9: std_logic;
  signal constant3_op_net: std_logic;
  signal delay_q_net: std_logic;
  signal register_q_net_x0: std_logic;

begin
  ce_1_sg_x9 <= ce_1;
  clk_1_sg_x9 <= clk_1;
  out_x0 <= register_q_net_x0;

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 25,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      d(0) => constant3_op_net,
      en => '1',
      q(0) => delay_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      d(0) => constant3_op_net,
      en(0) => constant3_op_net,
      rst(0) => delay_q_net,
      q(0) => register_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/WGNs/noise0/wgn/tt800_uprng/tt800_seed_gen/p24_extender"

entity p24_extender_entity_d881a7e573 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end p24_extender_entity_d881a7e573;

architecture structural of p24_extender_entity_d881a7e573 is
  signal ce_1_sg_x10: std_logic;
  signal clk_1_sg_x10: std_logic;
  signal constant3_op_net: std_logic;
  signal delay_q_net: std_logic;
  signal expression_dout_net_x0: std_logic;
  signal register_q_net_x0: std_logic;

begin
  ce_1_sg_x10 <= ce_1;
  clk_1_sg_x10 <= clk_1;
  expression_dout_net_x0 <= in_x0;
  out_x0 <= register_q_net_x0;

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 24,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d(0) => expression_dout_net_x0,
      en => '1',
      q(0) => delay_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d(0) => constant3_op_net,
      en(0) => expression_dout_net_x0,
      rst(0) => delay_q_net,
      q(0) => register_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/WGNs/noise0/wgn/tt800_uprng/tt800_seed_gen/r_edge_detect"

entity r_edge_detect_entity_d2d38b3264 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end r_edge_detect_entity_d2d38b3264;

architecture structural of r_edge_detect_entity_d2d38b3264 is
  signal ce_1_sg_x11: std_logic;
  signal clk_1_sg_x11: std_logic;
  signal delay_q_net: std_logic;
  signal expression_dout_net_x1: std_logic;
  signal logical_y_net_x0: std_logic;

begin
  ce_1_sg_x11 <= ce_1;
  clk_1_sg_x11 <= clk_1;
  logical_y_net_x0 <= in_x0;
  out_x0 <= expression_dout_net_x1;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      d(0) => logical_y_net_x0,
      en => '1',
      q(0) => delay_q_net
    );

  expression: entity work.expr_c255d1cf74
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      curr(0) => logical_y_net_x0,
      prev(0) => delay_q_net,
      dout(0) => expression_dout_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/WGNs/noise0/wgn/tt800_uprng/tt800_seed_gen"

entity tt800_seed_gen_entity_9e38b6b8ee is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    ld: in std_logic; 
    seed_in: in std_logic_vector(31 downto 0); 
    seed_en: out std_logic; 
    seed_out: out std_logic_vector(31 downto 0)
  );
end tt800_seed_gen_entity_9e38b6b8ee;

architecture structural of tt800_seed_gen_entity_9e38b6b8ee is
  signal bitbasher_seed0_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x12: std_logic;
  signal clk_1_sg_x12: std_logic;
  signal expression_dout_net_x1: std_logic;
  signal expression_dout_net_x2: std_logic;
  signal lfsr_dout_net_x1: std_logic_vector(31 downto 0);
  signal logical_y_net_x1: std_logic;
  signal register_q_net_x0: std_logic;
  signal register_q_net_x1: std_logic;

begin
  ce_1_sg_x12 <= ce_1;
  clk_1_sg_x12 <= clk_1;
  logical_y_net_x1 <= ld;
  bitbasher_seed0_net_x0 <= seed_in;
  seed_en <= expression_dout_net_x2;
  seed_out <= lfsr_dout_net_x1;

  bootstrap_ec94e2f673: entity work.bootstrap_entity_ec94e2f673
    port map (
      ce_1 => ce_1_sg_x12,
      clk_1 => clk_1_sg_x12,
      out_x0 => register_q_net_x0
    );

  expression: entity work.expr_52ec6336d5
    port map (
      bootstrap(0) => register_q_net_x0,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      ld(0) => logical_y_net_x1,
      ld_ext(0) => register_q_net_x1,
      dout(0) => expression_dout_net_x2
    );

  lfsr: entity work.lfsr_49df07576f
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      din => bitbasher_seed0_net_x0,
      load(0) => logical_y_net_x1,
      dout => lfsr_dout_net_x1
    );

  p24_extender_d881a7e573: entity work.p24_extender_entity_d881a7e573
    port map (
      ce_1 => ce_1_sg_x12,
      clk_1 => clk_1_sg_x12,
      in_x0 => expression_dout_net_x1,
      out_x0 => register_q_net_x1
    );

  r_edge_detect_d2d38b3264: entity work.r_edge_detect_entity_d2d38b3264
    port map (
      ce_1 => ce_1_sg_x12,
      clk_1 => clk_1_sg_x12,
      in_x0 => logical_y_net_x1,
      out_x0 => expression_dout_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/WGNs/noise0/wgn/tt800_uprng"

entity tt800_uprng_entity_5ddb2422ae is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    ld: in std_logic; 
    seed: in std_logic_vector(31 downto 0); 
    u: out std_logic_vector(31 downto 0)
  );
end tt800_uprng_entity_5ddb2422ae;

architecture structural of tt800_uprng_entity_5ddb2422ae is
  signal bitbasher_seed0_net_x1: std_logic_vector(31 downto 0);
  signal ce_1_sg_x13: std_logic;
  signal clk_1_sg_x13: std_logic;
  signal expression_dout_net_x2: std_logic;
  signal lfsr_dout_net_x1: std_logic_vector(31 downto 0);
  signal logical2_y_net_x2: std_logic_vector(31 downto 0);
  signal logical_y_net_x2: std_logic;

begin
  ce_1_sg_x13 <= ce_1;
  clk_1_sg_x13 <= clk_1;
  logical_y_net_x2 <= ld;
  bitbasher_seed0_net_x1 <= seed;
  u <= logical2_y_net_x2;

  tt800_engine_8eab8aba54: entity work.tt800_engine_entity_8eab8aba54
    port map (
      ce_1 => ce_1_sg_x13,
      clk_1 => clk_1_sg_x13,
      seed => lfsr_dout_net_x1,
      seed_en => expression_dout_net_x2,
      u => logical2_y_net_x2
    );

  tt800_seed_gen_9e38b6b8ee: entity work.tt800_seed_gen_entity_9e38b6b8ee
    port map (
      ce_1 => ce_1_sg_x13,
      clk_1 => clk_1_sg_x13,
      ld => logical_y_net_x2,
      seed_in => bitbasher_seed0_net_x1,
      seed_en => expression_dout_net_x2,
      seed_out => lfsr_dout_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/WGNs/noise0/wgn/u2n/sincos"

entity sincos_entity_b4f4e7b6b8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    theta: in std_logic_vector(10 downto 0); 
    cos: out std_logic_vector(7 downto 0); 
    sine: out std_logic_vector(7 downto 0)
  );
end sincos_entity_b4f4e7b6b8;

architecture structural of sincos_entity_b4f4e7b6b8 is
  signal bottom_11_y_net_x0: std_logic_vector(10 downto 0);
  signal ce_1_sg_x14: std_logic;
  signal clk_1_sg_x14: std_logic;
  signal rom0_data_net_x0: std_logic_vector(7 downto 0);
  signal rom1_data_net_x0: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x14 <= ce_1;
  clk_1_sg_x14 <= clk_1;
  bottom_11_y_net_x0 <= theta;
  cos <= rom1_data_net_x0;
  sine <= rom0_data_net_x0;

  rom0: entity work.xlsprom
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_33_e4cac21e8ed012aa",
      latency => 1
    )
    port map (
      addr => bottom_11_y_net_x0,
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      en => "1",
      rst => "0",
      data => rom0_data_net_x0
    );

  rom1: entity work.xlsprom
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_33_7de9efda5baafcf4",
      latency => 1
    )
    port map (
      addr => bottom_11_y_net_x0,
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      en => "1",
      rst => "0",
      data => rom1_data_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/WGNs/noise0/wgn/u2n"

entity u2n_entity_7a3f6ed825 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    u: in std_logic_vector(31 downto 0); 
    n1: out std_logic_vector(16 downto 0); 
    n2: out std_logic_vector(16 downto 0)
  );
end u2n_entity_7a3f6ed825;

architecture structural of u2n_entity_7a3f6ed825 is
  signal bottom_11_y_net_x0: std_logic_vector(10 downto 0);
  signal ce_1_sg_x15: std_logic;
  signal clk_1_sg_x15: std_logic;
  signal log_lut_data_net: std_logic_vector(8 downto 0);
  signal logical2_y_net_x3: std_logic_vector(31 downto 0);
  signal r_cos_p_net_x0: std_logic_vector(16 downto 0);
  signal r_sin_p_net_x0: std_logic_vector(16 downto 0);
  signal rom0_data_net_x0: std_logic_vector(7 downto 0);
  signal rom1_data_net_x0: std_logic_vector(7 downto 0);
  signal top_11_y_net: std_logic_vector(10 downto 0);

begin
  ce_1_sg_x15 <= ce_1;
  clk_1_sg_x15 <= clk_1;
  logical2_y_net_x3 <= u;
  n1 <= r_sin_p_net_x0;
  n2 <= r_cos_p_net_x0;

  bottom_11: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 10,
      x_width => 32,
      y_width => 11
    )
    port map (
      x => logical2_y_net_x3,
      y => bottom_11_y_net_x0
    );

  log_lut: entity work.xlsprom
    generic map (
      c_address_width => 11,
      c_width => 9,
      core_name0 => "bmg_33_4c2b84f72036519d",
      latency => 1
    )
    port map (
      addr => top_11_y_net,
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      en => "1",
      rst => "0",
      data => log_lut_data_net
    );

  r_cos: entity work.xlmult
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 7,
      a_width => 9,
      b_arith => xlSigned,
      b_bin_pt => 7,
      b_width => 8,
      c_a_type => 1,
      c_a_width => 9,
      c_b_type => 0,
      c_b_width => 8,
      c_baat => 9,
      c_output_width => 17,
      c_type => 0,
      core_name0 => "mlt_11_2_fb712a1e6f4360e8",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 14,
      p_width => 17,
      quantization => 1
    )
    port map (
      a => log_lut_data_net,
      b => rom1_data_net_x0,
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      clr => '0',
      core_ce => ce_1_sg_x15,
      core_clk => clk_1_sg_x15,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => r_cos_p_net_x0
    );

  r_sin: entity work.xlmult
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 7,
      a_width => 9,
      b_arith => xlSigned,
      b_bin_pt => 7,
      b_width => 8,
      c_a_type => 1,
      c_a_width => 9,
      c_b_type => 0,
      c_b_width => 8,
      c_baat => 9,
      c_output_width => 17,
      c_type => 0,
      core_name0 => "mlt_11_2_fb712a1e6f4360e8",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 14,
      p_width => 17,
      quantization => 1
    )
    port map (
      a => log_lut_data_net,
      b => rom0_data_net_x0,
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      clr => '0',
      core_ce => ce_1_sg_x15,
      core_clk => clk_1_sg_x15,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => r_sin_p_net_x0
    );

  sincos_b4f4e7b6b8: entity work.sincos_entity_b4f4e7b6b8
    port map (
      ce_1 => ce_1_sg_x15,
      clk_1 => clk_1_sg_x15,
      theta => bottom_11_y_net_x0,
      cos => rom1_data_net_x0,
      sine => rom0_data_net_x0
    );

  top_11: entity work.xlslice
    generic map (
      new_lsb => 21,
      new_msb => 31,
      x_width => 32,
      y_width => 11
    )
    port map (
      x => logical2_y_net_x3,
      y => top_11_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/WGNs/noise0/wgn"

entity wgn_entity_61d53da098 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    ld: in std_logic; 
    seed: in std_logic_vector(31 downto 0); 
    n1: out std_logic_vector(16 downto 0); 
    n2: out std_logic_vector(16 downto 0)
  );
end wgn_entity_61d53da098;

architecture structural of wgn_entity_61d53da098 is
  signal bitbasher_seed0_net_x2: std_logic_vector(31 downto 0);
  signal ce_1_sg_x16: std_logic;
  signal clk_1_sg_x16: std_logic;
  signal logical2_y_net_x3: std_logic_vector(31 downto 0);
  signal logical_y_net_x3: std_logic;
  signal r_cos_p_net_x1: std_logic_vector(16 downto 0);
  signal r_sin_p_net_x1: std_logic_vector(16 downto 0);

begin
  ce_1_sg_x16 <= ce_1;
  clk_1_sg_x16 <= clk_1;
  logical_y_net_x3 <= ld;
  bitbasher_seed0_net_x2 <= seed;
  n1 <= r_sin_p_net_x1;
  n2 <= r_cos_p_net_x1;

  tt800_uprng_5ddb2422ae: entity work.tt800_uprng_entity_5ddb2422ae
    port map (
      ce_1 => ce_1_sg_x16,
      clk_1 => clk_1_sg_x16,
      ld => logical_y_net_x3,
      seed => bitbasher_seed0_net_x2,
      u => logical2_y_net_x3
    );

  u2n_7a3f6ed825: entity work.u2n_entity_7a3f6ed825
    port map (
      ce_1 => ce_1_sg_x16,
      clk_1 => clk_1_sg_x16,
      u => logical2_y_net_x3,
      n1 => r_sin_p_net_x1,
      n2 => r_cos_p_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/WGNs/noise0"

entity noise0_entity_eafca60d7f is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    ld: in std_logic; 
    seed: in std_logic_vector(31 downto 0); 
    n1: out std_logic_vector(7 downto 0); 
    n2: out std_logic_vector(7 downto 0)
  );
end noise0_entity_eafca60d7f;

architecture structural of noise0_entity_eafca60d7f is
  signal adder_s_net_x0: std_logic_vector(7 downto 0);
  signal adder_s_net_x1: std_logic_vector(7 downto 0);
  signal bitbasher_seed0_net_x3: std_logic_vector(31 downto 0);
  signal ce_1_sg_x17: std_logic;
  signal clk_1_sg_x17: std_logic;
  signal logical_y_net_x4: std_logic;
  signal r_cos_p_net_x1: std_logic_vector(16 downto 0);
  signal r_sin_p_net_x1: std_logic_vector(16 downto 0);
  signal reinterpret1_output_port_net_x0: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x0: std_logic_vector(7 downto 0);
  signal scale1_op_net_x0: std_logic_vector(16 downto 0);
  signal scale_op_net_x0: std_logic_vector(16 downto 0);

begin
  ce_1_sg_x17 <= ce_1;
  clk_1_sg_x17 <= clk_1;
  logical_y_net_x4 <= ld;
  bitbasher_seed0_net_x3 <= seed;
  n1 <= reinterpret_output_port_net_x0;
  n2 <= reinterpret1_output_port_net_x0;

  convert1_5b4af09f91: entity work.convert_entity_e0e37c2708
    port map (
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      in_x0 => scale1_op_net_x0,
      out_x0 => adder_s_net_x1
    );

  convert_e0e37c2708: entity work.convert_entity_e0e37c2708
    port map (
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      in_x0 => scale_op_net_x0,
      out_x0 => adder_s_net_x0
    );

  reinterpret: entity work.reinterpret_d9988e3d87
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => adder_s_net_x0,
      output_port => reinterpret_output_port_net_x0
    );

  reinterpret1: entity work.reinterpret_d9988e3d87
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => adder_s_net_x1,
      output_port => reinterpret1_output_port_net_x0
    );

  scale: entity work.scale_b42effccbc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => r_sin_p_net_x1,
      op => scale_op_net_x0
    );

  scale1: entity work.scale_b42effccbc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => r_cos_p_net_x1,
      op => scale1_op_net_x0
    );

  wgn_61d53da098: entity work.wgn_entity_61d53da098
    port map (
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      ld => logical_y_net_x4,
      seed => bitbasher_seed0_net_x3,
      n1 => r_sin_p_net_x1,
      n2 => r_cos_p_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/WGNs"

entity wgns_entity_1ab29848d8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    seed0: in std_logic_vector(31 downto 0); 
    seed1: in std_logic_vector(31 downto 0); 
    seed2: in std_logic_vector(31 downto 0); 
    seed3: in std_logic_vector(31 downto 0); 
    seed_ld: in std_logic; 
    n00: out std_logic_vector(7 downto 0); 
    n01: out std_logic_vector(7 downto 0); 
    n10: out std_logic_vector(7 downto 0); 
    n11: out std_logic_vector(7 downto 0); 
    n20: out std_logic_vector(7 downto 0); 
    n21: out std_logic_vector(7 downto 0); 
    n30: out std_logic_vector(7 downto 0); 
    n31: out std_logic_vector(7 downto 0)
  );
end wgns_entity_1ab29848d8;

architecture structural of wgns_entity_1ab29848d8 is
  signal bitbasher_seed0_net_x4: std_logic_vector(31 downto 0);
  signal bitbasher_seed1_net_x4: std_logic_vector(31 downto 0);
  signal bitbasher_seed2_net_x4: std_logic_vector(31 downto 0);
  signal bitbasher_seed3_net_x4: std_logic_vector(31 downto 0);
  signal ce_1_sg_x57: std_logic;
  signal clk_1_sg_x57: std_logic;
  signal logical_y_net_x20: std_logic;
  signal reinterpret1_output_port_net_x4: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x5: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x6: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x7: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x4: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x5: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x6: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x7: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x57 <= ce_1;
  clk_1_sg_x57 <= clk_1;
  bitbasher_seed0_net_x4 <= seed0;
  bitbasher_seed1_net_x4 <= seed1;
  bitbasher_seed2_net_x4 <= seed2;
  bitbasher_seed3_net_x4 <= seed3;
  logical_y_net_x20 <= seed_ld;
  n00 <= reinterpret_output_port_net_x4;
  n01 <= reinterpret1_output_port_net_x4;
  n10 <= reinterpret_output_port_net_x5;
  n11 <= reinterpret1_output_port_net_x5;
  n20 <= reinterpret_output_port_net_x6;
  n21 <= reinterpret1_output_port_net_x6;
  n30 <= reinterpret_output_port_net_x7;
  n31 <= reinterpret1_output_port_net_x7;

  noise0_eafca60d7f: entity work.noise0_entity_eafca60d7f
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      ld => logical_y_net_x20,
      seed => bitbasher_seed0_net_x4,
      n1 => reinterpret_output_port_net_x4,
      n2 => reinterpret1_output_port_net_x4
    );

  noise1_4fbcecd53e: entity work.noise0_entity_eafca60d7f
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      ld => logical_y_net_x20,
      seed => bitbasher_seed1_net_x4,
      n1 => reinterpret_output_port_net_x5,
      n2 => reinterpret1_output_port_net_x5
    );

  noise2_b9c8e4ffd4: entity work.noise0_entity_eafca60d7f
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      ld => logical_y_net_x20,
      seed => bitbasher_seed2_net_x4,
      n1 => reinterpret_output_port_net_x6,
      n2 => reinterpret1_output_port_net_x6
    );

  noise3_6c54c41815: entity work.noise0_entity_eafca60d7f
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      ld => logical_y_net_x20,
      seed => bitbasher_seed3_net_x4,
      n1 => reinterpret_output_port_net_x7,
      n2 => reinterpret1_output_port_net_x7
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/aa/c_to_ri"

entity c_to_ri_entity_73baf3c539 is
  port (
    c: in std_logic_vector(35 downto 0); 
    im: out std_logic_vector(17 downto 0); 
    re: out std_logic_vector(17 downto 0)
  );
end c_to_ri_entity_73baf3c539;

architecture structural of c_to_ri_entity_73baf3c539 is
  signal fft_real_biplex_1024chout_plo02_out_net_x0: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal slice_im_y_net: std_logic_vector(17 downto 0);
  signal slice_re_y_net: std_logic_vector(17 downto 0);

begin
  fft_real_biplex_1024chout_plo02_out_net_x0 <= c;
  im <= force_im_output_port_net_x0;
  re <= force_re_output_port_net_x0;

  force_im: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_im_y_net,
      output_port => force_im_output_port_net_x0
    );

  force_re: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_re_y_net,
      output_port => force_re_output_port_net_x0
    );

  slice_im: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => fft_real_biplex_1024chout_plo02_out_net_x0,
      y => slice_im_y_net
    );

  slice_re: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 35,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => fft_real_biplex_1024chout_plo02_out_net_x0,
      y => slice_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/aa/cmult_4bit_em*"

entity cmult_4bit_em_entity_8559f8a73e is
  port (
    a: in std_logic_vector(17 downto 0); 
    b: in std_logic_vector(17 downto 0); 
    c: in std_logic_vector(17 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(17 downto 0); 
    real_x0: out std_logic_vector(36 downto 0)
  );
end cmult_4bit_em_entity_8559f8a73e;

architecture structural of cmult_4bit_em_entity_8559f8a73e is
  signal ac_p_net: std_logic_vector(35 downto 0);
  signal bd_p_net: std_logic_vector(35 downto 0);
  signal ce_1_sg_x58: std_logic;
  signal clk_1_sg_x58: std_logic;
  signal force_im_output_port_net_x2: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x2: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal real_sum_s_net_x0: std_logic_vector(36 downto 0);

begin
  force_re_output_port_net_x2 <= a;
  force_im_output_port_net_x2 <= b;
  force_re_output_port_net_x3 <= c;
  ce_1_sg_x58 <= ce_1;
  clk_1_sg_x58 <= clk_1;
  force_im_output_port_net_x3 <= d;
  real_x0 <= real_sum_s_net_x0;

  ac: entity work.xlmult
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 17,
      a_width => 18,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 18,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 18,
      c_output_width => 36,
      c_type => 0,
      core_name0 => "mlt_11_2_22d57f485ffd805c",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 34,
      p_width => 36,
      quantization => 1
    )
    port map (
      a => force_re_output_port_net_x2,
      b => force_re_output_port_net_x3,
      ce => ce_1_sg_x58,
      clk => clk_1_sg_x58,
      clr => '0',
      core_ce => ce_1_sg_x58,
      core_clk => clk_1_sg_x58,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => ac_p_net
    );

  bd: entity work.xlmult
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 17,
      a_width => 18,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 18,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 18,
      c_output_width => 36,
      c_type => 0,
      core_name0 => "mlt_11_2_22d57f485ffd805c",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 34,
      p_width => 36,
      quantization => 1
    )
    port map (
      a => force_im_output_port_net_x2,
      b => force_im_output_port_net_x3,
      ce => ce_1_sg_x58,
      clk => clk_1_sg_x58,
      clr => '0',
      core_ce => ce_1_sg_x58,
      core_clk => clk_1_sg_x58,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => bd_p_net
    );

  real_sum: entity work.addsub_4ded11ba54
    port map (
      a => ac_p_net,
      b => bd_p_net,
      ce => ce_1_sg_x58,
      clk => clk_1_sg_x58,
      clr => '0',
      s => real_sum_s_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/aa/real"

entity real_entity_bff11737b3 is
  port (
    addr: in std_logic_vector(10 downto 0); 
    data_in: in std_logic_vector(31 downto 0); 
    we: in std_logic; 
    convert_addr_x0: out std_logic_vector(10 downto 0); 
    convert_din_x0: out std_logic_vector(31 downto 0); 
    convert_we_x0: out std_logic
  );
end real_entity_bff11737b3;

architecture structural of real_entity_bff11737b3 is
  signal convert_addr_dout_net_x0: std_logic_vector(10 downto 0);
  signal convert_din_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal counter2_op_net_x0: std_logic_vector(10 downto 0);
  signal relational5_op_net_x0: std_logic;
  signal single_port_ram_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  counter2_op_net_x0 <= addr;
  single_port_ram_data_out_net_x0 <= data_in;
  relational5_op_net_x0 <= we;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din_x0 <= convert_din_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 11,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 11,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => counter2_op_net_x0,
      dout => convert_addr_dout_net_x0
    );

  convert_din: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 31,
      din_width => 32,
      dout_arith => 2,
      dout_bin_pt => 31,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => single_port_ram_data_out_net_x0,
      dout => convert_din_dout_net_x0
    );

  convert_we: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => relational5_op_net_x0,
      dout(0) => convert_we_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/aa/simple_bram_vacc/delay_bram"

entity delay_bram_entity_e0877c919e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(31 downto 0); 
    out1: out std_logic_vector(31 downto 0)
  );
end delay_bram_entity_e0877c919e;

architecture structural of delay_bram_entity_e0877c919e is
  signal adder_s_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x59: std_logic;
  signal clk_1_sg_x59: std_logic;
  signal constant2_op_net: std_logic;
  signal counter_op_net: std_logic_vector(10 downto 0);
  signal single_port_ram_data_out_net_x1: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x59 <= ce_1;
  clk_1_sg_x59 <= clk_1;
  adder_s_net_x0 <= in1;
  out1 <= single_port_ram_data_out_net_x1;

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 2043,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_ae406e50e98e0e45",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  single_port_ram: entity work.xlspram
    generic map (
      c_address_width => 11,
      c_width => 32,
      core_name0 => "bmg_33_d9b3e13a04ce0977",
      latency => 1
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      data_in => adder_s_net_x0,
      en => "1",
      rst => "0",
      we(0) => constant2_op_net,
      data_out => single_port_ram_data_out_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/aa/simple_bram_vacc/pulse_ext"

entity pulse_ext_entity_6bd1940d33 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end pulse_ext_entity_6bd1940d33;

architecture structural of pulse_ext_entity_6bd1940d33 is
  signal ce_1_sg_x61: std_logic;
  signal clk_1_sg_x61: std_logic;
  signal constant5_op_net: std_logic_vector(11 downto 0);
  signal counter3_op_net: std_logic_vector(11 downto 0);
  signal delay1_q_net_x1: std_logic;
  signal logical_y_net_x0: std_logic;
  signal relational5_op_net_x1: std_logic;

begin
  ce_1_sg_x61 <= ce_1;
  clk_1_sg_x61 <= clk_1;
  delay1_q_net_x1 <= in_x0;
  out_x0 <= relational5_op_net_x1;

  constant5: entity work.constant_e054d850c5
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant5_op_net
    );

  counter3: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_29076546cca80226",
      op_arith => xlUnsigned,
      op_width => 12
    )
    port map (
      ce => ce_1_sg_x61,
      clk => clk_1_sg_x61,
      clr => '0',
      en(0) => relational5_op_net_x1,
      rst(0) => logical_y_net_x0,
      op => counter3_op_net
    );

  posedge_1c1f10c149: entity work.posedge_entity_7ef8015cc7
    port map (
      ce_1 => ce_1_sg_x61,
      clk_1 => clk_1_sg_x61,
      in_x0 => delay1_q_net_x1,
      out_x0 => logical_y_net_x0
    );

  relational5: entity work.relational_acb3c05dd0
    port map (
      a => counter3_op_net,
      b => constant5_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational5_op_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/aa/simple_bram_vacc"

entity simple_bram_vacc_entity_4ba107ba2e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(36 downto 0); 
    new_acc: in std_logic; 
    dout: out std_logic_vector(31 downto 0); 
    valid: out std_logic
  );
end simple_bram_vacc_entity_4ba107ba2e;

architecture structural of simple_bram_vacc_entity_4ba107ba2e is
  signal adder_s_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x62: std_logic;
  signal clk_1_sg_x62: std_logic;
  signal constant_op_net: std_logic_vector(31 downto 0);
  signal delay1_q_net_x2: std_logic;
  signal mux_y_net: std_logic_vector(31 downto 0);
  signal real_sum_s_net_x1: std_logic_vector(36 downto 0);
  signal relational5_op_net_x2: std_logic;
  signal single_port_ram_data_out_net_x2: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x62 <= ce_1;
  clk_1_sg_x62 <= clk_1;
  real_sum_s_net_x1 <= din;
  delay1_q_net_x2 <= new_acc;
  dout <= single_port_ram_data_out_net_x2;
  valid <= relational5_op_net_x2;

  adder: entity work.addsub_41967782b8
    port map (
      a => real_sum_s_net_x1,
      b => mux_y_net,
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
      clr => '0',
      s => adder_s_net_x0
    );

  constant_x0: entity work.constant_37567836aa
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  delay_bram_e0877c919e: entity work.delay_bram_entity_e0877c919e
    port map (
      ce_1 => ce_1_sg_x62,
      clk_1 => clk_1_sg_x62,
      in1 => adder_s_net_x0,
      out1 => single_port_ram_data_out_net_x2
    );

  mux: entity work.mux_286b77e019
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => single_port_ram_data_out_net_x2,
      d1 => constant_op_net,
      sel(0) => relational5_op_net_x2,
      y => mux_y_net
    );

  pulse_ext_6bd1940d33: entity work.pulse_ext_entity_6bd1940d33
    port map (
      ce_1 => ce_1_sg_x62,
      clk_1 => clk_1_sg_x62,
      in_x0 => delay1_q_net_x2,
      out_x0 => relational5_op_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/aa"

entity aa_entity_1973c2cd86 is
  port (
    a_bi: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    new_acc: in std_logic; 
    real_x0: out std_logic_vector(10 downto 0); 
    real_x1: out std_logic_vector(31 downto 0); 
    real_x2: out std_logic
  );
end aa_entity_1973c2cd86;

architecture structural of aa_entity_1973c2cd86 is
  signal ce_1_sg_x63: std_logic;
  signal clk_1_sg_x63: std_logic;
  signal convert_addr_dout_net_x1: std_logic_vector(10 downto 0);
  signal convert_din_dout_net_x1: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x1: std_logic;
  signal counter2_op_net_x0: std_logic_vector(10 downto 0);
  signal delay1_q_net_x2: std_logic;
  signal fft_real_biplex_1024chout_plo02_out_net_x2: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x2: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x2: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal real_sum_s_net_x1: std_logic_vector(36 downto 0);
  signal relational5_op_net_x2: std_logic;
  signal relational_op_net_x0: std_logic;
  signal single_port_ram_data_out_net_x2: std_logic_vector(31 downto 0);

begin
  fft_real_biplex_1024chout_plo02_out_net_x2 <= a_bi;
  ce_1_sg_x63 <= ce_1;
  clk_1_sg_x63 <= clk_1;
  relational_op_net_x0 <= new_acc;
  real_x0 <= convert_addr_dout_net_x1;
  real_x1 <= convert_din_dout_net_x1;
  real_x2 <= convert_we_dout_net_x1;

  c_to_ri1_5ab08df9ae: entity work.c_to_ri_entity_73baf3c539
    port map (
      c => fft_real_biplex_1024chout_plo02_out_net_x2,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri_73baf3c539: entity work.c_to_ri_entity_73baf3c539
    port map (
      c => fft_real_biplex_1024chout_plo02_out_net_x2,
      im => force_im_output_port_net_x2,
      re => force_re_output_port_net_x2
    );

  cmult_4bit_em_8559f8a73e: entity work.cmult_4bit_em_entity_8559f8a73e
    port map (
      a => force_re_output_port_net_x2,
      b => force_im_output_port_net_x2,
      c => force_re_output_port_net_x3,
      ce_1 => ce_1_sg_x63,
      clk_1 => clk_1_sg_x63,
      d => force_im_output_port_net_x3,
      real_x0 => real_sum_s_net_x1
    );

  counter2: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_ae406e50e98e0e45",
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x63,
      clk => clk_1_sg_x63,
      clr => '0',
      en(0) => relational5_op_net_x2,
      rst(0) => delay1_q_net_x2,
      op => counter2_op_net_x0
    );

  delay1: entity work.xldelay
    generic map (
      latency => 5,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x63,
      clk => clk_1_sg_x63,
      d(0) => relational_op_net_x0,
      en => '1',
      q(0) => delay1_q_net_x2
    );

  real_bff11737b3: entity work.real_entity_bff11737b3
    port map (
      addr => counter2_op_net_x0,
      data_in => single_port_ram_data_out_net_x2,
      we => relational5_op_net_x2,
      convert_addr_x0 => convert_addr_dout_net_x1,
      convert_din_x0 => convert_din_dout_net_x1,
      convert_we_x0 => convert_we_dout_net_x1
    );

  simple_bram_vacc_4ba107ba2e: entity work.simple_bram_vacc_entity_4ba107ba2e
    port map (
      ce_1 => ce_1_sg_x63,
      clk_1 => clk_1_sg_x63,
      din => real_sum_s_net_x1,
      new_acc => delay1_q_net_x2,
      dout => single_port_ram_data_out_net_x2,
      valid => relational5_op_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/acc_num"

entity acc_num_entity_fa3a1745e9 is
  port (
    reg_out: in std_logic_vector(31 downto 0); 
    convert_x0: out std_logic_vector(31 downto 0)
  );
end acc_num_entity_fa3a1745e9;

architecture structural of acc_num_entity_fa3a1745e9 is
  signal convert_dout_net_x0: std_logic_vector(31 downto 0);
  signal counter1_op_net_x0: std_logic_vector(31 downto 0);

begin
  counter1_op_net_x0 <= reg_out;
  convert_x0 <= convert_dout_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => counter1_op_net_x0,
      dout => convert_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/adc0_3"

entity adc0_3_entity_7e8f06c2ce is
  port (
    addr: in std_logic_vector(10 downto 0); 
    data_in: in std_logic_vector(31 downto 0); 
    we: in std_logic; 
    convert_addr_x0: out std_logic_vector(10 downto 0); 
    convert_din_x0: out std_logic_vector(31 downto 0); 
    convert_we_x0: out std_logic
  );
end adc0_3_entity_7e8f06c2ce;

architecture structural of adc0_3_entity_7e8f06c2ce is
  signal concat_y_net_x0: std_logic_vector(31 downto 0);
  signal convert_addr_dout_net_x0: std_logic_vector(10 downto 0);
  signal convert_din_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal enable_y_net_x0: std_logic_vector(10 downto 0);
  signal logical1_y_net_x0: std_logic;

begin
  enable_y_net_x0 <= addr;
  concat_y_net_x0 <= data_in;
  logical1_y_net_x0 <= we;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din_x0 <= convert_din_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 11,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 11,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => enable_y_net_x0,
      dout => convert_addr_dout_net_x0
    );

  convert_din: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => concat_y_net_x0,
      dout => convert_din_dout_net_x0
    );

  convert_we: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => logical1_y_net_x0,
      dout(0) => convert_we_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/barrel_switcher"

entity barrel_switcher_entity_8e86ad8b2b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic; 
    in2: in std_logic; 
    sel: in std_logic_vector(1 downto 0); 
    out1: out std_logic; 
    out2: out std_logic; 
    out3: out std_logic; 
    out4: out std_logic
  );
end barrel_switcher_entity_8e86ad8b2b;

architecture structural of barrel_switcher_entity_8e86ad8b2b is
  signal ce_1_sg_x64: std_logic;
  signal clk_1_sg_x64: std_logic;
  signal constant4_op_net_x0: std_logic;
  signal delay1_q_net: std_logic_vector(1 downto 0);
  signal mux11_y_net: std_logic;
  signal mux12_y_net_x0: std_logic;
  signal mux21_y_net: std_logic;
  signal mux22_y_net_x0: std_logic;
  signal mux31_y_net: std_logic;
  signal mux32_y_net_x0: std_logic;
  signal mux41_y_net: std_logic;
  signal mux42_y_net_x0: std_logic;
  signal slice1_y_net_x0: std_logic;
  signal slice1_y_net_x1: std_logic_vector(1 downto 0);
  signal slice2_y_net_x0: std_logic;
  signal slice2_y_net_x1: std_logic;

begin
  ce_1_sg_x64 <= ce_1;
  clk_1_sg_x64 <= clk_1;
  slice2_y_net_x1 <= in1;
  constant4_op_net_x0 <= in2;
  slice1_y_net_x1 <= sel;
  out1 <= mux12_y_net_x0;
  out2 <= mux22_y_net_x0;
  out3 <= mux32_y_net_x0;
  out4 <= mux42_y_net_x0;

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 2
    )
    port map (
      ce => ce_1_sg_x64,
      clk => clk_1_sg_x64,
      d => slice1_y_net_x1,
      en => '1',
      q => delay1_q_net
    );

  mux11: entity work.mux_2aa09bfea3
    port map (
      ce => ce_1_sg_x64,
      clk => clk_1_sg_x64,
      clr => '0',
      d0(0) => slice2_y_net_x1,
      d1(0) => constant4_op_net_x0,
      sel(0) => slice1_y_net_x0,
      y(0) => mux11_y_net
    );

  mux12: entity work.mux_2aa09bfea3
    port map (
      ce => ce_1_sg_x64,
      clk => clk_1_sg_x64,
      clr => '0',
      d0(0) => mux11_y_net,
      d1(0) => mux21_y_net,
      sel(0) => slice2_y_net_x0,
      y(0) => mux12_y_net_x0
    );

  mux21: entity work.mux_2aa09bfea3
    port map (
      ce => ce_1_sg_x64,
      clk => clk_1_sg_x64,
      clr => '0',
      d0(0) => constant4_op_net_x0,
      d1(0) => constant4_op_net_x0,
      sel(0) => slice1_y_net_x0,
      y(0) => mux21_y_net
    );

  mux22: entity work.mux_2aa09bfea3
    port map (
      ce => ce_1_sg_x64,
      clk => clk_1_sg_x64,
      clr => '0',
      d0(0) => mux21_y_net,
      d1(0) => mux31_y_net,
      sel(0) => slice2_y_net_x0,
      y(0) => mux22_y_net_x0
    );

  mux31: entity work.mux_2aa09bfea3
    port map (
      ce => ce_1_sg_x64,
      clk => clk_1_sg_x64,
      clr => '0',
      d0(0) => constant4_op_net_x0,
      d1(0) => slice2_y_net_x1,
      sel(0) => slice1_y_net_x0,
      y(0) => mux31_y_net
    );

  mux32: entity work.mux_2aa09bfea3
    port map (
      ce => ce_1_sg_x64,
      clk => clk_1_sg_x64,
      clr => '0',
      d0(0) => mux31_y_net,
      d1(0) => mux41_y_net,
      sel(0) => slice2_y_net_x0,
      y(0) => mux32_y_net_x0
    );

  mux41: entity work.mux_2aa09bfea3
    port map (
      ce => ce_1_sg_x64,
      clk => clk_1_sg_x64,
      clr => '0',
      d0(0) => constant4_op_net_x0,
      d1(0) => constant4_op_net_x0,
      sel(0) => slice1_y_net_x0,
      y(0) => mux41_y_net
    );

  mux42: entity work.mux_2aa09bfea3
    port map (
      ce => ce_1_sg_x64,
      clk => clk_1_sg_x64,
      clr => '0',
      d0(0) => mux41_y_net,
      d1(0) => mux11_y_net,
      sel(0) => slice2_y_net_x0,
      y(0) => mux42_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 2,
      y_width => 1
    )
    port map (
      x => slice1_y_net_x1,
      y(0) => slice1_y_net_x0
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 2,
      y_width => 1
    )
    port map (
      x => delay1_q_net,
      y(0) => slice2_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/delay"

entity delay_entity_676f70a8c2 is
  port (
    rpoco8_testbench_v11_delay_delay_data_user_data_out: in std_logic_vector(31 downto 0); 
    delay0: out std_logic_vector(3 downto 0); 
    delay1: out std_logic_vector(3 downto 0); 
    delay2: out std_logic_vector(3 downto 0); 
    delay3: out std_logic_vector(3 downto 0); 
    delay4: out std_logic_vector(3 downto 0); 
    delay5: out std_logic_vector(3 downto 0); 
    delay6: out std_logic_vector(3 downto 0); 
    delay7: out std_logic_vector(3 downto 0)
  );
end delay_entity_676f70a8c2;

architecture structural of delay_entity_676f70a8c2 is
  signal bitbasher1_delay4_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher1_delay5_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher1_delay6_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher1_delay7_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher_delay0_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher_delay1_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher_delay2_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher_delay3_net_x0: std_logic_vector(3 downto 0);
  signal rpoco8_testbench_v11_delay_delay_data_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  rpoco8_testbench_v11_delay_delay_data_user_data_out_net_x0 <= rpoco8_testbench_v11_delay_delay_data_user_data_out;
  delay0 <= bitbasher_delay0_net_x0;
  delay1 <= bitbasher_delay1_net_x0;
  delay2 <= bitbasher_delay2_net_x0;
  delay3 <= bitbasher_delay3_net_x0;
  delay4 <= bitbasher1_delay4_net_x0;
  delay5 <= bitbasher1_delay5_net_x0;
  delay6 <= bitbasher1_delay6_net_x0;
  delay7 <= bitbasher1_delay7_net_x0;

  bitbasher: entity work.bitbasher_a85d9bdfd2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      delay => rpoco8_testbench_v11_delay_delay_data_user_data_out_net_x0,
      delay0 => bitbasher_delay0_net_x0,
      delay1 => bitbasher_delay1_net_x0,
      delay2 => bitbasher_delay2_net_x0,
      delay3 => bitbasher_delay3_net_x0
    );

  bitbasher1: entity work.bitbasher_1f3692b5e0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      delay => rpoco8_testbench_v11_delay_delay_data_user_data_out_net_x0,
      delay4 => bitbasher1_delay4_net_x0,
      delay5 => bitbasher1_delay5_net_x0,
      delay6 => bitbasher1_delay6_net_x0,
      delay7 => bitbasher1_delay7_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/edge"

entity edge_entity_c43d5671fa is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end edge_entity_c43d5671fa;

architecture structural of edge_entity_c43d5671fa is
  signal ce_1_sg_x65: std_logic;
  signal clk_1_sg_x65: std_logic;
  signal delay4_q_net: std_logic;
  signal logical3_y_net_x0: std_logic;
  signal slice10_y_net_x0: std_logic;

begin
  ce_1_sg_x65 <= ce_1;
  clk_1_sg_x65 <= clk_1;
  slice10_y_net_x0 <= in_x0;
  out_x0 <= logical3_y_net_x0;

  delay4: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x65,
      clk => clk_1_sg_x65,
      d(0) => slice10_y_net_x0,
      en => '1',
      q(0) => delay4_q_net
    );

  logical3: entity work.logical_e77c53f8bd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay4_q_net,
      d1(0) => slice10_y_net_x0,
      y(0) => logical3_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/eq_fft0/round1"

entity round1_entity_d9ee8b94b2 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(35 downto 0); 
    scale: in std_logic_vector(16 downto 0); 
    dout: out std_logic_vector(35 downto 0)
  );
end round1_entity_d9ee8b94b2;

architecture structural of round1_entity_d9ee8b94b2 is
  signal ce_1_sg_x66: std_logic;
  signal clk_1_sg_x66: std_logic;
  signal concat1_y_net: std_logic_vector(1 downto 0);
  signal concat2_y_net: std_logic_vector(1 downto 0);
  signal concat_y_net_x0: std_logic_vector(35 downto 0);
  signal constant1_op_net: std_logic_vector(17 downto 0);
  signal constant2_op_net: std_logic_vector(17 downto 0);
  signal constant3_op_net: std_logic_vector(17 downto 0);
  signal constant4_op_net: std_logic_vector(17 downto 0);
  signal constant5_op_net: std_logic_vector(17 downto 0);
  signal constant6_op_net: std_logic_vector(17 downto 0);
  signal constant7_op_net: std_logic_vector(17 downto 0);
  signal constant_op_net: std_logic_vector(17 downto 0);
  signal convert2_dout_net: std_logic_vector(17 downto 0);
  signal convert3_dout_net: std_logic_vector(17 downto 0);
  signal delay11_q_net_x0: std_logic_vector(35 downto 0);
  signal dual_port_ram_douta_net_x0: std_logic_vector(16 downto 0);
  signal mult1_p_net: std_logic_vector(34 downto 0);
  signal mult_p_net: std_logic_vector(34 downto 0);
  signal mux1_y_net: std_logic_vector(17 downto 0);
  signal mux_y_net: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret3_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(17 downto 0);
  signal relational1_op_net: std_logic;
  signal relational2_op_net: std_logic;
  signal relational3_op_net: std_logic;
  signal relational_op_net: std_logic;
  signal slice4_y_net: std_logic_vector(17 downto 0);
  signal slice5_y_net: std_logic_vector(17 downto 0);

begin
  ce_1_sg_x66 <= ce_1;
  clk_1_sg_x66 <= clk_1;
  delay11_q_net_x0 <= din;
  dual_port_ram_douta_net_x0 <= scale;
  dout <= concat_y_net_x0;

  concat: entity work.concat_b198bd62b0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret2_output_port_net,
      in1 => reinterpret3_output_port_net,
      y => concat_y_net_x0
    );

  concat1: entity work.concat_32afb77cd2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => relational1_op_net,
      in1(0) => relational_op_net,
      y => concat1_y_net
    );

  concat2: entity work.concat_32afb77cd2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => relational3_op_net,
      in1(0) => relational2_op_net,
      y => concat2_y_net
    );

  constant1: entity work.constant_571125472d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_e3cd42f5d3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_571125472d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  constant4: entity work.constant_e3cd42f5d3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant4_op_net
    );

  constant5: entity work.constant_571125472d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant5_op_net
    );

  constant6: entity work.constant_e3cd42f5d3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant6_op_net
    );

  constant7: entity work.constant_571125472d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant7_op_net
    );

  constant_x0: entity work.constant_e3cd42f5d3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 24,
      din_width => 35,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 2,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      din => mult_p_net,
      dout => convert2_dout_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 24,
      din_width => 35,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 2,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      din => mult1_p_net,
      dout => convert3_dout_net
    );

  mult: entity work.xlmult
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 17,
      a_width => 18,
      b_arith => xlUnsigned,
      b_bin_pt => 7,
      b_width => 17,
      c_a_type => 0,
      c_a_width => 18,
      c_b_type => 1,
      c_b_width => 17,
      c_baat => 18,
      c_output_width => 35,
      c_type => 0,
      core_name0 => "mlt_11_2_4ed06302eba93f8e",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 24,
      p_width => 35,
      quantization => 1
    )
    port map (
      a => reinterpret_output_port_net,
      b => dual_port_ram_douta_net_x0,
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      core_ce => ce_1_sg_x66,
      core_clk => clk_1_sg_x66,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult_p_net
    );

  mult1: entity work.xlmult
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 17,
      a_width => 18,
      b_arith => xlUnsigned,
      b_bin_pt => 7,
      b_width => 17,
      c_a_type => 0,
      c_a_width => 18,
      c_b_type => 1,
      c_b_width => 17,
      c_baat => 18,
      c_output_width => 35,
      c_type => 0,
      core_name0 => "mlt_11_2_4ed06302eba93f8e",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 24,
      p_width => 35,
      quantization => 1
    )
    port map (
      a => reinterpret1_output_port_net,
      b => dual_port_ram_douta_net_x0,
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      core_ce => ce_1_sg_x66,
      core_clk => clk_1_sg_x66,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult1_p_net
    );

  mux: entity work.mux_acc4af9f66
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => convert2_dout_net,
      d1 => constant2_op_net,
      d2 => constant3_op_net,
      sel => concat1_y_net,
      y => mux_y_net
    );

  mux1: entity work.mux_acc4af9f66
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => convert3_dout_net,
      d1 => constant6_op_net,
      d2 => constant7_op_net,
      sel => concat2_y_net,
      y => mux1_y_net
    );

  reinterpret: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice4_y_net,
      output_port => reinterpret_output_port_net
    );

  reinterpret1: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice5_y_net,
      output_port => reinterpret1_output_port_net
    );

  reinterpret2: entity work.reinterpret_580feec131
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux_y_net,
      output_port => reinterpret2_output_port_net
    );

  reinterpret3: entity work.reinterpret_580feec131
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux1_y_net,
      output_port => reinterpret3_output_port_net
    );

  relational: entity work.relational_c6e139f236
    port map (
      a => mult_p_net,
      b => constant_op_net,
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_dc801cb463
    port map (
      a => mult_p_net,
      b => constant1_op_net,
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      op(0) => relational1_op_net
    );

  relational2: entity work.relational_c6e139f236
    port map (
      a => mult1_p_net,
      b => constant4_op_net,
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      op(0) => relational2_op_net
    );

  relational3: entity work.relational_dc801cb463
    port map (
      a => mult1_p_net,
      b => constant5_op_net,
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      op(0) => relational3_op_net
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 35,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => delay11_q_net_x0,
      y => slice4_y_net
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => delay11_q_net_x0,
      y => slice5_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/eq_fft0"

entity eq_fft0_entity_a3cb66ad46 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeff: in std_logic_vector(16 downto 0); 
    coeff_addr: in std_logic_vector(5 downto 0); 
    coeff_we: in std_logic; 
    pol1: in std_logic_vector(35 downto 0); 
    sync: in std_logic; 
    dout: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end eq_fft0_entity_a3cb66ad46;

architecture structural of eq_fft0_entity_a3cb66ad46 is
  signal ce_1_sg_x67: std_logic;
  signal clk_1_sg_x67: std_logic;
  signal concat_y_net_x1: std_logic_vector(35 downto 0);
  signal constant4_op_net: std_logic_vector(16 downto 0);
  signal constant5_op_net: std_logic;
  signal counter2_op_net: std_logic_vector(10 downto 0);
  signal delay11_q_net_x0: std_logic_vector(35 downto 0);
  signal delay4_q_net_x0: std_logic;
  signal dual_port_ram_douta_net_x0: std_logic_vector(16 downto 0);
  signal fft_real_biplex_1024chout_plo02_out_net_x3: std_logic_vector(35 downto 0);
  signal fft_real_biplex_1024chout_sync_out_net_x0: std_logic;
  signal mux12_y_net_x1: std_logic;
  signal reinterpret1_output_port_net: std_logic_vector(16 downto 0);
  signal slice4_y_net_x0: std_logic_vector(5 downto 0);
  signal slice_y_net_x0: std_logic_vector(5 downto 0);
  signal slice_y_net_x1: std_logic_vector(16 downto 0);

begin
  ce_1_sg_x67 <= ce_1;
  clk_1_sg_x67 <= clk_1;
  slice_y_net_x1 <= coeff;
  slice4_y_net_x0 <= coeff_addr;
  mux12_y_net_x1 <= coeff_we;
  fft_real_biplex_1024chout_plo02_out_net_x3 <= pol1;
  fft_real_biplex_1024chout_sync_out_net_x0 <= sync;
  dout <= concat_y_net_x1;
  sync_out <= delay4_q_net_x0;

  constant4: entity work.constant_a803a2dbbb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant4_op_net
    );

  constant5: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant5_op_net
    );

  counter2: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_ae406e50e98e0e45",
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x67,
      clk => clk_1_sg_x67,
      clr => '0',
      en => "1",
      rst(0) => fft_real_biplex_1024chout_sync_out_net_x0,
      op => counter2_op_net
    );

  delay11: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x67,
      clk => clk_1_sg_x67,
      d => fft_real_biplex_1024chout_plo02_out_net_x3,
      en => '1',
      q => delay11_q_net_x0
    );

  delay4: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x67,
      clk => clk_1_sg_x67,
      d(0) => fft_real_biplex_1024chout_sync_out_net_x0,
      en => '1',
      q(0) => delay4_q_net_x0
    );

  dual_port_ram: entity work.xldpram
    generic map (
      c_address_width_a => 6,
      c_address_width_b => 6,
      c_width_a => 17,
      c_width_b => 17,
      core_name0 => "bmg_33_0bdc6c125e0742ca",
      latency => 2
    )
    port map (
      a_ce => ce_1_sg_x67,
      a_clk => clk_1_sg_x67,
      addra => slice_y_net_x0,
      addrb => slice4_y_net_x0,
      b_ce => ce_1_sg_x67,
      b_clk => clk_1_sg_x67,
      dina => constant4_op_net,
      dinb => reinterpret1_output_port_net,
      ena => "1",
      enb => "1",
      rsta => "0",
      rstb => "0",
      wea(0) => constant5_op_net,
      web(0) => mux12_y_net_x1,
      douta => dual_port_ram_douta_net_x0
    );

  reinterpret1: entity work.reinterpret_d109c65ff6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_y_net_x1,
      output_port => reinterpret1_output_port_net
    );

  round1_d9ee8b94b2: entity work.round1_entity_d9ee8b94b2
    port map (
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      din => delay11_q_net_x0,
      scale => dual_port_ram_douta_net_x0,
      dout => concat_y_net_x1
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 5,
      new_msb => 10,
      x_width => 11,
      y_width => 6
    )
    port map (
      x => counter2_op_net,
      y => slice_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/eq_fft1"

entity eq_fft1_entity_2fb49e7f53 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeff: in std_logic_vector(16 downto 0); 
    coeff_addr: in std_logic_vector(5 downto 0); 
    coeff_we: in std_logic; 
    pol1: in std_logic_vector(35 downto 0); 
    sync: in std_logic; 
    dout: out std_logic_vector(35 downto 0)
  );
end eq_fft1_entity_2fb49e7f53;

architecture structural of eq_fft1_entity_2fb49e7f53 is
  signal ce_1_sg_x69: std_logic;
  signal clk_1_sg_x69: std_logic;
  signal concat_y_net_x1: std_logic_vector(35 downto 0);
  signal constant4_op_net: std_logic_vector(16 downto 0);
  signal constant5_op_net: std_logic;
  signal counter2_op_net: std_logic_vector(10 downto 0);
  signal delay11_q_net_x0: std_logic_vector(35 downto 0);
  signal dual_port_ram_douta_net_x0: std_logic_vector(16 downto 0);
  signal fft_real_biplex_1024chout_pol13_out_net_x0: std_logic_vector(35 downto 0);
  signal fft_real_biplex_1024chout_sync_out_net_x1: std_logic;
  signal mux22_y_net_x1: std_logic;
  signal reinterpret1_output_port_net: std_logic_vector(16 downto 0);
  signal slice4_y_net_x1: std_logic_vector(5 downto 0);
  signal slice_y_net: std_logic_vector(5 downto 0);
  signal slice_y_net_x2: std_logic_vector(16 downto 0);

begin
  ce_1_sg_x69 <= ce_1;
  clk_1_sg_x69 <= clk_1;
  slice_y_net_x2 <= coeff;
  slice4_y_net_x1 <= coeff_addr;
  mux22_y_net_x1 <= coeff_we;
  fft_real_biplex_1024chout_pol13_out_net_x0 <= pol1;
  fft_real_biplex_1024chout_sync_out_net_x1 <= sync;
  dout <= concat_y_net_x1;

  constant4: entity work.constant_a803a2dbbb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant4_op_net
    );

  constant5: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant5_op_net
    );

  counter2: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_ae406e50e98e0e45",
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x69,
      clk => clk_1_sg_x69,
      clr => '0',
      en => "1",
      rst(0) => fft_real_biplex_1024chout_sync_out_net_x1,
      op => counter2_op_net
    );

  delay11: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x69,
      clk => clk_1_sg_x69,
      d => fft_real_biplex_1024chout_pol13_out_net_x0,
      en => '1',
      q => delay11_q_net_x0
    );

  dual_port_ram: entity work.xldpram
    generic map (
      c_address_width_a => 6,
      c_address_width_b => 6,
      c_width_a => 17,
      c_width_b => 17,
      core_name0 => "bmg_33_0bdc6c125e0742ca",
      latency => 2
    )
    port map (
      a_ce => ce_1_sg_x69,
      a_clk => clk_1_sg_x69,
      addra => slice_y_net,
      addrb => slice4_y_net_x1,
      b_ce => ce_1_sg_x69,
      b_clk => clk_1_sg_x69,
      dina => constant4_op_net,
      dinb => reinterpret1_output_port_net,
      ena => "1",
      enb => "1",
      rsta => "0",
      rstb => "0",
      wea(0) => constant5_op_net,
      web(0) => mux22_y_net_x1,
      douta => dual_port_ram_douta_net_x0
    );

  reinterpret1: entity work.reinterpret_d109c65ff6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_y_net_x2,
      output_port => reinterpret1_output_port_net
    );

  round1_cc7b275de9: entity work.round1_entity_d9ee8b94b2
    port map (
      ce_1 => ce_1_sg_x69,
      clk_1 => clk_1_sg_x69,
      din => delay11_q_net_x0,
      scale => dual_port_ram_douta_net_x0,
      dout => concat_y_net_x1
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 5,
      new_msb => 10,
      x_width => 11,
      y_width => 6
    )
    port map (
      x => counter2_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/fft_pol02_imag"

entity fft_pol02_imag_entity_ad530b1eb1 is
  port (
    addr: in std_logic_vector(10 downto 0); 
    data_in: in std_logic_vector(17 downto 0); 
    we: in std_logic; 
    convert_addr_x0: out std_logic_vector(10 downto 0); 
    convert_din_x0: out std_logic_vector(31 downto 0); 
    convert_we_x0: out std_logic
  );
end fft_pol02_imag_entity_ad530b1eb1;

architecture structural of fft_pol02_imag_entity_ad530b1eb1 is
  signal convert_addr_dout_net_x0: std_logic_vector(10 downto 0);
  signal convert_din_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal enable_y_net_x0: std_logic_vector(10 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal logical1_y_net_x0: std_logic;

begin
  enable_y_net_x0 <= addr;
  force_im_output_port_net_x1 <= data_in;
  logical1_y_net_x0 <= we;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din_x0 <= convert_din_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 11,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 11,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => enable_y_net_x0,
      dout => convert_addr_dout_net_x0
    );

  convert_din: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => force_im_output_port_net_x1,
      dout => convert_din_dout_net_x0
    );

  convert_we: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => logical1_y_net_x0,
      dout(0) => convert_we_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/freeze_cntr"

entity freeze_cntr_entity_2f60b4c116 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    rst: in std_logic; 
    addr: out std_logic_vector(10 downto 0); 
    we: out std_logic
  );
end freeze_cntr_entity_2f60b4c116;

architecture structural of freeze_cntr_entity_2f60b4c116 is
  signal ce_1_sg_x74: std_logic;
  signal clk_1_sg_x74: std_logic;
  signal constant1_op_net_x0: std_logic;
  signal counter3_op_net: std_logic_vector(11 downto 0);
  signal enable1_y_net: std_logic;
  signal enable_y_net_x2: std_logic_vector(10 downto 0);
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical5_y_net: std_logic;
  signal mux3_y_net_x0: std_logic;

begin
  ce_1_sg_x74 <= ce_1;
  clk_1_sg_x74 <= clk_1;
  constant1_op_net_x0 <= en;
  mux3_y_net_x0 <= rst;
  addr <= enable_y_net_x2;
  we <= logical1_y_net_x2;

  counter3: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_29076546cca80226",
      op_arith => xlUnsigned,
      op_width => 12
    )
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      en(0) => logical5_y_net,
      rst(0) => mux3_y_net_x0,
      op => counter3_op_net
    );

  enable: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 10,
      x_width => 12,
      y_width => 11
    )
    port map (
      x => counter3_op_net,
      y => enable_y_net_x2
    );

  enable1: entity work.xlslice
    generic map (
      new_lsb => 11,
      new_msb => 11,
      x_width => 12,
      y_width => 1
    )
    port map (
      x => counter3_op_net,
      y(0) => enable1_y_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      ip(0) => mux3_y_net_x0,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      ip(0) => enable1_y_net,
      op(0) => inverter1_op_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => logical5_y_net,
      y(0) => logical1_y_net_x2
    );

  logical5: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => constant1_op_net_x0,
      d1(0) => inverter1_op_net,
      y(0) => logical5_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/input_mux/muxin0"

entity muxin0_entity_4d9ac5c75c is
  port (
    adc: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    delay: in std_logic_vector(3 downto 0); 
    n0: in std_logic_vector(7 downto 0); 
    n1: in std_logic_vector(7 downto 0); 
    sel: in std_logic_vector(1 downto 0); 
    out_x0: out std_logic_vector(7 downto 0)
  );
end muxin0_entity_4d9ac5c75c;

architecture structural of muxin0_entity_4d9ac5c75c is
  signal addressable_shift_register_q_net_x0: std_logic_vector(7 downto 0);
  signal bitbasher_delay0_net_x1: std_logic_vector(3 downto 0);
  signal bitbasher_insel0_net_x0: std_logic_vector(1 downto 0);
  signal ce_1_sg_x76: std_logic;
  signal clk_1_sg_x76: std_logic;
  signal constant_op_net: std_logic_vector(7 downto 0);
  signal mux1_y_net_x9: std_logic_vector(7 downto 0);
  signal mux_y_net: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x5: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x5: std_logic_vector(7 downto 0);

begin
  mux1_y_net_x9 <= adc;
  ce_1_sg_x76 <= ce_1;
  clk_1_sg_x76 <= clk_1;
  bitbasher_delay0_net_x1 <= delay;
  reinterpret_output_port_net_x5 <= n0;
  reinterpret1_output_port_net_x5 <= n1;
  bitbasher_insel0_net_x0 <= sel;
  out_x0 <= addressable_shift_register_q_net_x0;

  addressable_shift_register: entity work.xladdrsr
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 4,
      core_addr_width => 4,
      core_name0 => "asr_11_0_372caaa934b22d95",
      d_arith => xlSigned,
      d_bin_pt => 7,
      d_width => 8,
      q_arith => xlSigned,
      q_bin_pt => 7,
      q_width => 8
    )
    port map (
      addr => bitbasher_delay0_net_x1,
      ce => ce_1_sg_x76,
      clk => clk_1_sg_x76,
      clr => '0',
      d => mux_y_net,
      en => "1",
      q => addressable_shift_register_q_net_x0
    );

  constant_x0: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mux: entity work.mux_81f00cece7
    port map (
      ce => ce_1_sg_x76,
      clk => clk_1_sg_x76,
      clr => '0',
      d0 => mux1_y_net_x9,
      d1 => reinterpret_output_port_net_x5,
      d2 => reinterpret1_output_port_net_x5,
      d3 => constant_op_net,
      sel => bitbasher_insel0_net_x0,
      y => mux_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/input_mux"

entity input_mux_entity_19565016bf is
  port (
    adc0: in std_logic_vector(7 downto 0); 
    adc1: in std_logic_vector(7 downto 0); 
    adc2: in std_logic_vector(7 downto 0); 
    adc3: in std_logic_vector(7 downto 0); 
    adc4: in std_logic_vector(7 downto 0); 
    adc5: in std_logic_vector(7 downto 0); 
    adc6: in std_logic_vector(7 downto 0); 
    adc7: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    delay0: in std_logic_vector(3 downto 0); 
    delay1: in std_logic_vector(3 downto 0); 
    delay2: in std_logic_vector(3 downto 0); 
    delay3: in std_logic_vector(3 downto 0); 
    delay4: in std_logic_vector(3 downto 0); 
    delay5: in std_logic_vector(3 downto 0); 
    delay6: in std_logic_vector(3 downto 0); 
    delay7: in std_logic_vector(3 downto 0); 
    insel0: in std_logic_vector(1 downto 0); 
    insel1: in std_logic_vector(1 downto 0); 
    insel2: in std_logic_vector(1 downto 0); 
    insel3: in std_logic_vector(1 downto 0); 
    insel4: in std_logic_vector(1 downto 0); 
    insel5: in std_logic_vector(1 downto 0); 
    insel6: in std_logic_vector(1 downto 0); 
    insel7: in std_logic_vector(1 downto 0); 
    n00: in std_logic_vector(7 downto 0); 
    n01: in std_logic_vector(7 downto 0); 
    n10: in std_logic_vector(7 downto 0); 
    n11: in std_logic_vector(7 downto 0); 
    n20: in std_logic_vector(7 downto 0); 
    n21: in std_logic_vector(7 downto 0); 
    n30: in std_logic_vector(7 downto 0); 
    n31: in std_logic_vector(7 downto 0); 
    sync_gen: in std_logic; 
    in0: out std_logic_vector(7 downto 0); 
    in1: out std_logic_vector(7 downto 0); 
    in2: out std_logic_vector(7 downto 0); 
    in3: out std_logic_vector(7 downto 0); 
    in4: out std_logic_vector(7 downto 0); 
    in5: out std_logic_vector(7 downto 0); 
    in6: out std_logic_vector(7 downto 0); 
    in7: out std_logic_vector(7 downto 0); 
    pfb_sync: out std_logic
  );
end input_mux_entity_19565016bf;

architecture structural of input_mux_entity_19565016bf is
  signal addressable_shift_register_q_net_x10: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x11: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x12: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x13: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x14: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x15: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x8: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x9: std_logic_vector(7 downto 0);
  signal bitbasher1_delay4_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher1_delay5_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher1_delay6_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher1_delay7_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher1_insel4_net_x1: std_logic_vector(1 downto 0);
  signal bitbasher1_insel5_net_x1: std_logic_vector(1 downto 0);
  signal bitbasher1_insel6_net_x1: std_logic_vector(1 downto 0);
  signal bitbasher1_insel7_net_x1: std_logic_vector(1 downto 0);
  signal bitbasher_delay0_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher_delay1_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher_delay2_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher_delay3_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher_insel0_net_x1: std_logic_vector(1 downto 0);
  signal bitbasher_insel1_net_x1: std_logic_vector(1 downto 0);
  signal bitbasher_insel2_net_x1: std_logic_vector(1 downto 0);
  signal bitbasher_insel3_net_x1: std_logic_vector(1 downto 0);
  signal ce_1_sg_x84: std_logic;
  signal clk_1_sg_x84: std_logic;
  signal delay_q_net_x0: std_logic;
  signal mux1_y_net_x17: std_logic_vector(7 downto 0);
  signal mux1_y_net_x18: std_logic_vector(7 downto 0);
  signal mux1_y_net_x19: std_logic_vector(7 downto 0);
  signal mux1_y_net_x20: std_logic_vector(7 downto 0);
  signal mux1_y_net_x21: std_logic_vector(7 downto 0);
  signal mux1_y_net_x22: std_logic_vector(7 downto 0);
  signal mux1_y_net_x23: std_logic_vector(7 downto 0);
  signal mux1_y_net_x24: std_logic_vector(7 downto 0);
  signal mux_y_net_x1: std_logic;
  signal reinterpret1_output_port_net_x10: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x11: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x12: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x13: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x10: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x11: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x12: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x13: std_logic_vector(7 downto 0);

begin
  mux1_y_net_x17 <= adc0;
  mux1_y_net_x18 <= adc1;
  mux1_y_net_x19 <= adc2;
  mux1_y_net_x20 <= adc3;
  mux1_y_net_x21 <= adc4;
  mux1_y_net_x22 <= adc5;
  mux1_y_net_x23 <= adc6;
  mux1_y_net_x24 <= adc7;
  ce_1_sg_x84 <= ce_1;
  clk_1_sg_x84 <= clk_1;
  bitbasher_delay0_net_x2 <= delay0;
  bitbasher_delay1_net_x2 <= delay1;
  bitbasher_delay2_net_x2 <= delay2;
  bitbasher_delay3_net_x2 <= delay3;
  bitbasher1_delay4_net_x2 <= delay4;
  bitbasher1_delay5_net_x2 <= delay5;
  bitbasher1_delay6_net_x2 <= delay6;
  bitbasher1_delay7_net_x2 <= delay7;
  bitbasher_insel0_net_x1 <= insel0;
  bitbasher_insel1_net_x1 <= insel1;
  bitbasher_insel2_net_x1 <= insel2;
  bitbasher_insel3_net_x1 <= insel3;
  bitbasher1_insel4_net_x1 <= insel4;
  bitbasher1_insel5_net_x1 <= insel5;
  bitbasher1_insel6_net_x1 <= insel6;
  bitbasher1_insel7_net_x1 <= insel7;
  reinterpret_output_port_net_x10 <= n00;
  reinterpret1_output_port_net_x10 <= n01;
  reinterpret_output_port_net_x11 <= n10;
  reinterpret1_output_port_net_x11 <= n11;
  reinterpret_output_port_net_x12 <= n20;
  reinterpret1_output_port_net_x12 <= n21;
  reinterpret_output_port_net_x13 <= n30;
  reinterpret1_output_port_net_x13 <= n31;
  mux_y_net_x1 <= sync_gen;
  in0 <= addressable_shift_register_q_net_x8;
  in1 <= addressable_shift_register_q_net_x9;
  in2 <= addressable_shift_register_q_net_x10;
  in3 <= addressable_shift_register_q_net_x11;
  in4 <= addressable_shift_register_q_net_x12;
  in5 <= addressable_shift_register_q_net_x13;
  in6 <= addressable_shift_register_q_net_x14;
  in7 <= addressable_shift_register_q_net_x15;
  pfb_sync <= delay_q_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      d(0) => mux_y_net_x1,
      en => '1',
      q(0) => delay_q_net_x0
    );

  muxin0_4d9ac5c75c: entity work.muxin0_entity_4d9ac5c75c
    port map (
      adc => mux1_y_net_x17,
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      delay => bitbasher_delay0_net_x2,
      n0 => reinterpret_output_port_net_x10,
      n1 => reinterpret1_output_port_net_x10,
      sel => bitbasher_insel0_net_x1,
      out_x0 => addressable_shift_register_q_net_x8
    );

  muxin1_90ac8442c1: entity work.muxin0_entity_4d9ac5c75c
    port map (
      adc => mux1_y_net_x18,
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      delay => bitbasher_delay1_net_x2,
      n0 => reinterpret_output_port_net_x10,
      n1 => reinterpret1_output_port_net_x10,
      sel => bitbasher_insel1_net_x1,
      out_x0 => addressable_shift_register_q_net_x9
    );

  muxin2_a6fc9756e2: entity work.muxin0_entity_4d9ac5c75c
    port map (
      adc => mux1_y_net_x19,
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      delay => bitbasher_delay2_net_x2,
      n0 => reinterpret_output_port_net_x11,
      n1 => reinterpret1_output_port_net_x11,
      sel => bitbasher_insel2_net_x1,
      out_x0 => addressable_shift_register_q_net_x10
    );

  muxin3_9e8bed4bfe: entity work.muxin0_entity_4d9ac5c75c
    port map (
      adc => mux1_y_net_x20,
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      delay => bitbasher_delay3_net_x2,
      n0 => reinterpret_output_port_net_x11,
      n1 => reinterpret1_output_port_net_x11,
      sel => bitbasher_insel3_net_x1,
      out_x0 => addressable_shift_register_q_net_x11
    );

  muxin4_3c6d05fce6: entity work.muxin0_entity_4d9ac5c75c
    port map (
      adc => mux1_y_net_x21,
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      delay => bitbasher1_delay4_net_x2,
      n0 => reinterpret_output_port_net_x12,
      n1 => reinterpret1_output_port_net_x12,
      sel => bitbasher1_insel4_net_x1,
      out_x0 => addressable_shift_register_q_net_x12
    );

  muxin5_a31d888e6b: entity work.muxin0_entity_4d9ac5c75c
    port map (
      adc => mux1_y_net_x22,
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      delay => bitbasher1_delay5_net_x2,
      n0 => reinterpret_output_port_net_x12,
      n1 => reinterpret1_output_port_net_x12,
      sel => bitbasher1_insel5_net_x1,
      out_x0 => addressable_shift_register_q_net_x13
    );

  muxin6_e3e8bd4f29: entity work.muxin0_entity_4d9ac5c75c
    port map (
      adc => mux1_y_net_x23,
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      delay => bitbasher1_delay6_net_x2,
      n0 => reinterpret_output_port_net_x13,
      n1 => reinterpret1_output_port_net_x13,
      sel => bitbasher1_insel6_net_x1,
      out_x0 => addressable_shift_register_q_net_x14
    );

  muxin7_be6e0c9369: entity work.muxin0_entity_4d9ac5c75c
    port map (
      adc => mux1_y_net_x24,
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      delay => bitbasher1_delay7_net_x2,
      n0 => reinterpret_output_port_net_x13,
      n1 => reinterpret1_output_port_net_x13,
      sel => bitbasher1_insel7_net_x1,
      out_x0 => addressable_shift_register_q_net_x15
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/insel"

entity insel_entity_817c09d0fc is
  port (
    rpoco8_testbench_v11_insel_insel_data_user_data_out: in std_logic_vector(31 downto 0); 
    insel0: out std_logic_vector(1 downto 0); 
    insel1: out std_logic_vector(1 downto 0); 
    insel2: out std_logic_vector(1 downto 0); 
    insel3: out std_logic_vector(1 downto 0); 
    insel4: out std_logic_vector(1 downto 0); 
    insel5: out std_logic_vector(1 downto 0); 
    insel6: out std_logic_vector(1 downto 0); 
    insel7: out std_logic_vector(1 downto 0)
  );
end insel_entity_817c09d0fc;

architecture structural of insel_entity_817c09d0fc is
  signal bitbasher1_insel4_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher1_insel5_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher1_insel6_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher1_insel7_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher_insel0_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher_insel1_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher_insel2_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher_insel3_net_x2: std_logic_vector(1 downto 0);
  signal rpoco8_testbench_v11_insel_insel_data_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  rpoco8_testbench_v11_insel_insel_data_user_data_out_net_x0 <= rpoco8_testbench_v11_insel_insel_data_user_data_out;
  insel0 <= bitbasher_insel0_net_x2;
  insel1 <= bitbasher_insel1_net_x2;
  insel2 <= bitbasher_insel2_net_x2;
  insel3 <= bitbasher_insel3_net_x2;
  insel4 <= bitbasher1_insel4_net_x2;
  insel5 <= bitbasher1_insel5_net_x2;
  insel6 <= bitbasher1_insel6_net_x2;
  insel7 <= bitbasher1_insel7_net_x2;

  bitbasher: entity work.bitbasher_0b7a692256
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      insel => rpoco8_testbench_v11_insel_insel_data_user_data_out_net_x0,
      insel0 => bitbasher_insel0_net_x2,
      insel1 => bitbasher_insel1_net_x2,
      insel2 => bitbasher_insel2_net_x2,
      insel3 => bitbasher_insel3_net_x2
    );

  bitbasher1: entity work.bitbasher_980b18e5c5
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      insel => rpoco8_testbench_v11_insel_insel_data_user_data_out_net_x0,
      insel4 => bitbasher1_insel4_net_x2,
      insel5 => bitbasher1_insel5_net_x2,
      insel6 => bitbasher1_insel6_net_x2,
      insel7 => bitbasher1_insel7_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/led"

entity led_entity_e51bf9b3ac is
  port (
    gpio_out: in std_logic; 
    convert_x0: out std_logic
  );
end led_entity_e51bf9b3ac;

architecture structural of led_entity_e51bf9b3ac is
  signal convert_dout_net_x0: std_logic;
  signal relational5_op_net_x0: std_logic;

begin
  relational5_op_net_x0 <= gpio_out;
  convert_x0 <= convert_dout_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => relational5_op_net_x0,
      dout(0) => convert_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/not or not/delay_bram_prog_dp1"

entity delay_bram_prog_dp1_entity_19442d33d6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    delay: in std_logic_vector(31 downto 0); 
    din: in std_logic; 
    dout: out std_logic
  );
end delay_bram_prog_dp1_entity_19442d33d6;

architecture structural of delay_bram_prog_dp1_entity_19442d33d6 is
  signal addsub_s_net: std_logic_vector(5 downto 0);
  signal ce_1_sg_x85: std_logic;
  signal clk_1_sg_x85: std_logic;
  signal constant2_op_net: std_logic;
  signal constant4_op_net: std_logic;
  signal dual_port_ram_doutb_net_x0: std_logic;
  signal rpoco8_testbench_v11_not_or_not_delay1_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice10_y_net_x0: std_logic;
  signal wr_addr_op_net: std_logic_vector(5 downto 0);

begin
  ce_1_sg_x85 <= ce_1;
  clk_1_sg_x85 <= clk_1;
  rpoco8_testbench_v11_not_or_not_delay1_user_data_out_net_x0 <= delay;
  slice10_y_net_x0 <= din;
  dout <= dual_port_ram_doutb_net_x0;

  addsub: entity work.addsub_5a49cc39ae
    port map (
      a => wr_addr_op_net,
      b => rpoco8_testbench_v11_not_or_not_delay1_user_data_out_net_x0,
      ce => ce_1_sg_x85,
      clk => clk_1_sg_x85,
      clr => '0',
      s => addsub_s_net
    );

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  constant4: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant4_op_net
    );

  dual_port_ram: entity work.xldpram
    generic map (
      c_address_width_a => 6,
      c_address_width_b => 6,
      c_width_a => 1,
      c_width_b => 1,
      core_name0 => "bmg_33_5855b709c81b1172",
      latency => 4
    )
    port map (
      a_ce => ce_1_sg_x85,
      a_clk => clk_1_sg_x85,
      addra => wr_addr_op_net,
      addrb => addsub_s_net,
      b_ce => ce_1_sg_x85,
      b_clk => clk_1_sg_x85,
      dina(0) => slice10_y_net_x0,
      dinb(0) => slice10_y_net_x0,
      ena => "1",
      enb => "1",
      rsta => "0",
      rstb => "0",
      wea(0) => constant2_op_net,
      web(0) => constant4_op_net,
      doutb(0) => dual_port_ram_doutb_net_x0
    );

  wr_addr: entity work.counter_f58b46c4b5
    port map (
      ce => ce_1_sg_x85,
      clk => clk_1_sg_x85,
      clr => '0',
      op => wr_addr_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/not or not"

entity not_or_not_entity_8c5e725a77 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic; 
    in10: in std_logic_vector(7 downto 0); 
    in11: in std_logic_vector(7 downto 0); 
    in12: in std_logic_vector(7 downto 0); 
    in13: in std_logic_vector(7 downto 0); 
    in14: in std_logic_vector(7 downto 0); 
    in15: in std_logic_vector(7 downto 0); 
    in16: in std_logic_vector(7 downto 0); 
    in2: in std_logic; 
    in3: in std_logic; 
    in4: in std_logic; 
    in5: in std_logic; 
    in6: in std_logic; 
    in7: in std_logic; 
    in8: in std_logic; 
    in9: in std_logic_vector(7 downto 0); 
    rpoco8_testbench_v11_not_or_not_delay1_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_not_or_not_delay2_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_not_or_not_delay3_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_not_or_not_delay4_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_not_or_not_delay5_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_not_or_not_delay6_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_not_or_not_delay7_user_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_not_or_not_delay8_user_data_out: in std_logic_vector(31 downto 0); 
    out1: out std_logic_vector(7 downto 0); 
    out2: out std_logic_vector(7 downto 0); 
    out3: out std_logic_vector(7 downto 0); 
    out4: out std_logic_vector(7 downto 0); 
    out5: out std_logic_vector(7 downto 0); 
    out6: out std_logic_vector(7 downto 0); 
    out7: out std_logic_vector(7 downto 0); 
    out8: out std_logic_vector(7 downto 0)
  );
end not_or_not_entity_8c5e725a77;

architecture structural of not_or_not_entity_8c5e725a77 is
  signal addressable_shift_register_q_net_x16: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x17: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x18: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x19: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x20: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x21: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x22: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x23: std_logic_vector(7 downto 0);
  signal ce_1_sg_x93: std_logic;
  signal clk_1_sg_x93: std_logic;
  signal dual_port_ram_doutb_net_x0: std_logic;
  signal dual_port_ram_doutb_net_x1: std_logic;
  signal dual_port_ram_doutb_net_x2: std_logic;
  signal dual_port_ram_doutb_net_x3: std_logic;
  signal dual_port_ram_doutb_net_x4: std_logic;
  signal dual_port_ram_doutb_net_x5: std_logic;
  signal dual_port_ram_doutb_net_x6: std_logic;
  signal dual_port_ram_doutb_net_x7: std_logic;
  signal mux1_y_net_x0: std_logic_vector(7 downto 0);
  signal mux2_y_net_x0: std_logic_vector(7 downto 0);
  signal mux3_y_net_x0: std_logic_vector(7 downto 0);
  signal mux4_y_net_x0: std_logic_vector(7 downto 0);
  signal mux5_y_net_x0: std_logic_vector(7 downto 0);
  signal mux6_y_net_x0: std_logic_vector(7 downto 0);
  signal mux7_y_net_x0: std_logic_vector(7 downto 0);
  signal mux_y_net_x0: std_logic_vector(7 downto 0);
  signal negate1_op_net: std_logic_vector(7 downto 0);
  signal negate2_op_net: std_logic_vector(7 downto 0);
  signal negate3_op_net: std_logic_vector(7 downto 0);
  signal negate4_op_net: std_logic_vector(7 downto 0);
  signal negate5_op_net: std_logic_vector(7 downto 0);
  signal negate6_op_net: std_logic_vector(7 downto 0);
  signal negate7_op_net: std_logic_vector(7 downto 0);
  signal negate_op_net: std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay1_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay2_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay3_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay4_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay5_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay6_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay7_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay8_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal slice10_y_net_x1: std_logic;
  signal slice3_y_net_x1: std_logic;
  signal slice4_y_net_x1: std_logic;
  signal slice5_y_net_x1: std_logic;
  signal slice6_y_net_x1: std_logic;
  signal slice7_y_net_x1: std_logic;
  signal slice8_y_net_x1: std_logic;
  signal slice9_y_net_x1: std_logic;

begin
  ce_1_sg_x93 <= ce_1;
  clk_1_sg_x93 <= clk_1;
  slice10_y_net_x1 <= in1;
  addressable_shift_register_q_net_x17 <= in10;
  addressable_shift_register_q_net_x18 <= in11;
  addressable_shift_register_q_net_x19 <= in12;
  addressable_shift_register_q_net_x20 <= in13;
  addressable_shift_register_q_net_x21 <= in14;
  addressable_shift_register_q_net_x22 <= in15;
  addressable_shift_register_q_net_x23 <= in16;
  slice3_y_net_x1 <= in2;
  slice4_y_net_x1 <= in3;
  slice5_y_net_x1 <= in4;
  slice6_y_net_x1 <= in5;
  slice7_y_net_x1 <= in6;
  slice8_y_net_x1 <= in7;
  slice9_y_net_x1 <= in8;
  addressable_shift_register_q_net_x16 <= in9;
  rpoco8_testbench_v11_not_or_not_delay1_user_data_out_net_x1 <= rpoco8_testbench_v11_not_or_not_delay1_user_data_out;
  rpoco8_testbench_v11_not_or_not_delay2_user_data_out_net_x1 <= rpoco8_testbench_v11_not_or_not_delay2_user_data_out;
  rpoco8_testbench_v11_not_or_not_delay3_user_data_out_net_x1 <= rpoco8_testbench_v11_not_or_not_delay3_user_data_out;
  rpoco8_testbench_v11_not_or_not_delay4_user_data_out_net_x1 <= rpoco8_testbench_v11_not_or_not_delay4_user_data_out;
  rpoco8_testbench_v11_not_or_not_delay5_user_data_out_net_x1 <= rpoco8_testbench_v11_not_or_not_delay5_user_data_out;
  rpoco8_testbench_v11_not_or_not_delay6_user_data_out_net_x1 <= rpoco8_testbench_v11_not_or_not_delay6_user_data_out;
  rpoco8_testbench_v11_not_or_not_delay7_user_data_out_net_x1 <= rpoco8_testbench_v11_not_or_not_delay7_user_data_out;
  rpoco8_testbench_v11_not_or_not_delay8_user_data_out_net_x1 <= rpoco8_testbench_v11_not_or_not_delay8_user_data_out;
  out1 <= mux_y_net_x0;
  out2 <= mux5_y_net_x0;
  out3 <= mux1_y_net_x0;
  out4 <= mux6_y_net_x0;
  out5 <= mux2_y_net_x0;
  out6 <= mux3_y_net_x0;
  out7 <= mux4_y_net_x0;
  out8 <= mux7_y_net_x0;

  delay_bram_prog_dp1_19442d33d6: entity work.delay_bram_prog_dp1_entity_19442d33d6
    port map (
      ce_1 => ce_1_sg_x93,
      clk_1 => clk_1_sg_x93,
      delay => rpoco8_testbench_v11_not_or_not_delay1_user_data_out_net_x1,
      din => slice10_y_net_x1,
      dout => dual_port_ram_doutb_net_x0
    );

  delay_bram_prog_dp2_9393ecab03: entity work.delay_bram_prog_dp1_entity_19442d33d6
    port map (
      ce_1 => ce_1_sg_x93,
      clk_1 => clk_1_sg_x93,
      delay => rpoco8_testbench_v11_not_or_not_delay2_user_data_out_net_x1,
      din => slice3_y_net_x1,
      dout => dual_port_ram_doutb_net_x1
    );

  delay_bram_prog_dp3_8ee827bc45: entity work.delay_bram_prog_dp1_entity_19442d33d6
    port map (
      ce_1 => ce_1_sg_x93,
      clk_1 => clk_1_sg_x93,
      delay => rpoco8_testbench_v11_not_or_not_delay3_user_data_out_net_x1,
      din => slice4_y_net_x1,
      dout => dual_port_ram_doutb_net_x2
    );

  delay_bram_prog_dp4_d058a4e49d: entity work.delay_bram_prog_dp1_entity_19442d33d6
    port map (
      ce_1 => ce_1_sg_x93,
      clk_1 => clk_1_sg_x93,
      delay => rpoco8_testbench_v11_not_or_not_delay4_user_data_out_net_x1,
      din => slice5_y_net_x1,
      dout => dual_port_ram_doutb_net_x3
    );

  delay_bram_prog_dp5_28fcda6f2b: entity work.delay_bram_prog_dp1_entity_19442d33d6
    port map (
      ce_1 => ce_1_sg_x93,
      clk_1 => clk_1_sg_x93,
      delay => rpoco8_testbench_v11_not_or_not_delay5_user_data_out_net_x1,
      din => slice6_y_net_x1,
      dout => dual_port_ram_doutb_net_x4
    );

  delay_bram_prog_dp6_d84ca6839f: entity work.delay_bram_prog_dp1_entity_19442d33d6
    port map (
      ce_1 => ce_1_sg_x93,
      clk_1 => clk_1_sg_x93,
      delay => rpoco8_testbench_v11_not_or_not_delay6_user_data_out_net_x1,
      din => slice7_y_net_x1,
      dout => dual_port_ram_doutb_net_x5
    );

  delay_bram_prog_dp7_74dd199184: entity work.delay_bram_prog_dp1_entity_19442d33d6
    port map (
      ce_1 => ce_1_sg_x93,
      clk_1 => clk_1_sg_x93,
      delay => rpoco8_testbench_v11_not_or_not_delay7_user_data_out_net_x1,
      din => slice8_y_net_x1,
      dout => dual_port_ram_doutb_net_x6
    );

  delay_bram_prog_dp8_b3c4c81a92: entity work.delay_bram_prog_dp1_entity_19442d33d6
    port map (
      ce_1 => ce_1_sg_x93,
      clk_1 => clk_1_sg_x93,
      delay => rpoco8_testbench_v11_not_or_not_delay8_user_data_out_net_x1,
      din => slice9_y_net_x1,
      dout => dual_port_ram_doutb_net_x7
    );

  mux: entity work.mux_2af8d8c05a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => addressable_shift_register_q_net_x16,
      d1 => negate7_op_net,
      sel(0) => dual_port_ram_doutb_net_x0,
      y => mux_y_net_x0
    );

  mux1: entity work.mux_2af8d8c05a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => addressable_shift_register_q_net_x18,
      d1 => negate3_op_net,
      sel(0) => dual_port_ram_doutb_net_x2,
      y => mux1_y_net_x0
    );

  mux2: entity work.mux_2af8d8c05a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => addressable_shift_register_q_net_x20,
      d1 => negate5_op_net,
      sel(0) => dual_port_ram_doutb_net_x4,
      y => mux2_y_net_x0
    );

  mux3: entity work.mux_2af8d8c05a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => addressable_shift_register_q_net_x21,
      d1 => negate6_op_net,
      sel(0) => dual_port_ram_doutb_net_x5,
      y => mux3_y_net_x0
    );

  mux4: entity work.mux_2af8d8c05a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => addressable_shift_register_q_net_x22,
      d1 => negate1_op_net,
      sel(0) => dual_port_ram_doutb_net_x6,
      y => mux4_y_net_x0
    );

  mux5: entity work.mux_2af8d8c05a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => addressable_shift_register_q_net_x17,
      d1 => negate2_op_net,
      sel(0) => dual_port_ram_doutb_net_x1,
      y => mux5_y_net_x0
    );

  mux6: entity work.mux_2af8d8c05a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => addressable_shift_register_q_net_x19,
      d1 => negate4_op_net,
      sel(0) => dual_port_ram_doutb_net_x3,
      y => mux6_y_net_x0
    );

  mux7: entity work.mux_2af8d8c05a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => addressable_shift_register_q_net_x23,
      d1 => negate_op_net,
      sel(0) => dual_port_ram_doutb_net_x7,
      y => mux7_y_net_x0
    );

  negate: entity work.negate_c4f0d4a411
    port map (
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
      clr => '0',
      ip => addressable_shift_register_q_net_x23,
      op => negate_op_net
    );

  negate1: entity work.negate_c4f0d4a411
    port map (
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
      clr => '0',
      ip => addressable_shift_register_q_net_x22,
      op => negate1_op_net
    );

  negate2: entity work.negate_c4f0d4a411
    port map (
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
      clr => '0',
      ip => addressable_shift_register_q_net_x17,
      op => negate2_op_net
    );

  negate3: entity work.negate_c4f0d4a411
    port map (
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
      clr => '0',
      ip => addressable_shift_register_q_net_x18,
      op => negate3_op_net
    );

  negate4: entity work.negate_c4f0d4a411
    port map (
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
      clr => '0',
      ip => addressable_shift_register_q_net_x19,
      op => negate4_op_net
    );

  negate5: entity work.negate_c4f0d4a411
    port map (
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
      clr => '0',
      ip => addressable_shift_register_q_net_x20,
      op => negate5_op_net
    );

  negate6: entity work.negate_c4f0d4a411
    port map (
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
      clr => '0',
      ip => addressable_shift_register_q_net_x21,
      op => negate6_op_net
    );

  negate7: entity work.negate_c4f0d4a411
    port map (
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
      clr => '0',
      ip => addressable_shift_register_q_net_x16,
      op => negate7_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/pulse_ext"

entity pulse_ext_entity_96c76881de is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end pulse_ext_entity_96c76881de;

architecture structural of pulse_ext_entity_96c76881de is
  signal ce_1_sg_x95: std_logic;
  signal clk_1_sg_x95: std_logic;
  signal constant5_op_net: std_logic_vector(22 downto 0);
  signal counter3_op_net: std_logic_vector(22 downto 0);
  signal delay2_q_net_x1: std_logic;
  signal logical_y_net_x0: std_logic;
  signal relational5_op_net_x1: std_logic;

begin
  ce_1_sg_x95 <= ce_1;
  clk_1_sg_x95 <= clk_1;
  delay2_q_net_x1 <= in_x0;
  out_x0 <= relational5_op_net_x1;

  constant5: entity work.constant_c93990e9d7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant5_op_net
    );

  counter3: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_86f7251946088efb",
      op_arith => xlUnsigned,
      op_width => 23
    )
    port map (
      ce => ce_1_sg_x95,
      clk => clk_1_sg_x95,
      clr => '0',
      en(0) => relational5_op_net_x1,
      rst(0) => logical_y_net_x0,
      op => counter3_op_net
    );

  posedge_041302dede: entity work.posedge_entity_7ef8015cc7
    port map (
      ce_1 => ce_1_sg_x95,
      clk_1 => clk_1_sg_x95,
      in_x0 => delay2_q_net_x1,
      out_x0 => logical_y_net_x0
    );

  relational5: entity work.relational_b293ef57c5
    port map (
      a => counter3_op_net,
      b => constant5_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational5_op_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/reordering/reorder/sync_delay_en"

entity sync_delay_en_entity_a5116b47ef is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_en_entity_a5116b47ef;

architecture structural of sync_delay_en_entity_a5116b47ef is
  signal ce_1_sg_x96: std_logic;
  signal clk_1_sg_x96: std_logic;
  signal constant1_op_net: std_logic_vector(11 downto 0);
  signal constant2_op_net: std_logic_vector(11 downto 0);
  signal constant3_op_net_x0: std_logic;
  signal constant3_op_net_x1: std_logic;
  signal constant_op_net: std_logic_vector(11 downto 0);
  signal counter_op_net: std_logic_vector(11 downto 0);
  signal logical1_y_net: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x0: std_logic;
  signal pre_sync_delay_q_net_x0: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x96 <= ce_1;
  clk_1_sg_x96 <= clk_1;
  constant3_op_net_x1 <= en;
  pre_sync_delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x0;

  constant1: entity work.constant_fd28b32bf8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_e054d850c5
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net_x0
    );

  constant_x0: entity work.constant_7c91b1b314
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_14a789a49ff66b1b",
      op_arith => xlUnsigned,
      op_width => 12
    )
    port map (
      ce => ce_1_sg_x96,
      clk => clk_1_sg_x96,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical1_y_net,
      load(0) => pre_sync_delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => pre_sync_delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net,
      d1(0) => constant3_op_net_x1,
      y(0) => logical1_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => pre_sync_delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net_x0,
      y(0) => mux_y_net_x0
    );

  relational: entity work.relational_d36fe12c1c
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_acb3c05dd0
    port map (
      a => counter_op_net,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/reordering/reorder"

entity reorder_entity_f8fbd5db9c is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din0: in std_logic_vector(143 downto 0); 
    en: in std_logic; 
    sync: in std_logic; 
    dout0: out std_logic_vector(143 downto 0); 
    sync_out: out std_logic
  );
end reorder_entity_f8fbd5db9c;

architecture structural of reorder_entity_f8fbd5db9c is
  signal bram0_data_out_net_x0: std_logic_vector(143 downto 0);
  signal ce_1_sg_x97: std_logic;
  signal clk_1_sg_x97: std_logic;
  signal concat_y_net_x0: std_logic_vector(143 downto 0);
  signal constant3_op_net_x2: std_logic;
  signal counter_op_net: std_logic_vector(14 downto 0);
  signal delay4_q_net_x1: std_logic;
  signal delay_d0_q_net: std_logic_vector(10 downto 0);
  signal delay_din0_q_net: std_logic_vector(143 downto 0);
  signal delay_map10_q_net: std_logic_vector(10 downto 0);
  signal delay_map1_q_net: std_logic_vector(10 downto 0);
  signal delay_map2_q_net: std_logic_vector(10 downto 0);
  signal delay_map3_q_net: std_logic_vector(10 downto 0);
  signal delay_map4_q_net: std_logic_vector(10 downto 0);
  signal delay_map5_q_net: std_logic_vector(10 downto 0);
  signal delay_map6_q_net: std_logic_vector(10 downto 0);
  signal delay_map7_q_net: std_logic_vector(10 downto 0);
  signal delay_map8_q_net: std_logic_vector(10 downto 0);
  signal delay_map9_q_net: std_logic_vector(10 downto 0);
  signal delay_sel_q_net: std_logic_vector(3 downto 0);
  signal delay_we_q_net: std_logic;
  signal map10_data_net: std_logic_vector(10 downto 0);
  signal map1_data_net: std_logic_vector(10 downto 0);
  signal map2_data_net: std_logic_vector(10 downto 0);
  signal map3_data_net: std_logic_vector(10 downto 0);
  signal map4_data_net: std_logic_vector(10 downto 0);
  signal map5_data_net: std_logic_vector(10 downto 0);
  signal map6_data_net: std_logic_vector(10 downto 0);
  signal map7_data_net: std_logic_vector(10 downto 0);
  signal map8_data_net: std_logic_vector(10 downto 0);
  signal map9_data_net: std_logic_vector(10 downto 0);
  signal mux_y_net: std_logic_vector(10 downto 0);
  signal mux_y_net_x0: std_logic;
  signal post_sync_delay_q_net_x0: std_logic;
  signal pre_sync_delay_q_net_x0: std_logic;
  signal slice1_y_net: std_logic_vector(3 downto 0);
  signal slice2_y_net: std_logic_vector(10 downto 0);

begin
  ce_1_sg_x97 <= ce_1;
  clk_1_sg_x97 <= clk_1;
  concat_y_net_x0 <= din0;
  constant3_op_net_x2 <= en;
  delay4_q_net_x1 <= sync;
  dout0 <= bram0_data_out_net_x0;
  sync_out <= post_sync_delay_q_net_x0;

  bram0: entity work.xlspram
    generic map (
      c_address_width => 11,
      c_width => 144,
      core_name0 => "bmg_33_ea3aeec639126d38",
      latency => 1
    )
    port map (
      addr => mux_y_net,
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      data_in => delay_din0_q_net,
      en => "1",
      rst => "0",
      we(0) => delay_we_q_net,
      data_out => bram0_data_out_net_x0
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 22527,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_4bb0cbb813922871",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 15
    )
    port map (
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      clr => '0',
      en(0) => constant3_op_net_x2,
      rst(0) => delay4_q_net_x1,
      op => counter_op_net
    );

  delay_d0: entity work.delay_895cbeca91
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => slice2_y_net,
      q => delay_d0_q_net
    );

  delay_din0: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 144
    )
    port map (
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      d => concat_y_net_x0,
      en => '1',
      q => delay_din0_q_net
    );

  delay_map1: entity work.delay_895cbeca91
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => map1_data_net,
      q => delay_map1_q_net
    );

  delay_map10: entity work.delay_895cbeca91
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => map10_data_net,
      q => delay_map10_q_net
    );

  delay_map2: entity work.delay_895cbeca91
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => map2_data_net,
      q => delay_map2_q_net
    );

  delay_map3: entity work.delay_895cbeca91
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => map3_data_net,
      q => delay_map3_q_net
    );

  delay_map4: entity work.delay_895cbeca91
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => map4_data_net,
      q => delay_map4_q_net
    );

  delay_map5: entity work.delay_895cbeca91
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => map5_data_net,
      q => delay_map5_q_net
    );

  delay_map6: entity work.delay_895cbeca91
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => map6_data_net,
      q => delay_map6_q_net
    );

  delay_map7: entity work.delay_895cbeca91
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => map7_data_net,
      q => delay_map7_q_net
    );

  delay_map8: entity work.delay_895cbeca91
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => map8_data_net,
      q => delay_map8_q_net
    );

  delay_map9: entity work.delay_895cbeca91
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => map9_data_net,
      q => delay_map9_q_net
    );

  delay_sel: entity work.delay_76b1f8d588
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => slice1_y_net,
      q => delay_sel_q_net
    );

  delay_we: entity work.delay_0341f7be44
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d(0) => constant3_op_net_x2,
      q(0) => delay_we_q_net
    );

  map1: entity work.xlsprom_dist
    generic map (
      addr_width => 11,
      c_address_width => 11,
      c_width => 11,
      core_name0 => "dmg_43_02dd3a157d80ae94",
      latency => 0
    )
    port map (
      addr => slice2_y_net,
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      en => "1",
      data => map1_data_net
    );

  map10: entity work.xlsprom_dist
    generic map (
      addr_width => 11,
      c_address_width => 11,
      c_width => 11,
      core_name0 => "dmg_43_02dd3a157d80ae94",
      latency => 0
    )
    port map (
      addr => map9_data_net,
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      en => "1",
      data => map10_data_net
    );

  map2: entity work.xlsprom_dist
    generic map (
      addr_width => 11,
      c_address_width => 11,
      c_width => 11,
      core_name0 => "dmg_43_02dd3a157d80ae94",
      latency => 0
    )
    port map (
      addr => map1_data_net,
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      en => "1",
      data => map2_data_net
    );

  map3: entity work.xlsprom_dist
    generic map (
      addr_width => 11,
      c_address_width => 11,
      c_width => 11,
      core_name0 => "dmg_43_02dd3a157d80ae94",
      latency => 0
    )
    port map (
      addr => map2_data_net,
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      en => "1",
      data => map3_data_net
    );

  map4: entity work.xlsprom_dist
    generic map (
      addr_width => 11,
      c_address_width => 11,
      c_width => 11,
      core_name0 => "dmg_43_02dd3a157d80ae94",
      latency => 0
    )
    port map (
      addr => map3_data_net,
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      en => "1",
      data => map4_data_net
    );

  map5: entity work.xlsprom_dist
    generic map (
      addr_width => 11,
      c_address_width => 11,
      c_width => 11,
      core_name0 => "dmg_43_02dd3a157d80ae94",
      latency => 0
    )
    port map (
      addr => map4_data_net,
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      en => "1",
      data => map5_data_net
    );

  map6: entity work.xlsprom_dist
    generic map (
      addr_width => 11,
      c_address_width => 11,
      c_width => 11,
      core_name0 => "dmg_43_02dd3a157d80ae94",
      latency => 0
    )
    port map (
      addr => map5_data_net,
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      en => "1",
      data => map6_data_net
    );

  map7: entity work.xlsprom_dist
    generic map (
      addr_width => 11,
      c_address_width => 11,
      c_width => 11,
      core_name0 => "dmg_43_02dd3a157d80ae94",
      latency => 0
    )
    port map (
      addr => map6_data_net,
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      en => "1",
      data => map7_data_net
    );

  map8: entity work.xlsprom_dist
    generic map (
      addr_width => 11,
      c_address_width => 11,
      c_width => 11,
      core_name0 => "dmg_43_02dd3a157d80ae94",
      latency => 0
    )
    port map (
      addr => map7_data_net,
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      en => "1",
      data => map8_data_net
    );

  map9: entity work.xlsprom_dist
    generic map (
      addr_width => 11,
      c_address_width => 11,
      c_width => 11,
      core_name0 => "dmg_43_02dd3a157d80ae94",
      latency => 0
    )
    port map (
      addr => map8_data_net,
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      en => "1",
      data => map9_data_net
    );

  mux: entity work.mux_9447359c10
    port map (
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      clr => '0',
      d0 => delay_d0_q_net,
      d1 => delay_map1_q_net,
      d10 => delay_map10_q_net,
      d2 => delay_map2_q_net,
      d3 => delay_map3_q_net,
      d4 => delay_map4_q_net,
      d5 => delay_map5_q_net,
      d6 => delay_map6_q_net,
      d7 => delay_map7_q_net,
      d8 => delay_map8_q_net,
      d9 => delay_map9_q_net,
      sel => delay_sel_q_net,
      y => mux_y_net
    );

  post_sync_delay: entity work.xldelay
    generic map (
      latency => 3,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      d(0) => mux_y_net_x0,
      en => '1',
      q(0) => post_sync_delay_q_net_x0
    );

  pre_sync_delay: entity work.delay_0341f7be44
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d(0) => delay4_q_net_x1,
      q(0) => pre_sync_delay_q_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 11,
      new_msb => 14,
      x_width => 15,
      y_width => 4
    )
    port map (
      x => counter_op_net,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 10,
      x_width => 15,
      y_width => 11
    )
    port map (
      x => counter_op_net,
      y => slice2_y_net
    );

  sync_delay_en_a5116b47ef: entity work.sync_delay_en_entity_a5116b47ef
    port map (
      ce_1 => ce_1_sg_x97,
      clk_1 => clk_1_sg_x97,
      en => constant3_op_net_x2,
      in_x0 => pre_sync_delay_q_net_x0,
      out_x0 => mux_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/reordering"

entity reordering_entity_6e66868728 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    eq0: in std_logic_vector(35 downto 0); 
    eq1: in std_logic_vector(35 downto 0); 
    eq2: in std_logic_vector(35 downto 0); 
    eq3: in std_logic_vector(35 downto 0); 
    sync: in std_logic; 
    c0: out std_logic_vector(35 downto 0); 
    c1: out std_logic_vector(35 downto 0); 
    c2: out std_logic_vector(35 downto 0); 
    c3: out std_logic_vector(35 downto 0); 
    c4: out std_logic_vector(35 downto 0); 
    c5: out std_logic_vector(35 downto 0); 
    c6: out std_logic_vector(35 downto 0); 
    c7: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end reordering_entity_6e66868728;

architecture structural of reordering_entity_6e66868728 is
  signal bram0_data_out_net_x0: std_logic_vector(143 downto 0);
  signal ce_1_sg_x98: std_logic;
  signal clk_1_sg_x98: std_logic;
  signal concat1_y_net: std_logic_vector(143 downto 0);
  signal concat_y_net_x0: std_logic_vector(143 downto 0);
  signal concat_y_net_x5: std_logic_vector(35 downto 0);
  signal concat_y_net_x6: std_logic_vector(35 downto 0);
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal concat_y_net_x8: std_logic_vector(35 downto 0);
  signal constant3_op_net_x2: std_logic;
  signal counter2_op_net: std_logic;
  signal delay1_q_net: std_logic_vector(143 downto 0);
  signal delay2_q_net: std_logic_vector(143 downto 0);
  signal delay4_q_net_x0: std_logic;
  signal delay4_q_net_x2: std_logic;
  signal delay5_q_net: std_logic_vector(143 downto 0);
  signal mux_y_net: std_logic_vector(143 downto 0);
  signal post_sync_delay_q_net_x0: std_logic;
  signal slice21_y_net_x0: std_logic_vector(35 downto 0);
  signal slice25_y_net_x0: std_logic_vector(35 downto 0);
  signal slice26_y_net_x0: std_logic_vector(35 downto 0);
  signal slice27_y_net_x0: std_logic_vector(35 downto 0);
  signal slice28_y_net_x0: std_logic_vector(35 downto 0);
  signal slice29_y_net_x0: std_logic_vector(35 downto 0);
  signal slice6_y_net: std_logic_vector(71 downto 0);
  signal slice7_y_net: std_logic_vector(71 downto 0);
  signal slice8_y_net_x0: std_logic_vector(35 downto 0);
  signal slice9_y_net_x0: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x98 <= ce_1;
  clk_1_sg_x98 <= clk_1;
  concat_y_net_x5 <= eq0;
  concat_y_net_x6 <= eq1;
  concat_y_net_x7 <= eq2;
  concat_y_net_x8 <= eq3;
  delay4_q_net_x2 <= sync;
  c0 <= slice8_y_net_x0;
  c1 <= slice9_y_net_x0;
  c2 <= slice21_y_net_x0;
  c3 <= slice25_y_net_x0;
  c4 <= slice28_y_net_x0;
  c5 <= slice29_y_net_x0;
  c6 <= slice26_y_net_x0;
  c7 <= slice27_y_net_x0;
  sync_out <= delay4_q_net_x0;

  concat: entity work.concat_bbc53d9757
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => concat_y_net_x5,
      in1 => concat_y_net_x6,
      in2 => concat_y_net_x7,
      in3 => concat_y_net_x8,
      y => concat_y_net_x0
    );

  concat1: entity work.concat_364e99894a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => slice7_y_net,
      in1 => slice6_y_net,
      y => concat1_y_net
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net_x2
    );

  counter2: entity work.counter_9b03e3d644
    port map (
      ce => ce_1_sg_x98,
      clk => clk_1_sg_x98,
      clr => '0',
      rst(0) => post_sync_delay_q_net_x0,
      op(0) => counter2_op_net
    );

  delay1: entity work.delay_479574aa10
    port map (
      ce => ce_1_sg_x98,
      clk => clk_1_sg_x98,
      clr => '0',
      d => bram0_data_out_net_x0,
      q => delay1_q_net
    );

  delay2: entity work.delay_dc6e12a537
    port map (
      ce => ce_1_sg_x98,
      clk => clk_1_sg_x98,
      clr => '0',
      d => mux_y_net,
      q => delay2_q_net
    );

  delay4: entity work.delay_c53de546ea
    port map (
      ce => ce_1_sg_x98,
      clk => clk_1_sg_x98,
      clr => '0',
      d(0) => post_sync_delay_q_net_x0,
      q(0) => delay4_q_net_x0
    );

  delay5: entity work.delay_479574aa10
    port map (
      ce => ce_1_sg_x98,
      clk => clk_1_sg_x98,
      clr => '0',
      d => delay1_q_net,
      q => delay5_q_net
    );

  mux: entity work.mux_340b095e64
    port map (
      ce => ce_1_sg_x98,
      clk => clk_1_sg_x98,
      clr => '0',
      d0 => concat1_y_net,
      d1 => bram0_data_out_net_x0,
      sel(0) => counter2_op_net,
      y => mux_y_net
    );

  reorder_f8fbd5db9c: entity work.reorder_entity_f8fbd5db9c
    port map (
      ce_1 => ce_1_sg_x98,
      clk_1 => clk_1_sg_x98,
      din0 => concat_y_net_x0,
      en => constant3_op_net_x2,
      sync => delay4_q_net_x2,
      dout0 => bram0_data_out_net_x0,
      sync_out => post_sync_delay_q_net_x0
    );

  slice21: entity work.xlslice
    generic map (
      new_lsb => 36,
      new_msb => 71,
      x_width => 144,
      y_width => 36
    )
    port map (
      x => delay5_q_net,
      y => slice21_y_net_x0
    );

  slice25: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 35,
      x_width => 144,
      y_width => 36
    )
    port map (
      x => delay5_q_net,
      y => slice25_y_net_x0
    );

  slice26: entity work.xlslice
    generic map (
      new_lsb => 36,
      new_msb => 71,
      x_width => 144,
      y_width => 36
    )
    port map (
      x => delay2_q_net,
      y => slice26_y_net_x0
    );

  slice27: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 35,
      x_width => 144,
      y_width => 36
    )
    port map (
      x => delay2_q_net,
      y => slice27_y_net_x0
    );

  slice28: entity work.xlslice
    generic map (
      new_lsb => 108,
      new_msb => 143,
      x_width => 144,
      y_width => 36
    )
    port map (
      x => delay2_q_net,
      y => slice28_y_net_x0
    );

  slice29: entity work.xlslice
    generic map (
      new_lsb => 72,
      new_msb => 107,
      x_width => 144,
      y_width => 36
    )
    port map (
      x => delay2_q_net,
      y => slice29_y_net_x0
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 72,
      new_msb => 143,
      x_width => 144,
      y_width => 72
    )
    port map (
      x => delay1_q_net,
      y => slice6_y_net
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 71,
      x_width => 144,
      y_width => 72
    )
    port map (
      x => delay1_q_net,
      y => slice7_y_net
    );

  slice8: entity work.xlslice
    generic map (
      new_lsb => 108,
      new_msb => 143,
      x_width => 144,
      y_width => 36
    )
    port map (
      x => delay5_q_net,
      y => slice8_y_net_x0
    );

  slice9: entity work.xlslice
    generic map (
      new_lsb => 72,
      new_msb => 107,
      x_width => 144,
      y_width => 36
    )
    port map (
      x => delay5_q_net,
      y => slice9_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/ri_to_c"

entity ri_to_c_entity_2ec260a7f5 is
  port (
    im: in std_logic_vector(7 downto 0); 
    re: in std_logic_vector(7 downto 0); 
    c: out std_logic_vector(15 downto 0)
  );
end ri_to_c_entity_2ec260a7f5;

architecture structural of ri_to_c_entity_2ec260a7f5 is
  signal concat_y_net_x0: std_logic_vector(15 downto 0);
  signal force_im_output_port_net: std_logic_vector(7 downto 0);
  signal force_re_output_port_net: std_logic_vector(7 downto 0);
  signal mux5_y_net_x1: std_logic_vector(7 downto 0);
  signal mux_y_net_x1: std_logic_vector(7 downto 0);

begin
  mux5_y_net_x1 <= im;
  mux_y_net_x1 <= re;
  c <= concat_y_net_x0;

  concat: entity work.concat_8e53793314
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => force_re_output_port_net,
      in1 => force_im_output_port_net,
      y => concat_y_net_x0
    );

  force_im: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux5_y_net_x1,
      output_port => force_im_output_port_net
    );

  force_re: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux_y_net_x1,
      output_port => force_re_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/seed/armed_trigger/edge_detect"

entity edge_detect_entity_6821065629 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end edge_detect_entity_6821065629;

architecture structural of edge_detect_entity_6821065629 is
  signal ce_1_sg_x99: std_logic;
  signal clk_1_sg_x99: std_logic;
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal inverter_op_net: std_logic;
  signal slice22_y_net_x0: std_logic;

begin
  ce_1_sg_x99 <= ce_1;
  clk_1_sg_x99 <= clk_1;
  slice22_y_net_x0 <= in_x0;
  out_x0 <= edge_op_y_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x99,
      clk => clk_1_sg_x99,
      d(0) => slice22_y_net_x0,
      en => '1',
      q(0) => delay_q_net
    );

  edge_op: entity work.logical_dfe2dded7f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => delay_q_net,
      y(0) => edge_op_y_net_x0
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x99,
      clk => clk_1_sg_x99,
      clr => '0',
      ip(0) => slice22_y_net_x0,
      op(0) => inverter_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/seed/armed_trigger"

entity armed_trigger_entity_1fb1ab39b9 is
  port (
    arm: in std_logic; 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    trig_in: in std_logic; 
    trig_out: out std_logic
  );
end armed_trigger_entity_1fb1ab39b9;

architecture structural of armed_trigger_entity_1fb1ab39b9 is
  signal armed_q_net: std_logic;
  signal ce_1_sg_x100: std_logic;
  signal clk_1_sg_x100: std_logic;
  signal constant2_op_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal logical_y_net_x21: std_logic;
  signal mux_y_net_x2: std_logic;
  signal slice22_y_net_x1: std_logic;

begin
  slice22_y_net_x1 <= arm;
  ce_1_sg_x100 <= ce_1;
  clk_1_sg_x100 <= clk_1;
  mux_y_net_x2 <= trig_in;
  trig_out <= logical_y_net_x21;

  armed: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"1"
    )
    port map (
      ce => ce_1_sg_x100,
      clk => clk_1_sg_x100,
      d(0) => constant2_op_net,
      en(0) => logical_y_net_x21,
      rst(0) => edge_op_y_net_x0,
      q(0) => armed_q_net
    );

  constant2: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  edge_detect_6821065629: entity work.edge_detect_entity_6821065629
    port map (
      ce_1 => ce_1_sg_x100,
      clk_1 => clk_1_sg_x100,
      in_x0 => slice22_y_net_x1,
      out_x0 => edge_op_y_net_x0
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => armed_q_net,
      d1(0) => mux_y_net_x2,
      y(0) => logical_y_net_x21
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/seed"

entity seed_entity_e693ee19e1 is
  port (
    arm_rst: in std_logic; 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rpoco8_testbench_v11_seed_seed_data_user_data_out: in std_logic_vector(31 downto 0); 
    sync_gen: in std_logic; 
    seed0: out std_logic_vector(31 downto 0); 
    seed1: out std_logic_vector(31 downto 0); 
    seed2: out std_logic_vector(31 downto 0); 
    seed3: out std_logic_vector(31 downto 0); 
    seed_ld: out std_logic
  );
end seed_entity_e693ee19e1;

architecture structural of seed_entity_e693ee19e1 is
  signal bitbasher_seed0_net_x5: std_logic_vector(31 downto 0);
  signal bitbasher_seed1_net_x5: std_logic_vector(31 downto 0);
  signal bitbasher_seed2_net_x5: std_logic_vector(31 downto 0);
  signal bitbasher_seed3_net_x5: std_logic_vector(31 downto 0);
  signal ce_1_sg_x101: std_logic;
  signal clk_1_sg_x101: std_logic;
  signal logical_y_net_x22: std_logic;
  signal mux_y_net_x3: std_logic;
  signal rpoco8_testbench_v11_seed_seed_data_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice22_y_net_x2: std_logic;

begin
  slice22_y_net_x2 <= arm_rst;
  ce_1_sg_x101 <= ce_1;
  clk_1_sg_x101 <= clk_1;
  rpoco8_testbench_v11_seed_seed_data_user_data_out_net_x0 <= rpoco8_testbench_v11_seed_seed_data_user_data_out;
  mux_y_net_x3 <= sync_gen;
  seed0 <= bitbasher_seed0_net_x5;
  seed1 <= bitbasher_seed1_net_x5;
  seed2 <= bitbasher_seed2_net_x5;
  seed3 <= bitbasher_seed3_net_x5;
  seed_ld <= logical_y_net_x22;

  armed_trigger_1fb1ab39b9: entity work.armed_trigger_entity_1fb1ab39b9
    port map (
      arm => slice22_y_net_x2,
      ce_1 => ce_1_sg_x101,
      clk_1 => clk_1_sg_x101,
      trig_in => mux_y_net_x3,
      trig_out => logical_y_net_x22
    );

  bitbasher: entity work.bitbasher_5b1e76c782
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      seed => rpoco8_testbench_v11_seed_seed_data_user_data_out_net_x0,
      seed0 => bitbasher_seed0_net_x5,
      seed1 => bitbasher_seed1_net_x5,
      seed2 => bitbasher_seed2_net_x5,
      seed3 => bitbasher_seed3_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/walsh/_codes"

entity codes_entity_9fb2d05802 is
  port (
    addr: in std_logic_vector(10 downto 0); 
    data_in: in std_logic; 
    we: in std_logic; 
    convert_addr_x0: out std_logic_vector(10 downto 0); 
    convert_din_x0: out std_logic_vector(31 downto 0); 
    convert_we_x0: out std_logic
  );
end codes_entity_9fb2d05802;

architecture structural of codes_entity_9fb2d05802 is
  signal constant1_op_net_x0: std_logic;
  signal constant_op_net_x0: std_logic;
  signal convert_addr_dout_net_x0: std_logic_vector(10 downto 0);
  signal convert_din_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal slice1_y_net_x0: std_logic_vector(10 downto 0);

begin
  slice1_y_net_x0 <= addr;
  constant_op_net_x0 <= data_in;
  constant1_op_net_x0 <= we;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din_x0 <= convert_din_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 11,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 11,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => slice1_y_net_x0,
      dout => convert_addr_dout_net_x0
    );

  convert_din: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => constant_op_net_x0,
      dout => convert_din_dout_net_x0
    );

  convert_we: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => constant1_op_net_x0,
      dout(0) => convert_we_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/walsh/walsh1"

entity walsh1_entity_32c05d9875 is
  port (
    gpio_out: in std_logic; 
    convert_x0: out std_logic
  );
end walsh1_entity_32c05d9875;

architecture structural of walsh1_entity_32c05d9875 is
  signal convert_dout_net_x0: std_logic;
  signal slice10_y_net_x2: std_logic;

begin
  slice10_y_net_x2 <= gpio_out;
  convert_x0 <= convert_dout_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => slice10_y_net_x2,
      dout(0) => convert_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/walsh"

entity walsh_entity_6332507c5f is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rpoco8_testbench_v11_walsh_codes_data_out: in std_logic_vector(31 downto 0); 
    rpoco8_testbench_v11_walsh_trig_sel_user_data_out: in std_logic_vector(31 downto 0); 
    codes: out std_logic_vector(10 downto 0); 
    codes_x0: out std_logic_vector(31 downto 0); 
    codes_x1: out std_logic; 
    out1: out std_logic; 
    out2: out std_logic; 
    out3: out std_logic; 
    out4: out std_logic; 
    out5: out std_logic; 
    out6: out std_logic; 
    out7: out std_logic; 
    out8: out std_logic; 
    out9: out std_logic; 
    walsh1: out std_logic; 
    walsh2: out std_logic; 
    walsh3: out std_logic; 
    walsh4: out std_logic; 
    walsh5: out std_logic; 
    walsh6: out std_logic; 
    walsh7: out std_logic; 
    walsh8: out std_logic
  );
end walsh_entity_6332507c5f;

architecture structural of walsh_entity_6332507c5f is
  signal ce_1_sg_x102: std_logic;
  signal clk_1_sg_x102: std_logic;
  signal constant1_op_net_x0: std_logic;
  signal constant_op_net_x0: std_logic;
  signal convert_addr_dout_net_x1: std_logic_vector(10 downto 0);
  signal convert_din_dout_net_x1: std_logic_vector(31 downto 0);
  signal convert_dout_net_x10: std_logic;
  signal convert_dout_net_x11: std_logic;
  signal convert_dout_net_x12: std_logic;
  signal convert_dout_net_x13: std_logic;
  signal convert_dout_net_x14: std_logic;
  signal convert_dout_net_x15: std_logic;
  signal convert_dout_net_x8: std_logic;
  signal convert_dout_net_x9: std_logic;
  signal convert_we_dout_net_x1: std_logic;
  signal counter_op_net: std_logic_vector(27 downto 0);
  signal delay1_q_net: std_logic_vector(31 downto 0);
  signal delay2_q_net: std_logic_vector(31 downto 0);
  signal delay3_q_net: std_logic_vector(31 downto 0);
  signal delay4_q_net: std_logic_vector(31 downto 0);
  signal delay5_q_net: std_logic_vector(31 downto 0);
  signal delay6_q_net: std_logic_vector(31 downto 0);
  signal delay7_q_net: std_logic_vector(31 downto 0);
  signal delay8_q_net: std_logic_vector(31 downto 0);
  signal delay_q_net: std_logic_vector(31 downto 0);
  signal mux_y_net_x0: std_logic;
  signal rpoco8_testbench_v11_walsh_codes_data_out_net_x0: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_walsh_trig_sel_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice10_y_net_x3: std_logic;
  signal slice11_y_net: std_logic;
  signal slice12_y_net: std_logic;
  signal slice13_y_net: std_logic;
  signal slice14_y_net: std_logic;
  signal slice15_y_net: std_logic;
  signal slice16_y_net: std_logic;
  signal slice17_y_net: std_logic;
  signal slice18_y_net: std_logic_vector(2 downto 0);
  signal slice1_y_net_x0: std_logic_vector(10 downto 0);
  signal slice2_y_net: std_logic;
  signal slice3_y_net_x3: std_logic;
  signal slice4_y_net_x3: std_logic;
  signal slice5_y_net_x3: std_logic;
  signal slice6_y_net_x3: std_logic;
  signal slice7_y_net_x3: std_logic;
  signal slice8_y_net_x3: std_logic;
  signal slice9_y_net_x3: std_logic;

begin
  ce_1_sg_x102 <= ce_1;
  clk_1_sg_x102 <= clk_1;
  rpoco8_testbench_v11_walsh_codes_data_out_net_x0 <= rpoco8_testbench_v11_walsh_codes_data_out;
  rpoco8_testbench_v11_walsh_trig_sel_user_data_out_net_x0 <= rpoco8_testbench_v11_walsh_trig_sel_user_data_out;
  codes <= convert_addr_dout_net_x1;
  codes_x0 <= convert_din_dout_net_x1;
  codes_x1 <= convert_we_dout_net_x1;
  out1 <= slice10_y_net_x3;
  out2 <= slice3_y_net_x3;
  out3 <= slice4_y_net_x3;
  out4 <= slice5_y_net_x3;
  out5 <= slice6_y_net_x3;
  out6 <= slice7_y_net_x3;
  out7 <= slice8_y_net_x3;
  out8 <= slice9_y_net_x3;
  out9 <= mux_y_net_x0;
  walsh1 <= convert_dout_net_x8;
  walsh2 <= convert_dout_net_x9;
  walsh3 <= convert_dout_net_x10;
  walsh4 <= convert_dout_net_x11;
  walsh5 <= convert_dout_net_x12;
  walsh6 <= convert_dout_net_x13;
  walsh7 <= convert_dout_net_x14;
  walsh8 <= convert_dout_net_x15;

  codes_9fb2d05802: entity work.codes_entity_9fb2d05802
    port map (
      addr => slice1_y_net_x0,
      data_in => constant_op_net_x0,
      we => constant1_op_net_x0,
      convert_addr_x0 => convert_addr_dout_net_x1,
      convert_din_x0 => convert_din_dout_net_x1,
      convert_we_x0 => convert_we_dout_net_x1
    );

  constant1: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net_x0
    );

  constant_x0: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net_x0
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_05e2750227d8d748",
      op_arith => xlUnsigned,
      op_width => 28
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      d => rpoco8_testbench_v11_walsh_codes_data_out_net_x0,
      en => '1',
      q => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      d => rpoco8_testbench_v11_walsh_codes_data_out_net_x0,
      en => '1',
      q => delay1_q_net
    );

  delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      d => rpoco8_testbench_v11_walsh_codes_data_out_net_x0,
      en => '1',
      q => delay2_q_net
    );

  delay3: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      d => rpoco8_testbench_v11_walsh_codes_data_out_net_x0,
      en => '1',
      q => delay3_q_net
    );

  delay4: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      d => rpoco8_testbench_v11_walsh_codes_data_out_net_x0,
      en => '1',
      q => delay4_q_net
    );

  delay5: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      d => rpoco8_testbench_v11_walsh_codes_data_out_net_x0,
      en => '1',
      q => delay5_q_net
    );

  delay6: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      d => rpoco8_testbench_v11_walsh_codes_data_out_net_x0,
      en => '1',
      q => delay6_q_net
    );

  delay7: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      d => rpoco8_testbench_v11_walsh_codes_data_out_net_x0,
      en => '1',
      q => delay7_q_net
    );

  delay8: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      d => rpoco8_testbench_v11_walsh_codes_data_out_net_x0,
      en => '1',
      q => delay8_q_net
    );

  mux: entity work.mux_bfab03038f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => slice2_y_net,
      d1(0) => slice11_y_net,
      d2(0) => slice12_y_net,
      d3(0) => slice13_y_net,
      d4(0) => slice14_y_net,
      d5(0) => slice15_y_net,
      d6(0) => slice16_y_net,
      d7(0) => slice17_y_net,
      sel => slice18_y_net,
      y(0) => mux_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 17,
      new_msb => 27,
      x_width => 28,
      y_width => 11
    )
    port map (
      x => counter_op_net,
      y => slice1_y_net_x0
    );

  slice10: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay_q_net,
      y(0) => slice10_y_net_x3
    );

  slice11: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay8_q_net,
      y(0) => slice11_y_net
    );

  slice12: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay8_q_net,
      y(0) => slice12_y_net
    );

  slice13: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay8_q_net,
      y(0) => slice13_y_net
    );

  slice14: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 4,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay8_q_net,
      y(0) => slice14_y_net
    );

  slice15: entity work.xlslice
    generic map (
      new_lsb => 5,
      new_msb => 5,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay8_q_net,
      y(0) => slice15_y_net
    );

  slice16: entity work.xlslice
    generic map (
      new_lsb => 6,
      new_msb => 6,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay8_q_net,
      y(0) => slice16_y_net
    );

  slice17: entity work.xlslice
    generic map (
      new_lsb => 7,
      new_msb => 7,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay8_q_net,
      y(0) => slice17_y_net
    );

  slice18: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 2,
      x_width => 32,
      y_width => 3
    )
    port map (
      x => rpoco8_testbench_v11_walsh_trig_sel_user_data_out_net_x0,
      y => slice18_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay8_q_net,
      y(0) => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay1_q_net,
      y(0) => slice3_y_net_x3
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay2_q_net,
      y(0) => slice4_y_net_x3
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay3_q_net,
      y(0) => slice5_y_net_x3
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 4,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay4_q_net,
      y(0) => slice6_y_net_x3
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 5,
      new_msb => 5,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay5_q_net,
      y(0) => slice7_y_net_x3
    );

  slice8: entity work.xlslice
    generic map (
      new_lsb => 6,
      new_msb => 6,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay6_q_net,
      y(0) => slice8_y_net_x3
    );

  slice9: entity work.xlslice
    generic map (
      new_lsb => 7,
      new_msb => 7,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay7_q_net,
      y(0) => slice9_y_net_x3
    );

  walsh1_32c05d9875: entity work.walsh1_entity_32c05d9875
    port map (
      gpio_out => slice10_y_net_x3,
      convert_x0 => convert_dout_net_x8
    );

  walsh2_b0c38fa47f: entity work.walsh1_entity_32c05d9875
    port map (
      gpio_out => slice3_y_net_x3,
      convert_x0 => convert_dout_net_x9
    );

  walsh3_e450b6b67f: entity work.walsh1_entity_32c05d9875
    port map (
      gpio_out => slice4_y_net_x3,
      convert_x0 => convert_dout_net_x10
    );

  walsh4_0c6e5713e6: entity work.walsh1_entity_32c05d9875
    port map (
      gpio_out => slice5_y_net_x3,
      convert_x0 => convert_dout_net_x11
    );

  walsh5_cc3c4964fc: entity work.walsh1_entity_32c05d9875
    port map (
      gpio_out => slice6_y_net_x3,
      convert_x0 => convert_dout_net_x12
    );

  walsh6_8cb2ddfe20: entity work.walsh1_entity_32c05d9875
    port map (
      gpio_out => slice7_y_net_x3,
      convert_x0 => convert_dout_net_x13
    );

  walsh7_40593cf5aa: entity work.walsh1_entity_32c05d9875
    port map (
      gpio_out => slice8_y_net_x3,
      convert_x0 => convert_dout_net_x14
    );

  walsh8_9cd8803707: entity work.walsh1_entity_32c05d9875
    port map (
      gpio_out => slice9_y_net_x3,
      convert_x0 => convert_dout_net_x15
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/xengine8_muxed/aa/cmult_4bit_em*"

entity cmult_4bit_em_entity_a9772c0a44 is
  port (
    a: in std_logic_vector(15 downto 0); 
    b: in std_logic_vector(15 downto 0); 
    c: in std_logic_vector(15 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(15 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end cmult_4bit_em_entity_a9772c0a44;

architecture structural of cmult_4bit_em_entity_a9772c0a44 is
  signal ac_p_net: std_logic_vector(31 downto 0);
  signal bd_p_net: std_logic_vector(31 downto 0);
  signal ce_1_sg_x103: std_logic;
  signal clk_1_sg_x103: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert2_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert3_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert_dout_net_x0: std_logic_vector(15 downto 0);
  signal real_sum_s_net_x0: std_logic_vector(32 downto 0);

begin
  convert_dout_net_x0 <= a;
  convert1_dout_net_x0 <= b;
  convert2_dout_net_x0 <= c;
  ce_1_sg_x103 <= ce_1;
  clk_1_sg_x103 <= clk_1;
  convert3_dout_net_x0 <= d;
  real_x0 <= real_sum_s_net_x0;

  ac: entity work.xlmult
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 15,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 16,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mlt_11_2_0af49143406018f5",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 30,
      p_width => 32,
      quantization => 1
    )
    port map (
      a => convert_dout_net_x0,
      b => convert2_dout_net_x0,
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      clr => '0',
      core_ce => ce_1_sg_x103,
      core_clk => clk_1_sg_x103,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => ac_p_net
    );

  bd: entity work.xlmult
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 15,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 16,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mlt_11_2_0af49143406018f5",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 30,
      p_width => 32,
      quantization => 1
    )
    port map (
      a => convert1_dout_net_x0,
      b => convert3_dout_net_x0,
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      clr => '0',
      core_ce => ce_1_sg_x103,
      core_clk => clk_1_sg_x103,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => bd_p_net
    );

  real_sum: entity work.addsub_ae6966ed1c
    port map (
      a => ac_p_net,
      b => bd_p_net,
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      clr => '0',
      s => real_sum_s_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/xengine8_muxed/aa/real"

entity real_entity_1be9511e3a is
  port (
    addr: in std_logic_vector(10 downto 0); 
    data_in: in std_logic_vector(31 downto 0); 
    we: in std_logic; 
    convert_addr_x0: out std_logic_vector(10 downto 0); 
    convert_din_x0: out std_logic_vector(31 downto 0); 
    convert_we_x0: out std_logic
  );
end real_entity_1be9511e3a;

architecture structural of real_entity_1be9511e3a is
  signal convert_addr_dout_net_x0: std_logic_vector(10 downto 0);
  signal convert_din_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal counter2_op_net_x0: std_logic_vector(10 downto 0);
  signal relational5_op_net_x0: std_logic;
  signal single_port_ram_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  counter2_op_net_x0 <= addr;
  single_port_ram_data_out_net_x0 <= data_in;
  relational5_op_net_x0 <= we;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din_x0 <= convert_din_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 11,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 11,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => counter2_op_net_x0,
      dout => convert_addr_dout_net_x0
    );

  convert_din: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 30,
      din_width => 32,
      dout_arith => 2,
      dout_bin_pt => 30,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => single_port_ram_data_out_net_x0,
      dout => convert_din_dout_net_x0
    );

  convert_we: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => relational5_op_net_x0,
      dout(0) => convert_we_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/xengine8_muxed/aa/simple_bram_vacc/delay_bram"

entity delay_bram_entity_8b007fed00 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(31 downto 0); 
    out1: out std_logic_vector(31 downto 0)
  );
end delay_bram_entity_8b007fed00;

architecture structural of delay_bram_entity_8b007fed00 is
  signal adder_s_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x104: std_logic;
  signal clk_1_sg_x104: std_logic;
  signal constant2_op_net: std_logic;
  signal counter_op_net: std_logic_vector(10 downto 0);
  signal single_port_ram_data_out_net_x1: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x104 <= ce_1;
  clk_1_sg_x104 <= clk_1;
  adder_s_net_x0 <= in1;
  out1 <= single_port_ram_data_out_net_x1;

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 2043,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_ae406e50e98e0e45",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x104,
      clk => clk_1_sg_x104,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  single_port_ram: entity work.xlspram
    generic map (
      c_address_width => 11,
      c_width => 32,
      core_name0 => "bmg_33_d9b3e13a04ce0977",
      latency => 1
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x104,
      clk => clk_1_sg_x104,
      data_in => adder_s_net_x0,
      en => "1",
      rst => "0",
      we(0) => constant2_op_net,
      data_out => single_port_ram_data_out_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/xengine8_muxed/aa/simple_bram_vacc"

entity simple_bram_vacc_entity_a571cb392d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(32 downto 0); 
    new_acc: in std_logic; 
    dout: out std_logic_vector(31 downto 0); 
    valid: out std_logic
  );
end simple_bram_vacc_entity_a571cb392d;

architecture structural of simple_bram_vacc_entity_a571cb392d is
  signal adder_s_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x107: std_logic;
  signal clk_1_sg_x107: std_logic;
  signal constant_op_net: std_logic_vector(31 downto 0);
  signal delay1_q_net_x2: std_logic;
  signal mux_y_net: std_logic_vector(31 downto 0);
  signal real_sum_s_net_x1: std_logic_vector(32 downto 0);
  signal relational5_op_net_x2: std_logic;
  signal single_port_ram_data_out_net_x2: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x107 <= ce_1;
  clk_1_sg_x107 <= clk_1;
  real_sum_s_net_x1 <= din;
  delay1_q_net_x2 <= new_acc;
  dout <= single_port_ram_data_out_net_x2;
  valid <= relational5_op_net_x2;

  adder: entity work.addsub_b6f2d3b6eb
    port map (
      a => real_sum_s_net_x1,
      b => mux_y_net,
      ce => ce_1_sg_x107,
      clk => clk_1_sg_x107,
      clr => '0',
      s => adder_s_net_x0
    );

  constant_x0: entity work.constant_37567836aa
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  delay_bram_8b007fed00: entity work.delay_bram_entity_8b007fed00
    port map (
      ce_1 => ce_1_sg_x107,
      clk_1 => clk_1_sg_x107,
      in1 => adder_s_net_x0,
      out1 => single_port_ram_data_out_net_x2
    );

  mux: entity work.mux_286b77e019
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => single_port_ram_data_out_net_x2,
      d1 => constant_op_net,
      sel(0) => relational5_op_net_x2,
      y => mux_y_net
    );

  pulse_ext_3277005e5f: entity work.pulse_ext_entity_6bd1940d33
    port map (
      ce_1 => ce_1_sg_x107,
      clk_1 => clk_1_sg_x107,
      in_x0 => delay1_q_net_x2,
      out_x0 => relational5_op_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/xengine8_muxed/aa"

entity aa_entity_83d96afb65 is
  port (
    a_bi: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    new_acc: in std_logic; 
    real_x0: out std_logic_vector(10 downto 0); 
    real_x1: out std_logic_vector(31 downto 0); 
    real_x2: out std_logic
  );
end aa_entity_83d96afb65;

architecture structural of aa_entity_83d96afb65 is
  signal ce_1_sg_x108: std_logic;
  signal clk_1_sg_x108: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert2_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert3_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert_addr_dout_net_x1: std_logic_vector(10 downto 0);
  signal convert_din_dout_net_x1: std_logic_vector(31 downto 0);
  signal convert_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert_we_dout_net_x1: std_logic;
  signal counter2_op_net_x0: std_logic_vector(10 downto 0);
  signal delay1_q_net_x2: std_logic;
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal real_sum_s_net_x1: std_logic_vector(32 downto 0);
  signal relational1_op_net_x0: std_logic;
  signal relational5_op_net_x2: std_logic;
  signal single_port_ram_data_out_net_x2: std_logic_vector(31 downto 0);
  signal slice8_y_net_x3: std_logic_vector(35 downto 0);

begin
  slice8_y_net_x3 <= a_bi;
  ce_1_sg_x108 <= ce_1;
  clk_1_sg_x108 <= clk_1;
  relational1_op_net_x0 <= new_acc;
  real_x0 <= convert_addr_dout_net_x1;
  real_x1 <= convert_din_dout_net_x1;
  real_x2 <= convert_we_dout_net_x1;

  c_to_ri1_ed9df0cd88: entity work.c_to_ri_entity_73baf3c539
    port map (
      c => slice8_y_net_x3,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  c_to_ri_e23e4dc89f: entity work.c_to_ri_entity_73baf3c539
    port map (
      c => slice8_y_net_x3,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  cmult_4bit_em_a9772c0a44: entity work.cmult_4bit_em_entity_a9772c0a44
    port map (
      a => convert_dout_net_x0,
      b => convert1_dout_net_x0,
      c => convert2_dout_net_x0,
      ce_1 => ce_1_sg_x108,
      clk_1 => clk_1_sg_x108,
      d => convert3_dout_net_x0,
      real_x0 => real_sum_s_net_x1
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => force_re_output_port_net_x0,
      dout => convert_dout_net_x0
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => force_im_output_port_net_x0,
      dout => convert1_dout_net_x0
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => force_re_output_port_net_x1,
      dout => convert2_dout_net_x0
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => force_im_output_port_net_x1,
      dout => convert3_dout_net_x0
    );

  counter2: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_ae406e50e98e0e45",
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x108,
      clk => clk_1_sg_x108,
      clr => '0',
      en(0) => relational5_op_net_x2,
      rst(0) => delay1_q_net_x2,
      op => counter2_op_net_x0
    );

  delay1: entity work.xldelay
    generic map (
      latency => 5,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x108,
      clk => clk_1_sg_x108,
      d(0) => relational1_op_net_x0,
      en => '1',
      q(0) => delay1_q_net_x2
    );

  real_1be9511e3a: entity work.real_entity_1be9511e3a
    port map (
      addr => counter2_op_net_x0,
      data_in => single_port_ram_data_out_net_x2,
      we => relational5_op_net_x2,
      convert_addr_x0 => convert_addr_dout_net_x1,
      convert_din_x0 => convert_din_dout_net_x1,
      convert_we_x0 => convert_we_dout_net_x1
    );

  simple_bram_vacc_a571cb392d: entity work.simple_bram_vacc_entity_a571cb392d
    port map (
      ce_1 => ce_1_sg_x108,
      clk_1 => clk_1_sg_x108,
      din => real_sum_s_net_x1,
      new_acc => delay1_q_net_x2,
      dout => single_port_ram_data_out_net_x2,
      valid => relational5_op_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/xengine8_muxed/ab/cmult_4bit_em*"

entity cmult_4bit_em_entity_c19d33fb0f is
  port (
    a: in std_logic_vector(15 downto 0); 
    b: in std_logic_vector(15 downto 0); 
    c: in std_logic_vector(15 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(15 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end cmult_4bit_em_entity_c19d33fb0f;

architecture structural of cmult_4bit_em_entity_c19d33fb0f is
  signal ac_p_net: std_logic_vector(31 downto 0);
  signal ad_p_net: std_logic_vector(31 downto 0);
  signal bc_p_net: std_logic_vector(31 downto 0);
  signal bd_p_net: std_logic_vector(31 downto 0);
  signal ce_1_sg_x109: std_logic;
  signal clk_1_sg_x109: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert2_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert3_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert_dout_net_x0: std_logic_vector(15 downto 0);
  signal imag_sum_s_net_x0: std_logic_vector(32 downto 0);
  signal real_sum_s_net_x0: std_logic_vector(32 downto 0);

begin
  convert_dout_net_x0 <= a;
  convert1_dout_net_x0 <= b;
  convert2_dout_net_x0 <= c;
  ce_1_sg_x109 <= ce_1;
  clk_1_sg_x109 <= clk_1;
  convert3_dout_net_x0 <= d;
  imag <= imag_sum_s_net_x0;
  real_x0 <= real_sum_s_net_x0;

  ac: entity work.xlmult
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 15,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 16,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mlt_11_2_0af49143406018f5",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 30,
      p_width => 32,
      quantization => 1
    )
    port map (
      a => convert_dout_net_x0,
      b => convert2_dout_net_x0,
      ce => ce_1_sg_x109,
      clk => clk_1_sg_x109,
      clr => '0',
      core_ce => ce_1_sg_x109,
      core_clk => clk_1_sg_x109,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => ac_p_net
    );

  ad: entity work.xlmult
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 15,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 16,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mlt_11_2_0af49143406018f5",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 30,
      p_width => 32,
      quantization => 1
    )
    port map (
      a => convert_dout_net_x0,
      b => convert3_dout_net_x0,
      ce => ce_1_sg_x109,
      clk => clk_1_sg_x109,
      clr => '0',
      core_ce => ce_1_sg_x109,
      core_clk => clk_1_sg_x109,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => ad_p_net
    );

  bc: entity work.xlmult
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 15,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 16,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mlt_11_2_0af49143406018f5",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 30,
      p_width => 32,
      quantization => 1
    )
    port map (
      a => convert1_dout_net_x0,
      b => convert2_dout_net_x0,
      ce => ce_1_sg_x109,
      clk => clk_1_sg_x109,
      clr => '0',
      core_ce => ce_1_sg_x109,
      core_clk => clk_1_sg_x109,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => bc_p_net
    );

  bd: entity work.xlmult
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 15,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 15,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 16,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mlt_11_2_0af49143406018f5",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 30,
      p_width => 32,
      quantization => 1
    )
    port map (
      a => convert1_dout_net_x0,
      b => convert3_dout_net_x0,
      ce => ce_1_sg_x109,
      clk => clk_1_sg_x109,
      clr => '0',
      core_ce => ce_1_sg_x109,
      core_clk => clk_1_sg_x109,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => bd_p_net
    );

  imag_sum: entity work.addsub_8ebe8fc34c
    port map (
      a => bc_p_net,
      b => ad_p_net,
      ce => ce_1_sg_x109,
      clk => clk_1_sg_x109,
      clr => '0',
      s => imag_sum_s_net_x0
    );

  real_sum: entity work.addsub_ae6966ed1c
    port map (
      a => ac_p_net,
      b => bd_p_net,
      ce => ce_1_sg_x109,
      clk => clk_1_sg_x109,
      clr => '0',
      s => real_sum_s_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/xengine8_muxed/ab"

entity ab_entity_0c1a63c33c is
  port (
    a_bi: in std_logic_vector(35 downto 0); 
    c_di: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    new_acc: in std_logic; 
    imag: out std_logic_vector(10 downto 0); 
    imag_x0: out std_logic_vector(31 downto 0); 
    imag_x1: out std_logic; 
    real_x0: out std_logic_vector(10 downto 0); 
    real_x1: out std_logic_vector(31 downto 0); 
    real_x2: out std_logic
  );
end ab_entity_0c1a63c33c;

architecture structural of ab_entity_0c1a63c33c is
  signal ce_1_sg_x118: std_logic;
  signal clk_1_sg_x118: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert2_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert3_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert_addr_dout_net_x2: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x3: std_logic_vector(10 downto 0);
  signal convert_din_dout_net_x2: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x3: std_logic_vector(31 downto 0);
  signal convert_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert_we_dout_net_x2: std_logic;
  signal convert_we_dout_net_x3: std_logic;
  signal counter2_op_net_x1: std_logic_vector(10 downto 0);
  signal delay1_q_net_x5: std_logic;
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal imag_sum_s_net_x1: std_logic_vector(32 downto 0);
  signal real_sum_s_net_x1: std_logic_vector(32 downto 0);
  signal relational1_op_net_x1: std_logic;
  signal relational5_op_net_x2: std_logic;
  signal relational5_op_net_x3: std_logic;
  signal single_port_ram_data_out_net_x2: std_logic_vector(31 downto 0);
  signal single_port_ram_data_out_net_x3: std_logic_vector(31 downto 0);
  signal slice8_y_net_x5: std_logic_vector(35 downto 0);
  signal slice9_y_net_x2: std_logic_vector(35 downto 0);

begin
  slice8_y_net_x5 <= a_bi;
  slice9_y_net_x2 <= c_di;
  ce_1_sg_x118 <= ce_1;
  clk_1_sg_x118 <= clk_1;
  relational1_op_net_x1 <= new_acc;
  imag <= convert_addr_dout_net_x2;
  imag_x0 <= convert_din_dout_net_x2;
  imag_x1 <= convert_we_dout_net_x2;
  real_x0 <= convert_addr_dout_net_x3;
  real_x1 <= convert_din_dout_net_x3;
  real_x2 <= convert_we_dout_net_x3;

  c_to_ri1_31fa8ba412: entity work.c_to_ri_entity_73baf3c539
    port map (
      c => slice9_y_net_x2,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  c_to_ri_26cf68780d: entity work.c_to_ri_entity_73baf3c539
    port map (
      c => slice8_y_net_x5,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  cmult_4bit_em_c19d33fb0f: entity work.cmult_4bit_em_entity_c19d33fb0f
    port map (
      a => convert_dout_net_x0,
      b => convert1_dout_net_x0,
      c => convert2_dout_net_x0,
      ce_1 => ce_1_sg_x118,
      clk_1 => clk_1_sg_x118,
      d => convert3_dout_net_x0,
      imag => imag_sum_s_net_x1,
      real_x0 => real_sum_s_net_x1
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => force_re_output_port_net_x0,
      dout => convert_dout_net_x0
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => force_im_output_port_net_x0,
      dout => convert1_dout_net_x0
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => force_re_output_port_net_x1,
      dout => convert2_dout_net_x0
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => force_im_output_port_net_x1,
      dout => convert3_dout_net_x0
    );

  counter2: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_ae406e50e98e0e45",
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x118,
      clk => clk_1_sg_x118,
      clr => '0',
      en(0) => relational5_op_net_x2,
      rst(0) => delay1_q_net_x5,
      op => counter2_op_net_x1
    );

  delay1: entity work.xldelay
    generic map (
      latency => 5,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x118,
      clk => clk_1_sg_x118,
      d(0) => relational1_op_net_x1,
      en => '1',
      q(0) => delay1_q_net_x5
    );

  imag_3d0a5528db: entity work.real_entity_1be9511e3a
    port map (
      addr => counter2_op_net_x1,
      data_in => single_port_ram_data_out_net_x3,
      we => relational5_op_net_x3,
      convert_addr_x0 => convert_addr_dout_net_x2,
      convert_din_x0 => convert_din_dout_net_x2,
      convert_we_x0 => convert_we_dout_net_x2
    );

  real_90c7a621a4: entity work.real_entity_1be9511e3a
    port map (
      addr => counter2_op_net_x1,
      data_in => single_port_ram_data_out_net_x2,
      we => relational5_op_net_x2,
      convert_addr_x0 => convert_addr_dout_net_x3,
      convert_din_x0 => convert_din_dout_net_x3,
      convert_we_x0 => convert_we_dout_net_x3
    );

  simple_bram_vacc1_9ad86dbfbf: entity work.simple_bram_vacc_entity_a571cb392d
    port map (
      ce_1 => ce_1_sg_x118,
      clk_1 => clk_1_sg_x118,
      din => imag_sum_s_net_x1,
      new_acc => delay1_q_net_x5,
      dout => single_port_ram_data_out_net_x3,
      valid => relational5_op_net_x3
    );

  simple_bram_vacc_48234cb721: entity work.simple_bram_vacc_entity_a571cb392d
    port map (
      ce_1 => ce_1_sg_x118,
      clk_1 => clk_1_sg_x118,
      din => real_sum_s_net_x1,
      new_acc => delay1_q_net_x5,
      dout => single_port_ram_data_out_net_x2,
      valid => relational5_op_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11/xengine8_muxed"

entity xengine8_muxed_entity_cac8d4c9c9 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    c: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(35 downto 0); 
    e: in std_logic_vector(35 downto 0); 
    f: in std_logic_vector(35 downto 0); 
    g: in std_logic_vector(35 downto 0); 
    h: in std_logic_vector(35 downto 0); 
    new_acc: in std_logic; 
    aa: out std_logic_vector(10 downto 0); 
    aa_x0: out std_logic_vector(31 downto 0); 
    aa_x1: out std_logic; 
    ab: out std_logic_vector(10 downto 0); 
    ab_x0: out std_logic_vector(31 downto 0); 
    ab_x1: out std_logic; 
    ab_x2: out std_logic_vector(10 downto 0); 
    ab_x3: out std_logic_vector(31 downto 0); 
    ab_x4: out std_logic; 
    ac: out std_logic_vector(10 downto 0); 
    ac_x0: out std_logic_vector(31 downto 0); 
    ac_x1: out std_logic; 
    ac_x2: out std_logic_vector(10 downto 0); 
    ac_x3: out std_logic_vector(31 downto 0); 
    ac_x4: out std_logic; 
    ad: out std_logic_vector(10 downto 0); 
    ad_x0: out std_logic_vector(31 downto 0); 
    ad_x1: out std_logic; 
    ad_x2: out std_logic_vector(10 downto 0); 
    ad_x3: out std_logic_vector(31 downto 0); 
    ad_x4: out std_logic; 
    ae: out std_logic_vector(10 downto 0); 
    ae_x0: out std_logic_vector(31 downto 0); 
    ae_x1: out std_logic; 
    ae_x2: out std_logic_vector(10 downto 0); 
    ae_x3: out std_logic_vector(31 downto 0); 
    ae_x4: out std_logic; 
    af: out std_logic_vector(10 downto 0); 
    af_x0: out std_logic_vector(31 downto 0); 
    af_x1: out std_logic; 
    af_x2: out std_logic_vector(10 downto 0); 
    af_x3: out std_logic_vector(31 downto 0); 
    af_x4: out std_logic; 
    bb: out std_logic_vector(10 downto 0); 
    bb_x0: out std_logic_vector(31 downto 0); 
    bb_x1: out std_logic; 
    bc: out std_logic_vector(10 downto 0); 
    bc_x0: out std_logic_vector(31 downto 0); 
    bc_x1: out std_logic; 
    bc_x2: out std_logic_vector(10 downto 0); 
    bc_x3: out std_logic_vector(31 downto 0); 
    bc_x4: out std_logic; 
    bd: out std_logic_vector(10 downto 0); 
    bd_x0: out std_logic_vector(31 downto 0); 
    bd_x1: out std_logic; 
    bd_x2: out std_logic_vector(10 downto 0); 
    bd_x3: out std_logic_vector(31 downto 0); 
    bd_x4: out std_logic; 
    be: out std_logic_vector(10 downto 0); 
    be_x0: out std_logic_vector(31 downto 0); 
    be_x1: out std_logic; 
    be_x2: out std_logic_vector(10 downto 0); 
    be_x3: out std_logic_vector(31 downto 0); 
    be_x4: out std_logic; 
    bf: out std_logic_vector(10 downto 0); 
    bf_x0: out std_logic_vector(31 downto 0); 
    bf_x1: out std_logic; 
    bf_x2: out std_logic_vector(10 downto 0); 
    bf_x3: out std_logic_vector(31 downto 0); 
    bf_x4: out std_logic; 
    cc: out std_logic_vector(10 downto 0); 
    cc_x0: out std_logic_vector(31 downto 0); 
    cc_x1: out std_logic; 
    cd: out std_logic_vector(10 downto 0); 
    cd_x0: out std_logic_vector(31 downto 0); 
    cd_x1: out std_logic; 
    cd_x2: out std_logic_vector(10 downto 0); 
    cd_x3: out std_logic_vector(31 downto 0); 
    cd_x4: out std_logic; 
    cg: out std_logic_vector(10 downto 0); 
    cg_x0: out std_logic_vector(31 downto 0); 
    cg_x1: out std_logic; 
    cg_x2: out std_logic_vector(10 downto 0); 
    cg_x3: out std_logic_vector(31 downto 0); 
    cg_x4: out std_logic; 
    ch: out std_logic_vector(10 downto 0); 
    ch_x0: out std_logic_vector(31 downto 0); 
    ch_x1: out std_logic; 
    ch_x2: out std_logic_vector(10 downto 0); 
    ch_x3: out std_logic_vector(31 downto 0); 
    ch_x4: out std_logic; 
    dd: out std_logic_vector(10 downto 0); 
    dd_x0: out std_logic_vector(31 downto 0); 
    dd_x1: out std_logic; 
    dg: out std_logic_vector(10 downto 0); 
    dg_x0: out std_logic_vector(31 downto 0); 
    dg_x1: out std_logic; 
    dg_x2: out std_logic_vector(10 downto 0); 
    dg_x3: out std_logic_vector(31 downto 0); 
    dg_x4: out std_logic; 
    dh: out std_logic_vector(10 downto 0); 
    dh_x0: out std_logic_vector(31 downto 0); 
    dh_x1: out std_logic; 
    dh_x2: out std_logic_vector(10 downto 0); 
    dh_x3: out std_logic_vector(31 downto 0); 
    dh_x4: out std_logic
  );
end xengine8_muxed_entity_cac8d4c9c9;

architecture structural of xengine8_muxed_entity_cac8d4c9c9 is
  signal ce_1_sg_x267: std_logic;
  signal clk_1_sg_x267: std_logic;
  signal convert_addr_dout_net_x33: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x34: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x35: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x36: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x37: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x38: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x39: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x40: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x41: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x42: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x43: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x44: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x45: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x46: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x47: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x48: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x49: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x50: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x51: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x52: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x53: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x54: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x55: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x56: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x57: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x58: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x59: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x60: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x61: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x62: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x63: std_logic_vector(10 downto 0);
  signal convert_addr_dout_net_x64: std_logic_vector(10 downto 0);
  signal convert_din_dout_net_x33: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x34: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x35: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x36: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x37: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x38: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x39: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x40: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x41: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x42: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x43: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x44: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x45: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x46: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x47: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x48: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x49: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x50: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x51: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x52: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x53: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x54: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x55: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x56: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x57: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x58: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x59: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x60: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x61: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x62: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x63: std_logic_vector(31 downto 0);
  signal convert_din_dout_net_x64: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x33: std_logic;
  signal convert_we_dout_net_x34: std_logic;
  signal convert_we_dout_net_x35: std_logic;
  signal convert_we_dout_net_x36: std_logic;
  signal convert_we_dout_net_x37: std_logic;
  signal convert_we_dout_net_x38: std_logic;
  signal convert_we_dout_net_x39: std_logic;
  signal convert_we_dout_net_x40: std_logic;
  signal convert_we_dout_net_x41: std_logic;
  signal convert_we_dout_net_x42: std_logic;
  signal convert_we_dout_net_x43: std_logic;
  signal convert_we_dout_net_x44: std_logic;
  signal convert_we_dout_net_x45: std_logic;
  signal convert_we_dout_net_x46: std_logic;
  signal convert_we_dout_net_x47: std_logic;
  signal convert_we_dout_net_x48: std_logic;
  signal convert_we_dout_net_x49: std_logic;
  signal convert_we_dout_net_x50: std_logic;
  signal convert_we_dout_net_x51: std_logic;
  signal convert_we_dout_net_x52: std_logic;
  signal convert_we_dout_net_x53: std_logic;
  signal convert_we_dout_net_x54: std_logic;
  signal convert_we_dout_net_x55: std_logic;
  signal convert_we_dout_net_x56: std_logic;
  signal convert_we_dout_net_x57: std_logic;
  signal convert_we_dout_net_x58: std_logic;
  signal convert_we_dout_net_x59: std_logic;
  signal convert_we_dout_net_x60: std_logic;
  signal convert_we_dout_net_x61: std_logic;
  signal convert_we_dout_net_x62: std_logic;
  signal convert_we_dout_net_x63: std_logic;
  signal convert_we_dout_net_x64: std_logic;
  signal relational1_op_net_x18: std_logic;
  signal slice21_y_net_x14: std_logic_vector(35 downto 0);
  signal slice25_y_net_x14: std_logic_vector(35 downto 0);
  signal slice26_y_net_x5: std_logic_vector(35 downto 0);
  signal slice27_y_net_x5: std_logic_vector(35 downto 0);
  signal slice28_y_net_x5: std_logic_vector(35 downto 0);
  signal slice29_y_net_x5: std_logic_vector(35 downto 0);
  signal slice8_y_net_x14: std_logic_vector(35 downto 0);
  signal slice9_y_net_x14: std_logic_vector(35 downto 0);

begin
  slice8_y_net_x14 <= a;
  slice9_y_net_x14 <= b;
  slice21_y_net_x14 <= c;
  ce_1_sg_x267 <= ce_1;
  clk_1_sg_x267 <= clk_1;
  slice25_y_net_x14 <= d;
  slice28_y_net_x5 <= e;
  slice29_y_net_x5 <= f;
  slice26_y_net_x5 <= g;
  slice27_y_net_x5 <= h;
  relational1_op_net_x18 <= new_acc;
  aa <= convert_addr_dout_net_x33;
  aa_x0 <= convert_din_dout_net_x33;
  aa_x1 <= convert_we_dout_net_x33;
  ab <= convert_addr_dout_net_x34;
  ab_x0 <= convert_din_dout_net_x34;
  ab_x1 <= convert_we_dout_net_x34;
  ab_x2 <= convert_addr_dout_net_x35;
  ab_x3 <= convert_din_dout_net_x35;
  ab_x4 <= convert_we_dout_net_x35;
  ac <= convert_addr_dout_net_x36;
  ac_x0 <= convert_din_dout_net_x36;
  ac_x1 <= convert_we_dout_net_x36;
  ac_x2 <= convert_addr_dout_net_x37;
  ac_x3 <= convert_din_dout_net_x37;
  ac_x4 <= convert_we_dout_net_x37;
  ad <= convert_addr_dout_net_x38;
  ad_x0 <= convert_din_dout_net_x38;
  ad_x1 <= convert_we_dout_net_x38;
  ad_x2 <= convert_addr_dout_net_x39;
  ad_x3 <= convert_din_dout_net_x39;
  ad_x4 <= convert_we_dout_net_x39;
  ae <= convert_addr_dout_net_x40;
  ae_x0 <= convert_din_dout_net_x40;
  ae_x1 <= convert_we_dout_net_x40;
  ae_x2 <= convert_addr_dout_net_x41;
  ae_x3 <= convert_din_dout_net_x41;
  ae_x4 <= convert_we_dout_net_x41;
  af <= convert_addr_dout_net_x42;
  af_x0 <= convert_din_dout_net_x42;
  af_x1 <= convert_we_dout_net_x42;
  af_x2 <= convert_addr_dout_net_x43;
  af_x3 <= convert_din_dout_net_x43;
  af_x4 <= convert_we_dout_net_x43;
  bb <= convert_addr_dout_net_x44;
  bb_x0 <= convert_din_dout_net_x44;
  bb_x1 <= convert_we_dout_net_x44;
  bc <= convert_addr_dout_net_x45;
  bc_x0 <= convert_din_dout_net_x45;
  bc_x1 <= convert_we_dout_net_x45;
  bc_x2 <= convert_addr_dout_net_x46;
  bc_x3 <= convert_din_dout_net_x46;
  bc_x4 <= convert_we_dout_net_x46;
  bd <= convert_addr_dout_net_x47;
  bd_x0 <= convert_din_dout_net_x47;
  bd_x1 <= convert_we_dout_net_x47;
  bd_x2 <= convert_addr_dout_net_x48;
  bd_x3 <= convert_din_dout_net_x48;
  bd_x4 <= convert_we_dout_net_x48;
  be <= convert_addr_dout_net_x49;
  be_x0 <= convert_din_dout_net_x49;
  be_x1 <= convert_we_dout_net_x49;
  be_x2 <= convert_addr_dout_net_x50;
  be_x3 <= convert_din_dout_net_x50;
  be_x4 <= convert_we_dout_net_x50;
  bf <= convert_addr_dout_net_x51;
  bf_x0 <= convert_din_dout_net_x51;
  bf_x1 <= convert_we_dout_net_x51;
  bf_x2 <= convert_addr_dout_net_x52;
  bf_x3 <= convert_din_dout_net_x52;
  bf_x4 <= convert_we_dout_net_x52;
  cc <= convert_addr_dout_net_x53;
  cc_x0 <= convert_din_dout_net_x53;
  cc_x1 <= convert_we_dout_net_x53;
  cd <= convert_addr_dout_net_x54;
  cd_x0 <= convert_din_dout_net_x54;
  cd_x1 <= convert_we_dout_net_x54;
  cd_x2 <= convert_addr_dout_net_x55;
  cd_x3 <= convert_din_dout_net_x55;
  cd_x4 <= convert_we_dout_net_x55;
  cg <= convert_addr_dout_net_x56;
  cg_x0 <= convert_din_dout_net_x56;
  cg_x1 <= convert_we_dout_net_x56;
  cg_x2 <= convert_addr_dout_net_x57;
  cg_x3 <= convert_din_dout_net_x57;
  cg_x4 <= convert_we_dout_net_x57;
  ch <= convert_addr_dout_net_x58;
  ch_x0 <= convert_din_dout_net_x58;
  ch_x1 <= convert_we_dout_net_x58;
  ch_x2 <= convert_addr_dout_net_x59;
  ch_x3 <= convert_din_dout_net_x59;
  ch_x4 <= convert_we_dout_net_x59;
  dd <= convert_addr_dout_net_x60;
  dd_x0 <= convert_din_dout_net_x60;
  dd_x1 <= convert_we_dout_net_x60;
  dg <= convert_addr_dout_net_x61;
  dg_x0 <= convert_din_dout_net_x61;
  dg_x1 <= convert_we_dout_net_x61;
  dg_x2 <= convert_addr_dout_net_x62;
  dg_x3 <= convert_din_dout_net_x62;
  dg_x4 <= convert_we_dout_net_x62;
  dh <= convert_addr_dout_net_x63;
  dh_x0 <= convert_din_dout_net_x63;
  dh_x1 <= convert_we_dout_net_x63;
  dh_x2 <= convert_addr_dout_net_x64;
  dh_x3 <= convert_din_dout_net_x64;
  dh_x4 <= convert_we_dout_net_x64;

  aa_83d96afb65: entity work.aa_entity_83d96afb65
    port map (
      a_bi => slice8_y_net_x14,
      ce_1 => ce_1_sg_x267,
      clk_1 => clk_1_sg_x267,
      new_acc => relational1_op_net_x18,
      real_x0 => convert_addr_dout_net_x33,
      real_x1 => convert_din_dout_net_x33,
      real_x2 => convert_we_dout_net_x33
    );

  ab_0c1a63c33c: entity work.ab_entity_0c1a63c33c
    port map (
      a_bi => slice8_y_net_x14,
      c_di => slice9_y_net_x14,
      ce_1 => ce_1_sg_x267,
      clk_1 => clk_1_sg_x267,
      new_acc => relational1_op_net_x18,
      imag => convert_addr_dout_net_x34,
      imag_x0 => convert_din_dout_net_x34,
      imag_x1 => convert_we_dout_net_x34,
      real_x0 => convert_addr_dout_net_x35,
      real_x1 => convert_din_dout_net_x35,
      real_x2 => convert_we_dout_net_x35
    );

  ac_3235dcb7b5: entity work.ab_entity_0c1a63c33c
    port map (
      a_bi => slice8_y_net_x14,
      c_di => slice21_y_net_x14,
      ce_1 => ce_1_sg_x267,
      clk_1 => clk_1_sg_x267,
      new_acc => relational1_op_net_x18,
      imag => convert_addr_dout_net_x36,
      imag_x0 => convert_din_dout_net_x36,
      imag_x1 => convert_we_dout_net_x36,
      real_x0 => convert_addr_dout_net_x37,
      real_x1 => convert_din_dout_net_x37,
      real_x2 => convert_we_dout_net_x37
    );

  ad_0969b37a3a: entity work.ab_entity_0c1a63c33c
    port map (
      a_bi => slice8_y_net_x14,
      c_di => slice25_y_net_x14,
      ce_1 => ce_1_sg_x267,
      clk_1 => clk_1_sg_x267,
      new_acc => relational1_op_net_x18,
      imag => convert_addr_dout_net_x38,
      imag_x0 => convert_din_dout_net_x38,
      imag_x1 => convert_we_dout_net_x38,
      real_x0 => convert_addr_dout_net_x39,
      real_x1 => convert_din_dout_net_x39,
      real_x2 => convert_we_dout_net_x39
    );

  ae_be535f1517: entity work.ab_entity_0c1a63c33c
    port map (
      a_bi => slice8_y_net_x14,
      c_di => slice28_y_net_x5,
      ce_1 => ce_1_sg_x267,
      clk_1 => clk_1_sg_x267,
      new_acc => relational1_op_net_x18,
      imag => convert_addr_dout_net_x40,
      imag_x0 => convert_din_dout_net_x40,
      imag_x1 => convert_we_dout_net_x40,
      real_x0 => convert_addr_dout_net_x41,
      real_x1 => convert_din_dout_net_x41,
      real_x2 => convert_we_dout_net_x41
    );

  af_4eaad891f9: entity work.ab_entity_0c1a63c33c
    port map (
      a_bi => slice8_y_net_x14,
      c_di => slice29_y_net_x5,
      ce_1 => ce_1_sg_x267,
      clk_1 => clk_1_sg_x267,
      new_acc => relational1_op_net_x18,
      imag => convert_addr_dout_net_x42,
      imag_x0 => convert_din_dout_net_x42,
      imag_x1 => convert_we_dout_net_x42,
      real_x0 => convert_addr_dout_net_x43,
      real_x1 => convert_din_dout_net_x43,
      real_x2 => convert_we_dout_net_x43
    );

  bb_1d0e40145a: entity work.aa_entity_83d96afb65
    port map (
      a_bi => slice9_y_net_x14,
      ce_1 => ce_1_sg_x267,
      clk_1 => clk_1_sg_x267,
      new_acc => relational1_op_net_x18,
      real_x0 => convert_addr_dout_net_x44,
      real_x1 => convert_din_dout_net_x44,
      real_x2 => convert_we_dout_net_x44
    );

  bc_e759aa7234: entity work.ab_entity_0c1a63c33c
    port map (
      a_bi => slice9_y_net_x14,
      c_di => slice21_y_net_x14,
      ce_1 => ce_1_sg_x267,
      clk_1 => clk_1_sg_x267,
      new_acc => relational1_op_net_x18,
      imag => convert_addr_dout_net_x45,
      imag_x0 => convert_din_dout_net_x45,
      imag_x1 => convert_we_dout_net_x45,
      real_x0 => convert_addr_dout_net_x46,
      real_x1 => convert_din_dout_net_x46,
      real_x2 => convert_we_dout_net_x46
    );

  bd_6d8aba8fa9: entity work.ab_entity_0c1a63c33c
    port map (
      a_bi => slice9_y_net_x14,
      c_di => slice25_y_net_x14,
      ce_1 => ce_1_sg_x267,
      clk_1 => clk_1_sg_x267,
      new_acc => relational1_op_net_x18,
      imag => convert_addr_dout_net_x47,
      imag_x0 => convert_din_dout_net_x47,
      imag_x1 => convert_we_dout_net_x47,
      real_x0 => convert_addr_dout_net_x48,
      real_x1 => convert_din_dout_net_x48,
      real_x2 => convert_we_dout_net_x48
    );

  be_300430d288: entity work.ab_entity_0c1a63c33c
    port map (
      a_bi => slice9_y_net_x14,
      c_di => slice28_y_net_x5,
      ce_1 => ce_1_sg_x267,
      clk_1 => clk_1_sg_x267,
      new_acc => relational1_op_net_x18,
      imag => convert_addr_dout_net_x49,
      imag_x0 => convert_din_dout_net_x49,
      imag_x1 => convert_we_dout_net_x49,
      real_x0 => convert_addr_dout_net_x50,
      real_x1 => convert_din_dout_net_x50,
      real_x2 => convert_we_dout_net_x50
    );

  bf_f8fc86d250: entity work.ab_entity_0c1a63c33c
    port map (
      a_bi => slice9_y_net_x14,
      c_di => slice29_y_net_x5,
      ce_1 => ce_1_sg_x267,
      clk_1 => clk_1_sg_x267,
      new_acc => relational1_op_net_x18,
      imag => convert_addr_dout_net_x51,
      imag_x0 => convert_din_dout_net_x51,
      imag_x1 => convert_we_dout_net_x51,
      real_x0 => convert_addr_dout_net_x52,
      real_x1 => convert_din_dout_net_x52,
      real_x2 => convert_we_dout_net_x52
    );

  cc_a27ff437ef: entity work.aa_entity_83d96afb65
    port map (
      a_bi => slice21_y_net_x14,
      ce_1 => ce_1_sg_x267,
      clk_1 => clk_1_sg_x267,
      new_acc => relational1_op_net_x18,
      real_x0 => convert_addr_dout_net_x53,
      real_x1 => convert_din_dout_net_x53,
      real_x2 => convert_we_dout_net_x53
    );

  cd_85caa3fb40: entity work.ab_entity_0c1a63c33c
    port map (
      a_bi => slice21_y_net_x14,
      c_di => slice25_y_net_x14,
      ce_1 => ce_1_sg_x267,
      clk_1 => clk_1_sg_x267,
      new_acc => relational1_op_net_x18,
      imag => convert_addr_dout_net_x54,
      imag_x0 => convert_din_dout_net_x54,
      imag_x1 => convert_we_dout_net_x54,
      real_x0 => convert_addr_dout_net_x55,
      real_x1 => convert_din_dout_net_x55,
      real_x2 => convert_we_dout_net_x55
    );

  cg_fcd2606ffe: entity work.ab_entity_0c1a63c33c
    port map (
      a_bi => slice21_y_net_x14,
      c_di => slice26_y_net_x5,
      ce_1 => ce_1_sg_x267,
      clk_1 => clk_1_sg_x267,
      new_acc => relational1_op_net_x18,
      imag => convert_addr_dout_net_x56,
      imag_x0 => convert_din_dout_net_x56,
      imag_x1 => convert_we_dout_net_x56,
      real_x0 => convert_addr_dout_net_x57,
      real_x1 => convert_din_dout_net_x57,
      real_x2 => convert_we_dout_net_x57
    );

  ch_5d2010d013: entity work.ab_entity_0c1a63c33c
    port map (
      a_bi => slice21_y_net_x14,
      c_di => slice27_y_net_x5,
      ce_1 => ce_1_sg_x267,
      clk_1 => clk_1_sg_x267,
      new_acc => relational1_op_net_x18,
      imag => convert_addr_dout_net_x58,
      imag_x0 => convert_din_dout_net_x58,
      imag_x1 => convert_we_dout_net_x58,
      real_x0 => convert_addr_dout_net_x59,
      real_x1 => convert_din_dout_net_x59,
      real_x2 => convert_we_dout_net_x59
    );

  dd_1baefba425: entity work.aa_entity_83d96afb65
    port map (
      a_bi => slice25_y_net_x14,
      ce_1 => ce_1_sg_x267,
      clk_1 => clk_1_sg_x267,
      new_acc => relational1_op_net_x18,
      real_x0 => convert_addr_dout_net_x60,
      real_x1 => convert_din_dout_net_x60,
      real_x2 => convert_we_dout_net_x60
    );

  dg_2ad32fce8b: entity work.ab_entity_0c1a63c33c
    port map (
      a_bi => slice25_y_net_x14,
      c_di => slice26_y_net_x5,
      ce_1 => ce_1_sg_x267,
      clk_1 => clk_1_sg_x267,
      new_acc => relational1_op_net_x18,
      imag => convert_addr_dout_net_x61,
      imag_x0 => convert_din_dout_net_x61,
      imag_x1 => convert_we_dout_net_x61,
      real_x0 => convert_addr_dout_net_x62,
      real_x1 => convert_din_dout_net_x62,
      real_x2 => convert_we_dout_net_x62
    );

  dh_d429c854bc: entity work.ab_entity_0c1a63c33c
    port map (
      a_bi => slice25_y_net_x14,
      c_di => slice27_y_net_x5,
      ce_1 => ce_1_sg_x267,
      clk_1 => clk_1_sg_x267,
      new_acc => relational1_op_net_x18,
      imag => convert_addr_dout_net_x63,
      imag_x0 => convert_din_dout_net_x63,
      imag_x1 => convert_we_dout_net_x63,
      real_x0 => convert_addr_dout_net_x64,
      real_x1 => convert_din_dout_net_x64,
      real_x2 => convert_we_dout_net_x64
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "rpoco8_testbench_v11"

entity rpoco8_testbench_v11 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
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
end rpoco8_testbench_v11;

architecture structural of rpoco8_testbench_v11 is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "rpoco8_testbench_v11,sysgen_core_11_5,{modelsim_hdl_co_simulation_interface_block=1,total_blocks=4450,xilinx_adder_subtracter_block=88,xilinx_addressable_shift_register_block=8,xilinx_arithmetic_relational_operator_block=63,xilinx_binary_shift_operator_block=12,xilinx_bit_slice_extractor_block=172,xilinx_bitbasher_block=5,xilinx_bitwise_expression_evaluator_block=8,xilinx_black_box_block=6,xilinx_bus_concatenator_block=30,xilinx_bus_multiplexer_block=90,xilinx_constant_block_block=234,xilinx_counter_block=108,xilinx_delay_block=134,xilinx_disregard_subsystem_for_generation_block=40,xilinx_dual_port_random_access_memory_block=12,xilinx_gateway_in_block=194,xilinx_gateway_out_block=195,xilinx_input_scaler_block=8,xilinx_inverter_block=43,xilinx_linear_feedback_shift_register_block=4,xilinx_logical_block_block=80,xilinx_multiplier_block=92,xilinx_negate_block_block=8,xilinx_register_block=9,xilinx_resource_estimator_block=19,xilinx_single_port_random_access_memory_block=74,xilinx_single_port_read_only_memory_block=22,xilinx_system_generator_block=1,xilinx_type_converter_block=210,xilinx_type_reinterpreter_block=162,}";

  signal addressable_shift_register_q_net_x16: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x17: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x18: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x19: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x20: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x21: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x22: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x23: std_logic_vector(7 downto 0);
  signal addsub_s_net: std_logic_vector(32 downto 0);
  signal bitbasher1_delay4_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher1_delay5_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher1_delay6_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher1_delay7_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher1_insel4_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher1_insel5_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher1_insel6_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher1_insel7_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher_delay0_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher_delay1_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher_delay2_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher_delay3_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher_insel0_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher_insel1_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher_insel2_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher_insel3_net_x2: std_logic_vector(1 downto 0);
  signal bitbasher_seed0_net_x5: std_logic_vector(31 downto 0);
  signal bitbasher_seed1_net_x5: std_logic_vector(31 downto 0);
  signal bitbasher_seed2_net_x5: std_logic_vector(31 downto 0);
  signal bitbasher_seed3_net_x5: std_logic_vector(31 downto 0);
  signal ce_1_sg_x268: std_logic;
  signal clk_1_sg_x268: std_logic;
  signal concat1_y_net_x0: std_logic_vector(31 downto 0);
  signal concat2_y_net_x0: std_logic_vector(31 downto 0);
  signal concat3_y_net_x0: std_logic_vector(31 downto 0);
  signal concat_y_net_x0: std_logic_vector(31 downto 0);
  signal concat_y_net_x10: std_logic_vector(15 downto 0);
  signal concat_y_net_x11: std_logic_vector(15 downto 0);
  signal concat_y_net_x12: std_logic_vector(15 downto 0);
  signal concat_y_net_x5: std_logic_vector(35 downto 0);
  signal concat_y_net_x6: std_logic_vector(35 downto 0);
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal concat_y_net_x8: std_logic_vector(35 downto 0);
  signal concat_y_net_x9: std_logic_vector(15 downto 0);
  signal constant1_op_net_x0: std_logic;
  signal constant3_op_net: std_logic_vector(26 downto 0);
  signal constant4_op_net_x0: std_logic;
  signal constant9_op_net: std_logic_vector(31 downto 0);
  signal counter1_op_net_x0: std_logic_vector(31 downto 0);
  signal counter2_op_net: std_logic_vector(31 downto 0);
  signal counter_op_net: std_logic_vector(26 downto 0);
  signal delay2_q_net_x1: std_logic;
  signal delay3_q_net: std_logic;
  signal delay4_q_net_x0: std_logic;
  signal delay4_q_net_x2: std_logic;
  signal delay_q_net: std_logic_vector(31 downto 0);
  signal delay_q_net_x0: std_logic;
  signal enable_y_net_x2: std_logic_vector(10 downto 0);
  signal fft_real_biplex_1024chout1_oflow_net: std_logic;
  signal fft_real_biplex_1024chout1_plo02_out_net_x0: std_logic_vector(35 downto 0);
  signal fft_real_biplex_1024chout1_pol13_out_net_x0: std_logic_vector(35 downto 0);
  signal fft_real_biplex_1024chout1_sync_out_net: std_logic;
  signal fft_real_biplex_1024chout_oflow_net: std_logic;
  signal fft_real_biplex_1024chout_plo02_out_net_x3: std_logic_vector(35 downto 0);
  signal fft_real_biplex_1024chout_pol13_out_net_x0: std_logic_vector(35 downto 0);
  signal fft_real_biplex_1024chout_sync_out_net_x3: std_logic;
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x2: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x4: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x2: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x4: std_logic_vector(17 downto 0);
  signal gateway_out4_net: std_logic_vector(10 downto 0);
  signal inverter_op_net: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical1_y_net_x4: std_logic;
  signal logical3_y_net_x1: std_logic;
  signal logical_y_net_x22: std_logic;
  signal mux12_y_net_x1: std_logic;
  signal mux1_y_net: std_logic;
  signal mux1_y_net_x1: std_logic_vector(7 downto 0);
  signal mux1_y_net_x17: std_logic_vector(7 downto 0);
  signal mux1_y_net_x18: std_logic_vector(7 downto 0);
  signal mux1_y_net_x19: std_logic_vector(7 downto 0);
  signal mux1_y_net_x20: std_logic_vector(7 downto 0);
  signal mux1_y_net_x21: std_logic_vector(7 downto 0);
  signal mux1_y_net_x22: std_logic_vector(7 downto 0);
  signal mux1_y_net_x23: std_logic_vector(7 downto 0);
  signal mux1_y_net_x24: std_logic_vector(7 downto 0);
  signal mux22_y_net_x1: std_logic;
  signal mux2_y_net_x0: std_logic_vector(35 downto 0);
  signal mux2_y_net_x1: std_logic_vector(7 downto 0);
  signal mux32_y_net_x1: std_logic;
  signal mux3_y_net_x0: std_logic;
  signal mux3_y_net_x1: std_logic_vector(7 downto 0);
  signal mux42_y_net_x1: std_logic;
  signal mux4_y_net_x1: std_logic_vector(7 downto 0);
  signal mux5_y_net_x1: std_logic_vector(7 downto 0);
  signal mux6_y_net_x1: std_logic_vector(7 downto 0);
  signal mux7_y_net_x1: std_logic_vector(7 downto 0);
  signal mux_y_net_x0: std_logic;
  signal mux_y_net_x1: std_logic_vector(7 downto 0);
  signal mux_y_net_x3: std_logic;
  signal mux_y_net_x4: std_logic;
  signal pfb_fir1_bb_4_tap_add_lat_1_pol1_out1_net_x0: std_logic_vector(35 downto 0);
  signal pfb_fir1_bb_4_tap_add_lat_1_sync_out_net: std_logic;
  signal pfb_fir2_bb_4_tap_add_lat_1_pol1_out1_net_x0: std_logic_vector(35 downto 0);
  signal pfb_fir2_bb_4_tap_add_lat_1_sync_out_net: std_logic;
  signal pfb_fir3_bb_4_tap_add_lat_1_pol1_out1_net_x0: std_logic_vector(35 downto 0);
  signal pfb_fir3_bb_4_tap_add_lat_1_sync_out_net: std_logic;
  signal pfb_fir_bb_4_tap_add_lat_1_pol1_out1_net_x0: std_logic_vector(35 downto 0);
  signal pfb_fir_bb_4_tap_add_lat_1_sync_out_net: std_logic;
  signal reinterpret10_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret11_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret12_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret13_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret14_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret15_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x10: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x11: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x12: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x13: std_logic_vector(7 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret3_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret4_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret5_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret6_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret7_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret8_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret9_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x10: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x11: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x12: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x13: std_logic_vector(7 downto 0);
  signal relational1_op_net_x18: std_logic;
  signal relational5_op_net_x1: std_logic;
  signal relational_op_net_x0: std_logic;
  signal rpoco8_testbench_v11_aa_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_aa_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_aa_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_aa_real_we_net: std_logic;
  signal rpoco8_testbench_v11_acc_length_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_acc_num_user_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_adc0_3_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_adc0_3_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_adc0_3_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_adc0_3_we_net: std_logic;
  signal rpoco8_testbench_v11_adc4_7_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_adc4_7_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_adc4_7_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_adc4_7_we_net: std_logic;
  signal rpoco8_testbench_v11_adc_s_quadc0_adc0_data_net: std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_adc_s_quadc0_adc1_data_net: std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_adc_s_quadc0_adc2_data_net: std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_adc_s_quadc0_adc3_data_net: std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_adc_s_quadc0_sync_net: std_logic;
  signal rpoco8_testbench_v11_adc_s_quadc0_valid_net: std_logic;
  signal rpoco8_testbench_v11_adc_s_quadc1_adc0_data_net: std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_adc_s_quadc1_adc1_data_net: std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_adc_s_quadc1_adc2_data_net: std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_adc_s_quadc1_adc3_data_net: std_logic_vector(7 downto 0);
  signal rpoco8_testbench_v11_adc_s_quadc1_sync_net: std_logic;
  signal rpoco8_testbench_v11_adc_s_quadc1_valid_net: std_logic;
  signal rpoco8_testbench_v11_ctrl_sw_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_delay_delay_data_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_eq_coeff_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_fft_pol02_imag_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_fft_pol02_imag_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_fft_pol02_imag_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_fft_pol02_imag_we_net: std_logic;
  signal rpoco8_testbench_v11_fft_pol02_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_fft_pol02_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_fft_pol02_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_fft_pol02_real_we_net: std_logic;
  signal rpoco8_testbench_v11_iadc0_3_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_iadc0_3_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_iadc0_3_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_iadc0_3_we_net: std_logic;
  signal rpoco8_testbench_v11_iadc4_7_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_iadc4_7_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_iadc4_7_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_iadc4_7_we_net: std_logic;
  signal rpoco8_testbench_v11_insel_insel_data_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_led_gateway_net: std_logic;
  signal rpoco8_testbench_v11_mux_sel_pfb_sync_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_mux_sel_pfb_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_new_raw_capture_trig_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_new_raw_capture_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay1_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay2_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay3_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay4_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay5_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay6_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay7_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_not_or_not_delay8_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_seed_seed_data_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_sync_arm_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_sync_sync_pulse_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_sync_sync_sel_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_walsh_codes_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_walsh_codes_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_walsh_codes_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_walsh_codes_we_net: std_logic;
  signal rpoco8_testbench_v11_walsh_trig_sel_user_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_walsh_walsh1_gateway_net: std_logic;
  signal rpoco8_testbench_v11_walsh_walsh2_gateway_net: std_logic;
  signal rpoco8_testbench_v11_walsh_walsh3_gateway_net: std_logic;
  signal rpoco8_testbench_v11_walsh_walsh4_gateway_net: std_logic;
  signal rpoco8_testbench_v11_walsh_walsh5_gateway_net: std_logic;
  signal rpoco8_testbench_v11_walsh_walsh6_gateway_net: std_logic;
  signal rpoco8_testbench_v11_walsh_walsh7_gateway_net: std_logic;
  signal rpoco8_testbench_v11_walsh_walsh8_gateway_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_aa_real_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_imag_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ab_real_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_imag_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ac_real_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_imag_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ad_real_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_imag_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ae_real_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_af_imag_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_af_real_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bb_real_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_imag_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bc_real_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_imag_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bd_real_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_be_imag_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_be_real_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_imag_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_bf_real_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cc_real_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_imag_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cd_real_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_imag_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_cg_real_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_imag_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_ch_real_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dd_real_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_imag_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dg_real_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_imag_we_net: std_logic;
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_addr_net: std_logic_vector(10 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_data_in_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_data_out_net: std_logic_vector(31 downto 0);
  signal rpoco8_testbench_v11_xengine8_muxed_dh_real_we_net: std_logic;
  signal slice10_y_net_x0: std_logic;
  signal slice10_y_net_x3: std_logic;
  signal slice18_y_net: std_logic_vector(15 downto 0);
  signal slice1_y_net_x1: std_logic_vector(1 downto 0);
  signal slice21_y_net_x14: std_logic_vector(35 downto 0);
  signal slice22_y_net_x2: std_logic;
  signal slice25_y_net_x14: std_logic_vector(35 downto 0);
  signal slice26_y_net_x5: std_logic_vector(35 downto 0);
  signal slice27_y_net_x5: std_logic_vector(35 downto 0);
  signal slice28_y_net_x5: std_logic_vector(35 downto 0);
  signal slice29_y_net_x5: std_logic_vector(35 downto 0);
  signal slice2_y_net_x1: std_logic;
  signal slice3_y_net_x3: std_logic;
  signal slice4_y_net_x3: std_logic_vector(5 downto 0);
  signal slice4_y_net_x4: std_logic;
  signal slice5_y_net: std_logic;
  signal slice5_y_net_x3: std_logic;
  signal slice6_y_net: std_logic;
  signal slice6_y_net_x3: std_logic;
  signal slice7_y_net_x3: std_logic;
  signal slice8_y_net: std_logic_vector(1 downto 0);
  signal slice8_y_net_x14: std_logic_vector(35 downto 0);
  signal slice8_y_net_x3: std_logic;
  signal slice9_y_net: std_logic_vector(1 downto 0);
  signal slice9_y_net_x14: std_logic_vector(35 downto 0);
  signal slice9_y_net_x3: std_logic;
  signal slice_y_net_x4: std_logic_vector(16 downto 0);

begin
  ce_1_sg_x268 <= ce_1;
  clk_1_sg_x268 <= clk_1;
  rpoco8_testbench_v11_aa_real_data_out_net <= rpoco8_testbench_v11_aa_real_data_out;
  rpoco8_testbench_v11_acc_length_user_data_out_net <= rpoco8_testbench_v11_acc_length_user_data_out;
  rpoco8_testbench_v11_adc0_3_data_out_net <= rpoco8_testbench_v11_adc0_3_data_out;
  rpoco8_testbench_v11_adc4_7_data_out_net <= rpoco8_testbench_v11_adc4_7_data_out;
  rpoco8_testbench_v11_adc_s_quadc0_adc0_data_net <= rpoco8_testbench_v11_adc_s_quadc0_adc0_data;
  rpoco8_testbench_v11_adc_s_quadc0_adc1_data_net <= rpoco8_testbench_v11_adc_s_quadc0_adc1_data;
  rpoco8_testbench_v11_adc_s_quadc0_adc2_data_net <= rpoco8_testbench_v11_adc_s_quadc0_adc2_data;
  rpoco8_testbench_v11_adc_s_quadc0_adc3_data_net <= rpoco8_testbench_v11_adc_s_quadc0_adc3_data;
  rpoco8_testbench_v11_adc_s_quadc0_sync_net <= rpoco8_testbench_v11_adc_s_quadc0_sync;
  rpoco8_testbench_v11_adc_s_quadc0_valid_net <= rpoco8_testbench_v11_adc_s_quadc0_valid;
  rpoco8_testbench_v11_adc_s_quadc1_adc0_data_net <= rpoco8_testbench_v11_adc_s_quadc1_adc0_data;
  rpoco8_testbench_v11_adc_s_quadc1_adc1_data_net <= rpoco8_testbench_v11_adc_s_quadc1_adc1_data;
  rpoco8_testbench_v11_adc_s_quadc1_adc2_data_net <= rpoco8_testbench_v11_adc_s_quadc1_adc2_data;
  rpoco8_testbench_v11_adc_s_quadc1_adc3_data_net <= rpoco8_testbench_v11_adc_s_quadc1_adc3_data;
  rpoco8_testbench_v11_adc_s_quadc1_sync_net <= rpoco8_testbench_v11_adc_s_quadc1_sync;
  rpoco8_testbench_v11_adc_s_quadc1_valid_net <= rpoco8_testbench_v11_adc_s_quadc1_valid;
  rpoco8_testbench_v11_ctrl_sw_user_data_out_net <= rpoco8_testbench_v11_ctrl_sw_user_data_out;
  rpoco8_testbench_v11_delay_delay_data_user_data_out_net <= rpoco8_testbench_v11_delay_delay_data_user_data_out;
  rpoco8_testbench_v11_eq_coeff_user_data_out_net <= rpoco8_testbench_v11_eq_coeff_user_data_out;
  rpoco8_testbench_v11_fft_pol02_imag_data_out_net <= rpoco8_testbench_v11_fft_pol02_imag_data_out;
  rpoco8_testbench_v11_fft_pol02_real_data_out_net <= rpoco8_testbench_v11_fft_pol02_real_data_out;
  rpoco8_testbench_v11_iadc0_3_data_out_net <= rpoco8_testbench_v11_iadc0_3_data_out;
  rpoco8_testbench_v11_iadc4_7_data_out_net <= rpoco8_testbench_v11_iadc4_7_data_out;
  rpoco8_testbench_v11_insel_insel_data_user_data_out_net <= rpoco8_testbench_v11_insel_insel_data_user_data_out;
  rpoco8_testbench_v11_mux_sel_pfb_sync_user_data_out_net <= rpoco8_testbench_v11_mux_sel_pfb_sync_user_data_out;
  rpoco8_testbench_v11_mux_sel_pfb_user_data_out_net <= rpoco8_testbench_v11_mux_sel_pfb_user_data_out;
  rpoco8_testbench_v11_new_raw_capture_trig_user_data_out_net <= rpoco8_testbench_v11_new_raw_capture_trig_user_data_out;
  rpoco8_testbench_v11_new_raw_capture_user_data_out_net <= rpoco8_testbench_v11_new_raw_capture_user_data_out;
  rpoco8_testbench_v11_not_or_not_delay1_user_data_out_net <= rpoco8_testbench_v11_not_or_not_delay1_user_data_out;
  rpoco8_testbench_v11_not_or_not_delay2_user_data_out_net <= rpoco8_testbench_v11_not_or_not_delay2_user_data_out;
  rpoco8_testbench_v11_not_or_not_delay3_user_data_out_net <= rpoco8_testbench_v11_not_or_not_delay3_user_data_out;
  rpoco8_testbench_v11_not_or_not_delay4_user_data_out_net <= rpoco8_testbench_v11_not_or_not_delay4_user_data_out;
  rpoco8_testbench_v11_not_or_not_delay5_user_data_out_net <= rpoco8_testbench_v11_not_or_not_delay5_user_data_out;
  rpoco8_testbench_v11_not_or_not_delay6_user_data_out_net <= rpoco8_testbench_v11_not_or_not_delay6_user_data_out;
  rpoco8_testbench_v11_not_or_not_delay7_user_data_out_net <= rpoco8_testbench_v11_not_or_not_delay7_user_data_out;
  rpoco8_testbench_v11_not_or_not_delay8_user_data_out_net <= rpoco8_testbench_v11_not_or_not_delay8_user_data_out;
  rpoco8_testbench_v11_seed_seed_data_user_data_out_net <= rpoco8_testbench_v11_seed_seed_data_user_data_out;
  rpoco8_testbench_v11_sync_arm_user_data_out_net <= rpoco8_testbench_v11_sync_arm_user_data_out;
  rpoco8_testbench_v11_sync_sync_pulse_user_data_out_net <= rpoco8_testbench_v11_sync_sync_pulse_user_data_out;
  rpoco8_testbench_v11_sync_sync_sel_user_data_out_net <= rpoco8_testbench_v11_sync_sync_sel_user_data_out;
  rpoco8_testbench_v11_walsh_codes_data_out_net <= rpoco8_testbench_v11_walsh_codes_data_out;
  rpoco8_testbench_v11_walsh_trig_sel_user_data_out_net <= rpoco8_testbench_v11_walsh_trig_sel_user_data_out;
  rpoco8_testbench_v11_xengine8_muxed_aa_real_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_aa_real_data_out;
  rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_out;
  rpoco8_testbench_v11_xengine8_muxed_ab_real_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_ab_real_data_out;
  rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_out;
  rpoco8_testbench_v11_xengine8_muxed_ac_real_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_ac_real_data_out;
  rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_out;
  rpoco8_testbench_v11_xengine8_muxed_ad_real_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_ad_real_data_out;
  rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_out;
  rpoco8_testbench_v11_xengine8_muxed_ae_real_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_ae_real_data_out;
  rpoco8_testbench_v11_xengine8_muxed_af_imag_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_af_imag_data_out;
  rpoco8_testbench_v11_xengine8_muxed_af_real_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_af_real_data_out;
  rpoco8_testbench_v11_xengine8_muxed_bb_real_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_bb_real_data_out;
  rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_out;
  rpoco8_testbench_v11_xengine8_muxed_bc_real_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_bc_real_data_out;
  rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_out;
  rpoco8_testbench_v11_xengine8_muxed_bd_real_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_bd_real_data_out;
  rpoco8_testbench_v11_xengine8_muxed_be_imag_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_be_imag_data_out;
  rpoco8_testbench_v11_xengine8_muxed_be_real_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_be_real_data_out;
  rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_out;
  rpoco8_testbench_v11_xengine8_muxed_bf_real_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_bf_real_data_out;
  rpoco8_testbench_v11_xengine8_muxed_cc_real_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_cc_real_data_out;
  rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_out;
  rpoco8_testbench_v11_xengine8_muxed_cd_real_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_cd_real_data_out;
  rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_out;
  rpoco8_testbench_v11_xengine8_muxed_cg_real_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_cg_real_data_out;
  rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_out;
  rpoco8_testbench_v11_xengine8_muxed_ch_real_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_ch_real_data_out;
  rpoco8_testbench_v11_xengine8_muxed_dd_real_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_dd_real_data_out;
  rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_out;
  rpoco8_testbench_v11_xengine8_muxed_dg_real_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_dg_real_data_out;
  rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_out;
  rpoco8_testbench_v11_xengine8_muxed_dh_real_data_out_net <= rpoco8_testbench_v11_xengine8_muxed_dh_real_data_out;
  gateway_out4 <= gateway_out4_net;
  rpoco8_testbench_v11_aa_real_addr <= rpoco8_testbench_v11_aa_real_addr_net;
  rpoco8_testbench_v11_aa_real_data_in <= rpoco8_testbench_v11_aa_real_data_in_net;
  rpoco8_testbench_v11_aa_real_we <= rpoco8_testbench_v11_aa_real_we_net;
  rpoco8_testbench_v11_acc_num_user_data_in <= rpoco8_testbench_v11_acc_num_user_data_in_net;
  rpoco8_testbench_v11_adc0_3_addr <= rpoco8_testbench_v11_adc0_3_addr_net;
  rpoco8_testbench_v11_adc0_3_data_in <= rpoco8_testbench_v11_adc0_3_data_in_net;
  rpoco8_testbench_v11_adc0_3_we <= rpoco8_testbench_v11_adc0_3_we_net;
  rpoco8_testbench_v11_adc4_7_addr <= rpoco8_testbench_v11_adc4_7_addr_net;
  rpoco8_testbench_v11_adc4_7_data_in <= rpoco8_testbench_v11_adc4_7_data_in_net;
  rpoco8_testbench_v11_adc4_7_we <= rpoco8_testbench_v11_adc4_7_we_net;
  rpoco8_testbench_v11_fft_pol02_imag_addr <= rpoco8_testbench_v11_fft_pol02_imag_addr_net;
  rpoco8_testbench_v11_fft_pol02_imag_data_in <= rpoco8_testbench_v11_fft_pol02_imag_data_in_net;
  rpoco8_testbench_v11_fft_pol02_imag_we <= rpoco8_testbench_v11_fft_pol02_imag_we_net;
  rpoco8_testbench_v11_fft_pol02_real_addr <= rpoco8_testbench_v11_fft_pol02_real_addr_net;
  rpoco8_testbench_v11_fft_pol02_real_data_in <= rpoco8_testbench_v11_fft_pol02_real_data_in_net;
  rpoco8_testbench_v11_fft_pol02_real_we <= rpoco8_testbench_v11_fft_pol02_real_we_net;
  rpoco8_testbench_v11_iadc0_3_addr <= rpoco8_testbench_v11_iadc0_3_addr_net;
  rpoco8_testbench_v11_iadc0_3_data_in <= rpoco8_testbench_v11_iadc0_3_data_in_net;
  rpoco8_testbench_v11_iadc0_3_we <= rpoco8_testbench_v11_iadc0_3_we_net;
  rpoco8_testbench_v11_iadc4_7_addr <= rpoco8_testbench_v11_iadc4_7_addr_net;
  rpoco8_testbench_v11_iadc4_7_data_in <= rpoco8_testbench_v11_iadc4_7_data_in_net;
  rpoco8_testbench_v11_iadc4_7_we <= rpoco8_testbench_v11_iadc4_7_we_net;
  rpoco8_testbench_v11_led_gateway <= rpoco8_testbench_v11_led_gateway_net;
  rpoco8_testbench_v11_walsh_codes_addr <= rpoco8_testbench_v11_walsh_codes_addr_net;
  rpoco8_testbench_v11_walsh_codes_data_in <= rpoco8_testbench_v11_walsh_codes_data_in_net;
  rpoco8_testbench_v11_walsh_codes_we <= rpoco8_testbench_v11_walsh_codes_we_net;
  rpoco8_testbench_v11_walsh_walsh1_gateway <= rpoco8_testbench_v11_walsh_walsh1_gateway_net;
  rpoco8_testbench_v11_walsh_walsh2_gateway <= rpoco8_testbench_v11_walsh_walsh2_gateway_net;
  rpoco8_testbench_v11_walsh_walsh3_gateway <= rpoco8_testbench_v11_walsh_walsh3_gateway_net;
  rpoco8_testbench_v11_walsh_walsh4_gateway <= rpoco8_testbench_v11_walsh_walsh4_gateway_net;
  rpoco8_testbench_v11_walsh_walsh5_gateway <= rpoco8_testbench_v11_walsh_walsh5_gateway_net;
  rpoco8_testbench_v11_walsh_walsh6_gateway <= rpoco8_testbench_v11_walsh_walsh6_gateway_net;
  rpoco8_testbench_v11_walsh_walsh7_gateway <= rpoco8_testbench_v11_walsh_walsh7_gateway_net;
  rpoco8_testbench_v11_walsh_walsh8_gateway <= rpoco8_testbench_v11_walsh_walsh8_gateway_net;
  rpoco8_testbench_v11_xengine8_muxed_aa_real_addr <= rpoco8_testbench_v11_xengine8_muxed_aa_real_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_aa_real_data_in <= rpoco8_testbench_v11_xengine8_muxed_aa_real_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_aa_real_we <= rpoco8_testbench_v11_xengine8_muxed_aa_real_we_net;
  rpoco8_testbench_v11_xengine8_muxed_ab_imag_addr <= rpoco8_testbench_v11_xengine8_muxed_ab_imag_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_in <= rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_ab_imag_we <= rpoco8_testbench_v11_xengine8_muxed_ab_imag_we_net;
  rpoco8_testbench_v11_xengine8_muxed_ab_real_addr <= rpoco8_testbench_v11_xengine8_muxed_ab_real_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_ab_real_data_in <= rpoco8_testbench_v11_xengine8_muxed_ab_real_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_ab_real_we <= rpoco8_testbench_v11_xengine8_muxed_ab_real_we_net;
  rpoco8_testbench_v11_xengine8_muxed_ac_imag_addr <= rpoco8_testbench_v11_xengine8_muxed_ac_imag_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_in <= rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_ac_imag_we <= rpoco8_testbench_v11_xengine8_muxed_ac_imag_we_net;
  rpoco8_testbench_v11_xengine8_muxed_ac_real_addr <= rpoco8_testbench_v11_xengine8_muxed_ac_real_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_ac_real_data_in <= rpoco8_testbench_v11_xengine8_muxed_ac_real_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_ac_real_we <= rpoco8_testbench_v11_xengine8_muxed_ac_real_we_net;
  rpoco8_testbench_v11_xengine8_muxed_ad_imag_addr <= rpoco8_testbench_v11_xengine8_muxed_ad_imag_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_in <= rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_ad_imag_we <= rpoco8_testbench_v11_xengine8_muxed_ad_imag_we_net;
  rpoco8_testbench_v11_xengine8_muxed_ad_real_addr <= rpoco8_testbench_v11_xengine8_muxed_ad_real_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_ad_real_data_in <= rpoco8_testbench_v11_xengine8_muxed_ad_real_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_ad_real_we <= rpoco8_testbench_v11_xengine8_muxed_ad_real_we_net;
  rpoco8_testbench_v11_xengine8_muxed_ae_imag_addr <= rpoco8_testbench_v11_xengine8_muxed_ae_imag_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_in <= rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_ae_imag_we <= rpoco8_testbench_v11_xengine8_muxed_ae_imag_we_net;
  rpoco8_testbench_v11_xengine8_muxed_ae_real_addr <= rpoco8_testbench_v11_xengine8_muxed_ae_real_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_ae_real_data_in <= rpoco8_testbench_v11_xengine8_muxed_ae_real_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_ae_real_we <= rpoco8_testbench_v11_xengine8_muxed_ae_real_we_net;
  rpoco8_testbench_v11_xengine8_muxed_af_imag_addr <= rpoco8_testbench_v11_xengine8_muxed_af_imag_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_af_imag_data_in <= rpoco8_testbench_v11_xengine8_muxed_af_imag_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_af_imag_we <= rpoco8_testbench_v11_xengine8_muxed_af_imag_we_net;
  rpoco8_testbench_v11_xengine8_muxed_af_real_addr <= rpoco8_testbench_v11_xengine8_muxed_af_real_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_af_real_data_in <= rpoco8_testbench_v11_xengine8_muxed_af_real_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_af_real_we <= rpoco8_testbench_v11_xengine8_muxed_af_real_we_net;
  rpoco8_testbench_v11_xengine8_muxed_bb_real_addr <= rpoco8_testbench_v11_xengine8_muxed_bb_real_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_bb_real_data_in <= rpoco8_testbench_v11_xengine8_muxed_bb_real_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_bb_real_we <= rpoco8_testbench_v11_xengine8_muxed_bb_real_we_net;
  rpoco8_testbench_v11_xengine8_muxed_bc_imag_addr <= rpoco8_testbench_v11_xengine8_muxed_bc_imag_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_in <= rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_bc_imag_we <= rpoco8_testbench_v11_xengine8_muxed_bc_imag_we_net;
  rpoco8_testbench_v11_xengine8_muxed_bc_real_addr <= rpoco8_testbench_v11_xengine8_muxed_bc_real_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_bc_real_data_in <= rpoco8_testbench_v11_xengine8_muxed_bc_real_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_bc_real_we <= rpoco8_testbench_v11_xengine8_muxed_bc_real_we_net;
  rpoco8_testbench_v11_xengine8_muxed_bd_imag_addr <= rpoco8_testbench_v11_xengine8_muxed_bd_imag_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_in <= rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_bd_imag_we <= rpoco8_testbench_v11_xengine8_muxed_bd_imag_we_net;
  rpoco8_testbench_v11_xengine8_muxed_bd_real_addr <= rpoco8_testbench_v11_xengine8_muxed_bd_real_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_bd_real_data_in <= rpoco8_testbench_v11_xengine8_muxed_bd_real_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_bd_real_we <= rpoco8_testbench_v11_xengine8_muxed_bd_real_we_net;
  rpoco8_testbench_v11_xengine8_muxed_be_imag_addr <= rpoco8_testbench_v11_xengine8_muxed_be_imag_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_be_imag_data_in <= rpoco8_testbench_v11_xengine8_muxed_be_imag_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_be_imag_we <= rpoco8_testbench_v11_xengine8_muxed_be_imag_we_net;
  rpoco8_testbench_v11_xengine8_muxed_be_real_addr <= rpoco8_testbench_v11_xengine8_muxed_be_real_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_be_real_data_in <= rpoco8_testbench_v11_xengine8_muxed_be_real_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_be_real_we <= rpoco8_testbench_v11_xengine8_muxed_be_real_we_net;
  rpoco8_testbench_v11_xengine8_muxed_bf_imag_addr <= rpoco8_testbench_v11_xengine8_muxed_bf_imag_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_in <= rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_bf_imag_we <= rpoco8_testbench_v11_xengine8_muxed_bf_imag_we_net;
  rpoco8_testbench_v11_xengine8_muxed_bf_real_addr <= rpoco8_testbench_v11_xengine8_muxed_bf_real_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_bf_real_data_in <= rpoco8_testbench_v11_xengine8_muxed_bf_real_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_bf_real_we <= rpoco8_testbench_v11_xengine8_muxed_bf_real_we_net;
  rpoco8_testbench_v11_xengine8_muxed_cc_real_addr <= rpoco8_testbench_v11_xengine8_muxed_cc_real_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_cc_real_data_in <= rpoco8_testbench_v11_xengine8_muxed_cc_real_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_cc_real_we <= rpoco8_testbench_v11_xengine8_muxed_cc_real_we_net;
  rpoco8_testbench_v11_xengine8_muxed_cd_imag_addr <= rpoco8_testbench_v11_xengine8_muxed_cd_imag_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_in <= rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_cd_imag_we <= rpoco8_testbench_v11_xengine8_muxed_cd_imag_we_net;
  rpoco8_testbench_v11_xengine8_muxed_cd_real_addr <= rpoco8_testbench_v11_xengine8_muxed_cd_real_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_cd_real_data_in <= rpoco8_testbench_v11_xengine8_muxed_cd_real_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_cd_real_we <= rpoco8_testbench_v11_xengine8_muxed_cd_real_we_net;
  rpoco8_testbench_v11_xengine8_muxed_cg_imag_addr <= rpoco8_testbench_v11_xengine8_muxed_cg_imag_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_in <= rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_cg_imag_we <= rpoco8_testbench_v11_xengine8_muxed_cg_imag_we_net;
  rpoco8_testbench_v11_xengine8_muxed_cg_real_addr <= rpoco8_testbench_v11_xengine8_muxed_cg_real_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_cg_real_data_in <= rpoco8_testbench_v11_xengine8_muxed_cg_real_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_cg_real_we <= rpoco8_testbench_v11_xengine8_muxed_cg_real_we_net;
  rpoco8_testbench_v11_xengine8_muxed_ch_imag_addr <= rpoco8_testbench_v11_xengine8_muxed_ch_imag_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_in <= rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_ch_imag_we <= rpoco8_testbench_v11_xengine8_muxed_ch_imag_we_net;
  rpoco8_testbench_v11_xengine8_muxed_ch_real_addr <= rpoco8_testbench_v11_xengine8_muxed_ch_real_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_ch_real_data_in <= rpoco8_testbench_v11_xengine8_muxed_ch_real_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_ch_real_we <= rpoco8_testbench_v11_xengine8_muxed_ch_real_we_net;
  rpoco8_testbench_v11_xengine8_muxed_dd_real_addr <= rpoco8_testbench_v11_xengine8_muxed_dd_real_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_dd_real_data_in <= rpoco8_testbench_v11_xengine8_muxed_dd_real_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_dd_real_we <= rpoco8_testbench_v11_xengine8_muxed_dd_real_we_net;
  rpoco8_testbench_v11_xengine8_muxed_dg_imag_addr <= rpoco8_testbench_v11_xengine8_muxed_dg_imag_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_in <= rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_dg_imag_we <= rpoco8_testbench_v11_xengine8_muxed_dg_imag_we_net;
  rpoco8_testbench_v11_xengine8_muxed_dg_real_addr <= rpoco8_testbench_v11_xengine8_muxed_dg_real_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_dg_real_data_in <= rpoco8_testbench_v11_xengine8_muxed_dg_real_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_dg_real_we <= rpoco8_testbench_v11_xengine8_muxed_dg_real_we_net;
  rpoco8_testbench_v11_xengine8_muxed_dh_imag_addr <= rpoco8_testbench_v11_xengine8_muxed_dh_imag_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_in <= rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_dh_imag_we <= rpoco8_testbench_v11_xengine8_muxed_dh_imag_we_net;
  rpoco8_testbench_v11_xengine8_muxed_dh_real_addr <= rpoco8_testbench_v11_xengine8_muxed_dh_real_addr_net;
  rpoco8_testbench_v11_xengine8_muxed_dh_real_data_in <= rpoco8_testbench_v11_xengine8_muxed_dh_real_data_in_net;
  rpoco8_testbench_v11_xengine8_muxed_dh_real_we <= rpoco8_testbench_v11_xengine8_muxed_dh_real_we_net;

  aa_1973c2cd86: entity work.aa_entity_1973c2cd86
    port map (
      a_bi => fft_real_biplex_1024chout_plo02_out_net_x3,
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      new_acc => relational_op_net_x0,
      real_x0 => rpoco8_testbench_v11_aa_real_addr_net,
      real_x1 => rpoco8_testbench_v11_aa_real_data_in_net,
      real_x2 => rpoco8_testbench_v11_aa_real_we_net
    );

  acc_num_fa3a1745e9: entity work.acc_num_entity_fa3a1745e9
    port map (
      reg_out => counter1_op_net_x0,
      convert_x0 => rpoco8_testbench_v11_acc_num_user_data_in_net
    );

  adc0_3_7e8f06c2ce: entity work.adc0_3_entity_7e8f06c2ce
    port map (
      addr => gateway_out4_net,
      data_in => concat_y_net_x0,
      we => logical1_y_net_x4,
      convert_addr_x0 => rpoco8_testbench_v11_adc0_3_addr_net,
      convert_din_x0 => rpoco8_testbench_v11_adc0_3_data_in_net,
      convert_we_x0 => rpoco8_testbench_v11_adc0_3_we_net
    );

  adc4_7_552dec9b40: entity work.adc0_3_entity_7e8f06c2ce
    port map (
      addr => gateway_out4_net,
      data_in => concat1_y_net_x0,
      we => logical1_y_net_x4,
      convert_addr_x0 => rpoco8_testbench_v11_adc4_7_addr_net,
      convert_din_x0 => rpoco8_testbench_v11_adc4_7_data_in_net,
      convert_we_x0 => rpoco8_testbench_v11_adc4_7_we_net
    );

  adc_s_e3597423e7: entity work.adc_s_entity_e3597423e7
    port map (
      rpoco8_testbench_v11_adc_s_quadc0_adc0_data => rpoco8_testbench_v11_adc_s_quadc0_adc0_data_net,
      rpoco8_testbench_v11_adc_s_quadc0_adc1_data => rpoco8_testbench_v11_adc_s_quadc0_adc1_data_net,
      rpoco8_testbench_v11_adc_s_quadc0_adc2_data => rpoco8_testbench_v11_adc_s_quadc0_adc2_data_net,
      rpoco8_testbench_v11_adc_s_quadc0_adc3_data => rpoco8_testbench_v11_adc_s_quadc0_adc3_data_net,
      rpoco8_testbench_v11_adc_s_quadc1_adc0_data => rpoco8_testbench_v11_adc_s_quadc1_adc0_data_net,
      rpoco8_testbench_v11_adc_s_quadc1_adc1_data => rpoco8_testbench_v11_adc_s_quadc1_adc1_data_net,
      rpoco8_testbench_v11_adc_s_quadc1_adc2_data => rpoco8_testbench_v11_adc_s_quadc1_adc2_data_net,
      rpoco8_testbench_v11_adc_s_quadc1_adc3_data => rpoco8_testbench_v11_adc_s_quadc1_adc3_data_net,
      adc0 => mux1_y_net_x17,
      adc1 => mux1_y_net_x18,
      adc2 => mux1_y_net_x19,
      adc3 => mux1_y_net_x20,
      adc4 => mux1_y_net_x21,
      adc5 => mux1_y_net_x22,
      adc6 => mux1_y_net_x23,
      adc7 => mux1_y_net_x24
    );

  addsub: entity work.xladdsub
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 32,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 32,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 33,
      core_name0 => "addsb_11_0_99837fc802519273",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 33,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 33
    )
    port map (
      a => rpoco8_testbench_v11_acc_length_user_data_out_net,
      b => constant9_op_net,
      ce => ce_1_sg_x268,
      clk => clk_1_sg_x268,
      clr => '0',
      en => "1",
      s => addsub_s_net
    );

  barrel_switcher_8e86ad8b2b: entity work.barrel_switcher_entity_8e86ad8b2b
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      in1 => slice2_y_net_x1,
      in2 => constant4_op_net_x0,
      sel => slice1_y_net_x1,
      out1 => mux12_y_net_x1,
      out2 => mux22_y_net_x1,
      out3 => mux32_y_net_x1,
      out4 => mux42_y_net_x1
    );

  c_to_ri1_8bde2e6ac9: entity work.c_to_ri_entity_73baf3c539
    port map (
      c => pfb_fir1_bb_4_tap_add_lat_1_pol1_out1_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  c_to_ri2_82cc3c85eb: entity work.c_to_ri_entity_73baf3c539
    port map (
      c => pfb_fir2_bb_4_tap_add_lat_1_pol1_out1_net_x0,
      im => force_im_output_port_net_x2,
      re => force_re_output_port_net_x2
    );

  c_to_ri3_7a3f81c616: entity work.c_to_ri_entity_73baf3c539
    port map (
      c => pfb_fir3_bb_4_tap_add_lat_1_pol1_out1_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri4_e26b08a0d1: entity work.c_to_ri_entity_73baf3c539
    port map (
      c => mux2_y_net_x0,
      im => force_im_output_port_net_x4,
      re => force_re_output_port_net_x4
    );

  c_to_ri_0d10624bcf: entity work.c_to_ri_entity_73baf3c539
    port map (
      c => pfb_fir_bb_4_tap_add_lat_1_pol1_out1_net_x0,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  concat: entity work.concat_a1e126f11c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret_output_port_net,
      in1 => reinterpret1_output_port_net,
      in2 => reinterpret2_output_port_net,
      in3 => reinterpret3_output_port_net,
      y => concat_y_net_x0
    );

  concat1: entity work.concat_a1e126f11c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret4_output_port_net,
      in1 => reinterpret5_output_port_net,
      in2 => reinterpret6_output_port_net,
      in3 => reinterpret7_output_port_net,
      y => concat1_y_net_x0
    );

  concat2: entity work.concat_a1e126f11c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret8_output_port_net,
      in1 => reinterpret9_output_port_net,
      in2 => reinterpret10_output_port_net,
      in3 => reinterpret11_output_port_net,
      y => concat2_y_net_x0
    );

  concat3: entity work.concat_a1e126f11c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret12_output_port_net,
      in1 => reinterpret13_output_port_net,
      in2 => reinterpret14_output_port_net,
      in3 => reinterpret15_output_port_net,
      y => concat3_y_net_x0
    );

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net_x0
    );

  constant3: entity work.constant_b895d092a0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  constant4: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant4_op_net_x0
    );

  constant9: entity work.constant_ebdfb0074f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant9_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_f233f255cb1ca263",
      op_arith => xlUnsigned,
      op_width => 27
    )
    port map (
      ce => ce_1_sg_x268,
      clk => clk_1_sg_x268,
      clr => '0',
      en => "1",
      rst(0) => fft_real_biplex_1024chout_sync_out_net_x3,
      op => counter_op_net
    );

  counter1: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_87d335e994d59139",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x268,
      clk => clk_1_sg_x268,
      clr => '0',
      en(0) => delay3_q_net,
      rst => "0",
      op => counter1_op_net_x0
    );

  counter2: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_87d335e994d59139",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x268,
      clk => clk_1_sg_x268,
      clr => '0',
      en => "1",
      rst(0) => mux1_y_net,
      op => counter2_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x268,
      clk => clk_1_sg_x268,
      d => rpoco8_testbench_v11_ctrl_sw_user_data_out_net,
      en => '1',
      q => delay_q_net
    );

  delay2: entity work.delay_c53de546ea
    port map (
      ce => ce_1_sg_x268,
      clk => clk_1_sg_x268,
      clr => '0',
      d(0) => delay3_q_net,
      q(0) => delay2_q_net_x1
    );

  delay3: entity work.delay_c53de546ea
    port map (
      ce => ce_1_sg_x268,
      clk => clk_1_sg_x268,
      clr => '0',
      d(0) => relational1_op_net_x18,
      q(0) => delay3_q_net
    );

  delay_676f70a8c2: entity work.delay_entity_676f70a8c2
    port map (
      rpoco8_testbench_v11_delay_delay_data_user_data_out => rpoco8_testbench_v11_delay_delay_data_user_data_out_net,
      delay0 => bitbasher_delay0_net_x2,
      delay1 => bitbasher_delay1_net_x2,
      delay2 => bitbasher_delay2_net_x2,
      delay3 => bitbasher_delay3_net_x2,
      delay4 => bitbasher1_delay4_net_x2,
      delay5 => bitbasher1_delay5_net_x2,
      delay6 => bitbasher1_delay6_net_x2,
      delay7 => bitbasher1_delay7_net_x2
    );

  edge_c43d5671fa: entity work.edge_entity_c43d5671fa
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      in_x0 => slice10_y_net_x0,
      out_x0 => logical3_y_net_x1
    );

  eq_fft0_a3cb66ad46: entity work.eq_fft0_entity_a3cb66ad46
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      coeff => slice_y_net_x4,
      coeff_addr => slice4_y_net_x3,
      coeff_we => mux12_y_net_x1,
      pol1 => fft_real_biplex_1024chout_plo02_out_net_x3,
      sync => fft_real_biplex_1024chout_sync_out_net_x3,
      dout => concat_y_net_x5,
      sync_out => delay4_q_net_x2
    );

  eq_fft1_2fb49e7f53: entity work.eq_fft1_entity_2fb49e7f53
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      coeff => slice_y_net_x4,
      coeff_addr => slice4_y_net_x3,
      coeff_we => mux22_y_net_x1,
      pol1 => fft_real_biplex_1024chout_pol13_out_net_x0,
      sync => fft_real_biplex_1024chout_sync_out_net_x3,
      dout => concat_y_net_x6
    );

  eq_fft2_14a605f9da: entity work.eq_fft1_entity_2fb49e7f53
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      coeff => slice_y_net_x4,
      coeff_addr => slice4_y_net_x3,
      coeff_we => mux32_y_net_x1,
      pol1 => fft_real_biplex_1024chout1_plo02_out_net_x0,
      sync => fft_real_biplex_1024chout_sync_out_net_x3,
      dout => concat_y_net_x7
    );

  eq_fft3_0081cf9671: entity work.eq_fft1_entity_2fb49e7f53
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      coeff => slice_y_net_x4,
      coeff_addr => slice4_y_net_x3,
      coeff_we => mux42_y_net_x1,
      pol1 => fft_real_biplex_1024chout1_pol13_out_net_x0,
      sync => fft_real_biplex_1024chout_sync_out_net_x3,
      dout => concat_y_net_x8
    );

  fft_pol02_imag_ad530b1eb1: entity work.fft_pol02_imag_entity_ad530b1eb1
    port map (
      addr => enable_y_net_x2,
      data_in => force_im_output_port_net_x4,
      we => logical1_y_net_x2,
      convert_addr_x0 => rpoco8_testbench_v11_fft_pol02_imag_addr_net,
      convert_din_x0 => rpoco8_testbench_v11_fft_pol02_imag_data_in_net,
      convert_we_x0 => rpoco8_testbench_v11_fft_pol02_imag_we_net
    );

  fft_pol02_real_b69e211f97: entity work.fft_pol02_imag_entity_ad530b1eb1
    port map (
      addr => enable_y_net_x2,
      data_in => force_re_output_port_net_x4,
      we => logical1_y_net_x2,
      convert_addr_x0 => rpoco8_testbench_v11_fft_pol02_real_addr_net,
      convert_din_x0 => rpoco8_testbench_v11_fft_pol02_real_data_in_net,
      convert_we_x0 => rpoco8_testbench_v11_fft_pol02_real_we_net
    );

  fft_real_biplex_1024chout: entity work.fft_1024ch_core
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      po1 => force_re_output_port_net_x0,
      pol2 => force_im_output_port_net_x0,
      pol3 => force_re_output_port_net_x2,
      pol4 => force_im_output_port_net_x2,
      shift => slice18_y_net,
      sync => pfb_fir_bb_4_tap_add_lat_1_sync_out_net,
      oflow => fft_real_biplex_1024chout_oflow_net,
      plo02_out => fft_real_biplex_1024chout_plo02_out_net_x3,
      pol13_out => fft_real_biplex_1024chout_pol13_out_net_x0,
      sync_out => fft_real_biplex_1024chout_sync_out_net_x3
    );

  fft_real_biplex_1024chout1: entity work.fft_1024ch_core
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      po1 => force_re_output_port_net_x1,
      pol2 => force_im_output_port_net_x1,
      pol3 => force_re_output_port_net_x3,
      pol4 => force_im_output_port_net_x3,
      shift => slice18_y_net,
      sync => pfb_fir_bb_4_tap_add_lat_1_sync_out_net,
      oflow => fft_real_biplex_1024chout1_oflow_net,
      plo02_out => fft_real_biplex_1024chout1_plo02_out_net_x0,
      pol13_out => fft_real_biplex_1024chout1_pol13_out_net_x0,
      sync_out => fft_real_biplex_1024chout1_sync_out_net
    );

  freeze_cntr1_ab3f66f7e2: entity work.freeze_cntr_entity_2f60b4c116
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      en => mux_y_net_x0,
      rst => logical3_y_net_x1,
      addr => gateway_out4_net,
      we => logical1_y_net_x4
    );

  freeze_cntr_2f60b4c116: entity work.freeze_cntr_entity_2f60b4c116
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      en => constant1_op_net_x0,
      rst => mux3_y_net_x0,
      addr => enable_y_net_x2,
      we => logical1_y_net_x2
    );

  iadc0_3_02fef37625: entity work.adc0_3_entity_7e8f06c2ce
    port map (
      addr => gateway_out4_net,
      data_in => concat2_y_net_x0,
      we => logical1_y_net_x4,
      convert_addr_x0 => rpoco8_testbench_v11_iadc0_3_addr_net,
      convert_din_x0 => rpoco8_testbench_v11_iadc0_3_data_in_net,
      convert_we_x0 => rpoco8_testbench_v11_iadc0_3_we_net
    );

  iadc4_7_c8ff45c050: entity work.adc0_3_entity_7e8f06c2ce
    port map (
      addr => gateway_out4_net,
      data_in => concat3_y_net_x0,
      we => logical1_y_net_x4,
      convert_addr_x0 => rpoco8_testbench_v11_iadc4_7_addr_net,
      convert_din_x0 => rpoco8_testbench_v11_iadc4_7_data_in_net,
      convert_we_x0 => rpoco8_testbench_v11_iadc4_7_we_net
    );

  input_mux_19565016bf: entity work.input_mux_entity_19565016bf
    port map (
      adc0 => mux1_y_net_x17,
      adc1 => mux1_y_net_x18,
      adc2 => mux1_y_net_x19,
      adc3 => mux1_y_net_x20,
      adc4 => mux1_y_net_x21,
      adc5 => mux1_y_net_x22,
      adc6 => mux1_y_net_x23,
      adc7 => mux1_y_net_x24,
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      delay0 => bitbasher_delay0_net_x2,
      delay1 => bitbasher_delay1_net_x2,
      delay2 => bitbasher_delay2_net_x2,
      delay3 => bitbasher_delay3_net_x2,
      delay4 => bitbasher1_delay4_net_x2,
      delay5 => bitbasher1_delay5_net_x2,
      delay6 => bitbasher1_delay6_net_x2,
      delay7 => bitbasher1_delay7_net_x2,
      insel0 => bitbasher_insel0_net_x2,
      insel1 => bitbasher_insel1_net_x2,
      insel2 => bitbasher_insel2_net_x2,
      insel3 => bitbasher_insel3_net_x2,
      insel4 => bitbasher1_insel4_net_x2,
      insel5 => bitbasher1_insel5_net_x2,
      insel6 => bitbasher1_insel6_net_x2,
      insel7 => bitbasher1_insel7_net_x2,
      n00 => reinterpret_output_port_net_x10,
      n01 => reinterpret1_output_port_net_x10,
      n10 => reinterpret_output_port_net_x11,
      n11 => reinterpret1_output_port_net_x11,
      n20 => reinterpret_output_port_net_x12,
      n21 => reinterpret1_output_port_net_x12,
      n30 => reinterpret_output_port_net_x13,
      n31 => reinterpret1_output_port_net_x13,
      sync_gen => mux_y_net_x3,
      in0 => addressable_shift_register_q_net_x16,
      in1 => addressable_shift_register_q_net_x17,
      in2 => addressable_shift_register_q_net_x18,
      in3 => addressable_shift_register_q_net_x19,
      in4 => addressable_shift_register_q_net_x20,
      in5 => addressable_shift_register_q_net_x21,
      in6 => addressable_shift_register_q_net_x22,
      in7 => addressable_shift_register_q_net_x23,
      pfb_sync => delay_q_net_x0
    );

  insel_817c09d0fc: entity work.insel_entity_817c09d0fc
    port map (
      rpoco8_testbench_v11_insel_insel_data_user_data_out => rpoco8_testbench_v11_insel_insel_data_user_data_out_net,
      insel0 => bitbasher_insel0_net_x2,
      insel1 => bitbasher_insel1_net_x2,
      insel2 => bitbasher_insel2_net_x2,
      insel3 => bitbasher_insel3_net_x2,
      insel4 => bitbasher1_insel4_net_x2,
      insel5 => bitbasher1_insel5_net_x2,
      insel6 => bitbasher1_insel6_net_x2,
      insel7 => bitbasher1_insel7_net_x2
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x268,
      clk => clk_1_sg_x268,
      clr => '0',
      ip(0) => delay4_q_net_x0,
      op(0) => inverter_op_net
    );

  led_e51bf9b3ac: entity work.led_entity_e51bf9b3ac
    port map (
      gpio_out => relational5_op_net_x1,
      convert_x0 => rpoco8_testbench_v11_led_gateway_net
    );

  mux: entity work.mux_d99e59b6d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => mux_y_net_x4,
      d1(0) => slice6_y_net,
      sel(0) => slice5_y_net,
      y(0) => mux_y_net_x0
    );

  mux1: entity work.mux_d99e59b6d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay4_q_net_x0,
      d1(0) => relational1_op_net_x18,
      sel(0) => inverter_op_net,
      y(0) => mux1_y_net
    );

  mux2: entity work.mux_9729608ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => fft_real_biplex_1024chout_plo02_out_net_x3,
      d1 => pfb_fir_bb_4_tap_add_lat_1_pol1_out1_net_x0,
      d2 => concat_y_net_x5,
      sel => slice9_y_net,
      y => mux2_y_net_x0
    );

  mux3: entity work.mux_472286caed
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => fft_real_biplex_1024chout_sync_out_net_x3,
      d1(0) => pfb_fir_bb_4_tap_add_lat_1_sync_out_net,
      d2(0) => delay4_q_net_x2,
      sel => slice8_y_net,
      y(0) => mux3_y_net_x0
    );

  not_or_not_8c5e725a77: entity work.not_or_not_entity_8c5e725a77
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      in1 => slice10_y_net_x3,
      in10 => addressable_shift_register_q_net_x17,
      in11 => addressable_shift_register_q_net_x18,
      in12 => addressable_shift_register_q_net_x19,
      in13 => addressable_shift_register_q_net_x20,
      in14 => addressable_shift_register_q_net_x21,
      in15 => addressable_shift_register_q_net_x22,
      in16 => addressable_shift_register_q_net_x23,
      in2 => slice3_y_net_x3,
      in3 => slice4_y_net_x4,
      in4 => slice5_y_net_x3,
      in5 => slice6_y_net_x3,
      in6 => slice7_y_net_x3,
      in7 => slice8_y_net_x3,
      in8 => slice9_y_net_x3,
      in9 => addressable_shift_register_q_net_x16,
      rpoco8_testbench_v11_not_or_not_delay1_user_data_out => rpoco8_testbench_v11_not_or_not_delay1_user_data_out_net,
      rpoco8_testbench_v11_not_or_not_delay2_user_data_out => rpoco8_testbench_v11_not_or_not_delay2_user_data_out_net,
      rpoco8_testbench_v11_not_or_not_delay3_user_data_out => rpoco8_testbench_v11_not_or_not_delay3_user_data_out_net,
      rpoco8_testbench_v11_not_or_not_delay4_user_data_out => rpoco8_testbench_v11_not_or_not_delay4_user_data_out_net,
      rpoco8_testbench_v11_not_or_not_delay5_user_data_out => rpoco8_testbench_v11_not_or_not_delay5_user_data_out_net,
      rpoco8_testbench_v11_not_or_not_delay6_user_data_out => rpoco8_testbench_v11_not_or_not_delay6_user_data_out_net,
      rpoco8_testbench_v11_not_or_not_delay7_user_data_out => rpoco8_testbench_v11_not_or_not_delay7_user_data_out_net,
      rpoco8_testbench_v11_not_or_not_delay8_user_data_out => rpoco8_testbench_v11_not_or_not_delay8_user_data_out_net,
      out1 => mux_y_net_x1,
      out2 => mux5_y_net_x1,
      out3 => mux1_y_net_x1,
      out4 => mux6_y_net_x1,
      out5 => mux2_y_net_x1,
      out6 => mux3_y_net_x1,
      out7 => mux4_y_net_x1,
      out8 => mux7_y_net_x1
    );

  pfb_fir1_bb_4_tap_add_lat_1: entity work.pfb_core
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      pol1_in1 => concat_y_net_x10,
      sync => delay_q_net_x0,
      pol1_out1 => pfb_fir1_bb_4_tap_add_lat_1_pol1_out1_net_x0,
      sync_out => pfb_fir1_bb_4_tap_add_lat_1_sync_out_net
    );

  pfb_fir2_bb_4_tap_add_lat_1: entity work.pfb_core
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      pol1_in1 => concat_y_net_x11,
      sync => delay_q_net_x0,
      pol1_out1 => pfb_fir2_bb_4_tap_add_lat_1_pol1_out1_net_x0,
      sync_out => pfb_fir2_bb_4_tap_add_lat_1_sync_out_net
    );

  pfb_fir3_bb_4_tap_add_lat_1: entity work.pfb_core
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      pol1_in1 => concat_y_net_x12,
      sync => delay_q_net_x0,
      pol1_out1 => pfb_fir3_bb_4_tap_add_lat_1_pol1_out1_net_x0,
      sync_out => pfb_fir3_bb_4_tap_add_lat_1_sync_out_net
    );

  pfb_fir_bb_4_tap_add_lat_1: entity work.pfb_core
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      pol1_in1 => concat_y_net_x9,
      sync => delay_q_net_x0,
      pol1_out1 => pfb_fir_bb_4_tap_add_lat_1_pol1_out1_net_x0,
      sync_out => pfb_fir_bb_4_tap_add_lat_1_sync_out_net
    );

  pulse_ext_96c76881de: entity work.pulse_ext_entity_96c76881de
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      in_x0 => delay2_q_net_x1,
      out_x0 => relational5_op_net_x1
    );

  reinterpret: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => addressable_shift_register_q_net_x19,
      output_port => reinterpret_output_port_net
    );

  reinterpret1: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => addressable_shift_register_q_net_x18,
      output_port => reinterpret1_output_port_net
    );

  reinterpret10: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux5_y_net_x1,
      output_port => reinterpret10_output_port_net
    );

  reinterpret11: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux_y_net_x1,
      output_port => reinterpret11_output_port_net
    );

  reinterpret12: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux7_y_net_x1,
      output_port => reinterpret12_output_port_net
    );

  reinterpret13: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux4_y_net_x1,
      output_port => reinterpret13_output_port_net
    );

  reinterpret14: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux3_y_net_x1,
      output_port => reinterpret14_output_port_net
    );

  reinterpret15: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux2_y_net_x1,
      output_port => reinterpret15_output_port_net
    );

  reinterpret2: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => addressable_shift_register_q_net_x17,
      output_port => reinterpret2_output_port_net
    );

  reinterpret3: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => addressable_shift_register_q_net_x16,
      output_port => reinterpret3_output_port_net
    );

  reinterpret4: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => addressable_shift_register_q_net_x23,
      output_port => reinterpret4_output_port_net
    );

  reinterpret5: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => addressable_shift_register_q_net_x22,
      output_port => reinterpret5_output_port_net
    );

  reinterpret6: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => addressable_shift_register_q_net_x21,
      output_port => reinterpret6_output_port_net
    );

  reinterpret7: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => addressable_shift_register_q_net_x20,
      output_port => reinterpret7_output_port_net
    );

  reinterpret8: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux6_y_net_x1,
      output_port => reinterpret8_output_port_net
    );

  reinterpret9: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux1_y_net_x1,
      output_port => reinterpret9_output_port_net
    );

  relational: entity work.relational_dac42e2d5f
    port map (
      a => counter_op_net,
      b => constant3_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net_x0
    );

  relational1: entity work.relational_97c9d52516
    port map (
      a => counter2_op_net,
      b => addsub_s_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net_x18
    );

  reordering_6e66868728: entity work.reordering_entity_6e66868728
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      eq0 => concat_y_net_x5,
      eq1 => concat_y_net_x6,
      eq2 => concat_y_net_x7,
      eq3 => concat_y_net_x8,
      sync => delay4_q_net_x2,
      c0 => slice8_y_net_x14,
      c1 => slice9_y_net_x14,
      c2 => slice21_y_net_x14,
      c3 => slice25_y_net_x14,
      c4 => slice28_y_net_x5,
      c5 => slice29_y_net_x5,
      c6 => slice26_y_net_x5,
      c7 => slice27_y_net_x5,
      sync_out => delay4_q_net_x0
    );

  ri_to_c1_9ab56c14e3: entity work.ri_to_c_entity_2ec260a7f5
    port map (
      im => mux6_y_net_x1,
      re => mux1_y_net_x1,
      c => concat_y_net_x10
    );

  ri_to_c2_9a9d68eb87: entity work.ri_to_c_entity_2ec260a7f5
    port map (
      im => mux3_y_net_x1,
      re => mux2_y_net_x1,
      c => concat_y_net_x11
    );

  ri_to_c3_6c9759befb: entity work.ri_to_c_entity_2ec260a7f5
    port map (
      im => mux7_y_net_x1,
      re => mux4_y_net_x1,
      c => concat_y_net_x12
    );

  ri_to_c_2ec260a7f5: entity work.ri_to_c_entity_2ec260a7f5
    port map (
      im => mux5_y_net_x1,
      re => mux_y_net_x1,
      c => concat_y_net_x9
    );

  seed_e693ee19e1: entity work.seed_entity_e693ee19e1
    port map (
      arm_rst => slice22_y_net_x2,
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      rpoco8_testbench_v11_seed_seed_data_user_data_out => rpoco8_testbench_v11_seed_seed_data_user_data_out_net,
      sync_gen => mux_y_net_x3,
      seed0 => bitbasher_seed0_net_x5,
      seed1 => bitbasher_seed1_net_x5,
      seed2 => bitbasher_seed2_net_x5,
      seed3 => bitbasher_seed3_net_x5,
      seed_ld => logical_y_net_x22
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 16,
      x_width => 32,
      y_width => 17
    )
    port map (
      x => rpoco8_testbench_v11_eq_coeff_user_data_out_net,
      y => slice_y_net_x4
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 30,
      new_msb => 31,
      x_width => 32,
      y_width => 2
    )
    port map (
      x => rpoco8_testbench_v11_eq_coeff_user_data_out_net,
      y => slice1_y_net_x1
    );

  slice10: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => rpoco8_testbench_v11_new_raw_capture_user_data_out_net,
      y(0) => slice10_y_net_x0
    );

  slice18: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 15,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => delay_q_net,
      y => slice18_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 17,
      new_msb => 17,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => rpoco8_testbench_v11_eq_coeff_user_data_out_net,
      y(0) => slice2_y_net_x1
    );

  slice22: entity work.xlslice
    generic map (
      new_lsb => 17,
      new_msb => 17,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay_q_net,
      y(0) => slice22_y_net_x2
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 20,
      new_msb => 25,
      x_width => 32,
      y_width => 6
    )
    port map (
      x => rpoco8_testbench_v11_eq_coeff_user_data_out_net,
      y => slice4_y_net_x3
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 31,
      new_msb => 31,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => rpoco8_testbench_v11_new_raw_capture_trig_user_data_out_net,
      y(0) => slice5_y_net
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => rpoco8_testbench_v11_new_raw_capture_trig_user_data_out_net,
      y(0) => slice6_y_net
    );

  slice8: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 1,
      x_width => 32,
      y_width => 2
    )
    port map (
      x => rpoco8_testbench_v11_mux_sel_pfb_sync_user_data_out_net,
      y => slice8_y_net
    );

  slice9: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 1,
      x_width => 32,
      y_width => 2
    )
    port map (
      x => rpoco8_testbench_v11_mux_sel_pfb_user_data_out_net,
      y => slice9_y_net
    );

  sync_ac6883115c: entity work.sync_entity_ac6883115c
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      rpoco8_testbench_v11_sync_arm_user_data_out => rpoco8_testbench_v11_sync_arm_user_data_out_net,
      rpoco8_testbench_v11_sync_sync_pulse_user_data_out => rpoco8_testbench_v11_sync_sync_pulse_user_data_out_net,
      rpoco8_testbench_v11_sync_sync_sel_user_data_out => rpoco8_testbench_v11_sync_sync_sel_user_data_out_net,
      sync_adc0 => rpoco8_testbench_v11_adc_s_quadc0_sync_net,
      sync_gen => mux_y_net_x3
    );

  walsh_6332507c5f: entity work.walsh_entity_6332507c5f
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      rpoco8_testbench_v11_walsh_codes_data_out => rpoco8_testbench_v11_walsh_codes_data_out_net,
      rpoco8_testbench_v11_walsh_trig_sel_user_data_out => rpoco8_testbench_v11_walsh_trig_sel_user_data_out_net,
      codes => rpoco8_testbench_v11_walsh_codes_addr_net,
      codes_x0 => rpoco8_testbench_v11_walsh_codes_data_in_net,
      codes_x1 => rpoco8_testbench_v11_walsh_codes_we_net,
      out1 => slice10_y_net_x3,
      out2 => slice3_y_net_x3,
      out3 => slice4_y_net_x4,
      out4 => slice5_y_net_x3,
      out5 => slice6_y_net_x3,
      out6 => slice7_y_net_x3,
      out7 => slice8_y_net_x3,
      out8 => slice9_y_net_x3,
      out9 => mux_y_net_x4,
      walsh1 => rpoco8_testbench_v11_walsh_walsh1_gateway_net,
      walsh2 => rpoco8_testbench_v11_walsh_walsh2_gateway_net,
      walsh3 => rpoco8_testbench_v11_walsh_walsh3_gateway_net,
      walsh4 => rpoco8_testbench_v11_walsh_walsh4_gateway_net,
      walsh5 => rpoco8_testbench_v11_walsh_walsh5_gateway_net,
      walsh6 => rpoco8_testbench_v11_walsh_walsh6_gateway_net,
      walsh7 => rpoco8_testbench_v11_walsh_walsh7_gateway_net,
      walsh8 => rpoco8_testbench_v11_walsh_walsh8_gateway_net
    );

  wgns_1ab29848d8: entity work.wgns_entity_1ab29848d8
    port map (
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      seed0 => bitbasher_seed0_net_x5,
      seed1 => bitbasher_seed1_net_x5,
      seed2 => bitbasher_seed2_net_x5,
      seed3 => bitbasher_seed3_net_x5,
      seed_ld => logical_y_net_x22,
      n00 => reinterpret_output_port_net_x10,
      n01 => reinterpret1_output_port_net_x10,
      n10 => reinterpret_output_port_net_x11,
      n11 => reinterpret1_output_port_net_x11,
      n20 => reinterpret_output_port_net_x12,
      n21 => reinterpret1_output_port_net_x12,
      n30 => reinterpret_output_port_net_x13,
      n31 => reinterpret1_output_port_net_x13
    );

  xengine8_muxed_cac8d4c9c9: entity work.xengine8_muxed_entity_cac8d4c9c9
    port map (
      a => slice8_y_net_x14,
      b => slice9_y_net_x14,
      c => slice21_y_net_x14,
      ce_1 => ce_1_sg_x268,
      clk_1 => clk_1_sg_x268,
      d => slice25_y_net_x14,
      e => slice28_y_net_x5,
      f => slice29_y_net_x5,
      g => slice26_y_net_x5,
      h => slice27_y_net_x5,
      new_acc => relational1_op_net_x18,
      aa => rpoco8_testbench_v11_xengine8_muxed_aa_real_addr_net,
      aa_x0 => rpoco8_testbench_v11_xengine8_muxed_aa_real_data_in_net,
      aa_x1 => rpoco8_testbench_v11_xengine8_muxed_aa_real_we_net,
      ab => rpoco8_testbench_v11_xengine8_muxed_ab_imag_addr_net,
      ab_x0 => rpoco8_testbench_v11_xengine8_muxed_ab_imag_data_in_net,
      ab_x1 => rpoco8_testbench_v11_xengine8_muxed_ab_imag_we_net,
      ab_x2 => rpoco8_testbench_v11_xengine8_muxed_ab_real_addr_net,
      ab_x3 => rpoco8_testbench_v11_xengine8_muxed_ab_real_data_in_net,
      ab_x4 => rpoco8_testbench_v11_xengine8_muxed_ab_real_we_net,
      ac => rpoco8_testbench_v11_xengine8_muxed_ac_imag_addr_net,
      ac_x0 => rpoco8_testbench_v11_xengine8_muxed_ac_imag_data_in_net,
      ac_x1 => rpoco8_testbench_v11_xengine8_muxed_ac_imag_we_net,
      ac_x2 => rpoco8_testbench_v11_xengine8_muxed_ac_real_addr_net,
      ac_x3 => rpoco8_testbench_v11_xengine8_muxed_ac_real_data_in_net,
      ac_x4 => rpoco8_testbench_v11_xengine8_muxed_ac_real_we_net,
      ad => rpoco8_testbench_v11_xengine8_muxed_ad_imag_addr_net,
      ad_x0 => rpoco8_testbench_v11_xengine8_muxed_ad_imag_data_in_net,
      ad_x1 => rpoco8_testbench_v11_xengine8_muxed_ad_imag_we_net,
      ad_x2 => rpoco8_testbench_v11_xengine8_muxed_ad_real_addr_net,
      ad_x3 => rpoco8_testbench_v11_xengine8_muxed_ad_real_data_in_net,
      ad_x4 => rpoco8_testbench_v11_xengine8_muxed_ad_real_we_net,
      ae => rpoco8_testbench_v11_xengine8_muxed_ae_imag_addr_net,
      ae_x0 => rpoco8_testbench_v11_xengine8_muxed_ae_imag_data_in_net,
      ae_x1 => rpoco8_testbench_v11_xengine8_muxed_ae_imag_we_net,
      ae_x2 => rpoco8_testbench_v11_xengine8_muxed_ae_real_addr_net,
      ae_x3 => rpoco8_testbench_v11_xengine8_muxed_ae_real_data_in_net,
      ae_x4 => rpoco8_testbench_v11_xengine8_muxed_ae_real_we_net,
      af => rpoco8_testbench_v11_xengine8_muxed_af_imag_addr_net,
      af_x0 => rpoco8_testbench_v11_xengine8_muxed_af_imag_data_in_net,
      af_x1 => rpoco8_testbench_v11_xengine8_muxed_af_imag_we_net,
      af_x2 => rpoco8_testbench_v11_xengine8_muxed_af_real_addr_net,
      af_x3 => rpoco8_testbench_v11_xengine8_muxed_af_real_data_in_net,
      af_x4 => rpoco8_testbench_v11_xengine8_muxed_af_real_we_net,
      bb => rpoco8_testbench_v11_xengine8_muxed_bb_real_addr_net,
      bb_x0 => rpoco8_testbench_v11_xengine8_muxed_bb_real_data_in_net,
      bb_x1 => rpoco8_testbench_v11_xengine8_muxed_bb_real_we_net,
      bc => rpoco8_testbench_v11_xengine8_muxed_bc_imag_addr_net,
      bc_x0 => rpoco8_testbench_v11_xengine8_muxed_bc_imag_data_in_net,
      bc_x1 => rpoco8_testbench_v11_xengine8_muxed_bc_imag_we_net,
      bc_x2 => rpoco8_testbench_v11_xengine8_muxed_bc_real_addr_net,
      bc_x3 => rpoco8_testbench_v11_xengine8_muxed_bc_real_data_in_net,
      bc_x4 => rpoco8_testbench_v11_xengine8_muxed_bc_real_we_net,
      bd => rpoco8_testbench_v11_xengine8_muxed_bd_imag_addr_net,
      bd_x0 => rpoco8_testbench_v11_xengine8_muxed_bd_imag_data_in_net,
      bd_x1 => rpoco8_testbench_v11_xengine8_muxed_bd_imag_we_net,
      bd_x2 => rpoco8_testbench_v11_xengine8_muxed_bd_real_addr_net,
      bd_x3 => rpoco8_testbench_v11_xengine8_muxed_bd_real_data_in_net,
      bd_x4 => rpoco8_testbench_v11_xengine8_muxed_bd_real_we_net,
      be => rpoco8_testbench_v11_xengine8_muxed_be_imag_addr_net,
      be_x0 => rpoco8_testbench_v11_xengine8_muxed_be_imag_data_in_net,
      be_x1 => rpoco8_testbench_v11_xengine8_muxed_be_imag_we_net,
      be_x2 => rpoco8_testbench_v11_xengine8_muxed_be_real_addr_net,
      be_x3 => rpoco8_testbench_v11_xengine8_muxed_be_real_data_in_net,
      be_x4 => rpoco8_testbench_v11_xengine8_muxed_be_real_we_net,
      bf => rpoco8_testbench_v11_xengine8_muxed_bf_imag_addr_net,
      bf_x0 => rpoco8_testbench_v11_xengine8_muxed_bf_imag_data_in_net,
      bf_x1 => rpoco8_testbench_v11_xengine8_muxed_bf_imag_we_net,
      bf_x2 => rpoco8_testbench_v11_xengine8_muxed_bf_real_addr_net,
      bf_x3 => rpoco8_testbench_v11_xengine8_muxed_bf_real_data_in_net,
      bf_x4 => rpoco8_testbench_v11_xengine8_muxed_bf_real_we_net,
      cc => rpoco8_testbench_v11_xengine8_muxed_cc_real_addr_net,
      cc_x0 => rpoco8_testbench_v11_xengine8_muxed_cc_real_data_in_net,
      cc_x1 => rpoco8_testbench_v11_xengine8_muxed_cc_real_we_net,
      cd => rpoco8_testbench_v11_xengine8_muxed_cd_imag_addr_net,
      cd_x0 => rpoco8_testbench_v11_xengine8_muxed_cd_imag_data_in_net,
      cd_x1 => rpoco8_testbench_v11_xengine8_muxed_cd_imag_we_net,
      cd_x2 => rpoco8_testbench_v11_xengine8_muxed_cd_real_addr_net,
      cd_x3 => rpoco8_testbench_v11_xengine8_muxed_cd_real_data_in_net,
      cd_x4 => rpoco8_testbench_v11_xengine8_muxed_cd_real_we_net,
      cg => rpoco8_testbench_v11_xengine8_muxed_cg_imag_addr_net,
      cg_x0 => rpoco8_testbench_v11_xengine8_muxed_cg_imag_data_in_net,
      cg_x1 => rpoco8_testbench_v11_xengine8_muxed_cg_imag_we_net,
      cg_x2 => rpoco8_testbench_v11_xengine8_muxed_cg_real_addr_net,
      cg_x3 => rpoco8_testbench_v11_xengine8_muxed_cg_real_data_in_net,
      cg_x4 => rpoco8_testbench_v11_xengine8_muxed_cg_real_we_net,
      ch => rpoco8_testbench_v11_xengine8_muxed_ch_imag_addr_net,
      ch_x0 => rpoco8_testbench_v11_xengine8_muxed_ch_imag_data_in_net,
      ch_x1 => rpoco8_testbench_v11_xengine8_muxed_ch_imag_we_net,
      ch_x2 => rpoco8_testbench_v11_xengine8_muxed_ch_real_addr_net,
      ch_x3 => rpoco8_testbench_v11_xengine8_muxed_ch_real_data_in_net,
      ch_x4 => rpoco8_testbench_v11_xengine8_muxed_ch_real_we_net,
      dd => rpoco8_testbench_v11_xengine8_muxed_dd_real_addr_net,
      dd_x0 => rpoco8_testbench_v11_xengine8_muxed_dd_real_data_in_net,
      dd_x1 => rpoco8_testbench_v11_xengine8_muxed_dd_real_we_net,
      dg => rpoco8_testbench_v11_xengine8_muxed_dg_imag_addr_net,
      dg_x0 => rpoco8_testbench_v11_xengine8_muxed_dg_imag_data_in_net,
      dg_x1 => rpoco8_testbench_v11_xengine8_muxed_dg_imag_we_net,
      dg_x2 => rpoco8_testbench_v11_xengine8_muxed_dg_real_addr_net,
      dg_x3 => rpoco8_testbench_v11_xengine8_muxed_dg_real_data_in_net,
      dg_x4 => rpoco8_testbench_v11_xengine8_muxed_dg_real_we_net,
      dh => rpoco8_testbench_v11_xengine8_muxed_dh_imag_addr_net,
      dh_x0 => rpoco8_testbench_v11_xengine8_muxed_dh_imag_data_in_net,
      dh_x1 => rpoco8_testbench_v11_xengine8_muxed_dh_imag_we_net,
      dh_x2 => rpoco8_testbench_v11_xengine8_muxed_dh_real_addr_net,
      dh_x3 => rpoco8_testbench_v11_xengine8_muxed_dh_real_data_in_net,
      dh_x4 => rpoco8_testbench_v11_xengine8_muxed_dh_real_we_net
    );

end structural;
