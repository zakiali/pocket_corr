library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_core/pfb_fir/pol1_in1_first_tap/c_to_ri"

entity c_to_ri_entity_e07bd19e63 is
  port (
    c: in std_logic_vector(15 downto 0); 
    im: out std_logic_vector(7 downto 0); 
    re: out std_logic_vector(7 downto 0)
  );
end c_to_ri_entity_e07bd19e63;

architecture structural of c_to_ri_entity_e07bd19e63 is
  signal delay1_q_net_x0: std_logic_vector(15 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(7 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(7 downto 0);
  signal slice_im_y_net: std_logic_vector(7 downto 0);
  signal slice_re_y_net: std_logic_vector(7 downto 0);

begin
  delay1_q_net_x0 <= c;
  im <= force_im_output_port_net_x0;
  re <= force_re_output_port_net_x0;

  force_im: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_im_y_net,
      output_port => force_im_output_port_net_x0
    );

  force_re: entity work.reinterpret_4389dc89bf
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
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => delay1_q_net_x0,
      y => slice_im_y_net
    );

  slice_re: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => delay1_q_net_x0,
      y => slice_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_core/pfb_fir/pol1_in1_first_tap/delay_bram"

entity delay_bram_entity_7c18011f84 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(15 downto 0); 
    out1: out std_logic_vector(15 downto 0)
  );
end delay_bram_entity_7c18011f84;

architecture structural of delay_bram_entity_7c18011f84 is
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal constant2_op_net: std_logic;
  signal counter_op_net: std_logic_vector(10 downto 0);
  signal delay1_q_net_x1: std_logic_vector(15 downto 0);
  signal single_port_ram_data_out_net_x0: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  delay1_q_net_x1 <= in1;
  out1 <= single_port_ram_data_out_net_x0;

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 2044,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_ae406e50e98e0e45",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  single_port_ram: entity work.xlspram
    generic map (
      c_address_width => 11,
      c_width => 16,
      core_name0 => "bmg_33_80d6b14676f218c5",
      latency => 2
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      data_in => delay1_q_net_x1,
      en => "1",
      rst => "0",
      we(0) => constant2_op_net,
      data_out => single_port_ram_data_out_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_core/pfb_fir/pol1_in1_first_tap/pfb_coeff_gen"

entity pfb_coeff_gen_entity_8bc942b6f1 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    coeff: out std_logic_vector(31 downto 0); 
    dout: out std_logic_vector(15 downto 0); 
    sync_out: out std_logic
  );
end pfb_coeff_gen_entity_8bc942b6f1;

architecture structural of pfb_coeff_gen_entity_8bc942b6f1 is
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal concat_y_net: std_logic_vector(31 downto 0);
  signal counter_op_net: std_logic_vector(10 downto 0);
  signal delay1_q_net_x2: std_logic_vector(15 downto 0);
  signal delay_q_net_x0: std_logic;
  signal pol1_in1_net_x0: std_logic_vector(15 downto 0);
  signal register_q_net_x0: std_logic_vector(31 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret3_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret4_output_port_net: std_logic_vector(7 downto 0);
  signal rom1_data_net: std_logic_vector(7 downto 0);
  signal rom2_data_net: std_logic_vector(7 downto 0);
  signal rom3_data_net: std_logic_vector(7 downto 0);
  signal rom4_data_net: std_logic_vector(7 downto 0);
  signal sync_net_x0: std_logic;

begin
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  pol1_in1_net_x0 <= din;
  sync_net_x0 <= sync;
  coeff <= register_q_net_x0;
  dout <= delay1_q_net_x2;
  sync_out <= delay_q_net_x0;

  concat: entity work.concat_a1e126f11c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret1_output_port_net,
      in1 => reinterpret2_output_port_net,
      in2 => reinterpret3_output_port_net,
      in3 => reinterpret4_output_port_net,
      y => concat_y_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_ae406e50e98e0e45",
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      en => "1",
      rst(0) => sync_net_x0,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      d(0) => sync_net_x0,
      en => '1',
      q(0) => delay_q_net_x0
    );

  delay1: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      width => 16
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      d => pol1_in1_net_x0,
      en => '1',
      q => delay1_q_net_x2
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      d => concat_y_net,
      en => "1",
      rst => "0",
      q => register_q_net_x0
    );

  reinterpret1: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom1_data_net,
      output_port => reinterpret1_output_port_net
    );

  reinterpret2: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom2_data_net,
      output_port => reinterpret2_output_port_net
    );

  reinterpret3: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom3_data_net,
      output_port => reinterpret3_output_port_net
    );

  reinterpret4: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom4_data_net,
      output_port => reinterpret4_output_port_net
    );

  rom1: entity work.xlsprom_dist
    generic map (
      addr_width => 11,
      c_address_width => 11,
      c_width => 8,
      core_name0 => "dmg_43_e0957f4fee433e17",
      latency => 3
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      en => "1",
      data => rom1_data_net
    );

  rom2: entity work.xlsprom_dist
    generic map (
      addr_width => 11,
      c_address_width => 11,
      c_width => 8,
      core_name0 => "dmg_43_7cde0f653fa26908",
      latency => 3
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      en => "1",
      data => rom2_data_net
    );

  rom3: entity work.xlsprom_dist
    generic map (
      addr_width => 11,
      c_address_width => 11,
      c_width => 8,
      core_name0 => "dmg_43_fc0fede523fbb97e",
      latency => 3
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      en => "1",
      data => rom3_data_net
    );

  rom4: entity work.xlsprom_dist
    generic map (
      addr_width => 11,
      c_address_width => 11,
      c_width => 8,
      core_name0 => "dmg_43_b7617019d0272360",
      latency => 3
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      en => "1",
      data => rom4_data_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_core/pfb_fir/pol1_in1_first_tap/ri_to_c"

entity ri_to_c_entity_c9863a5ffc is
  port (
    im: in std_logic_vector(15 downto 0); 
    re: in std_logic_vector(15 downto 0); 
    c: out std_logic_vector(31 downto 0)
  );
end ri_to_c_entity_c9863a5ffc;

architecture structural of ri_to_c_entity_c9863a5ffc is
  signal concat_y_net_x0: std_logic_vector(31 downto 0);
  signal mult1_p_net_x0: std_logic_vector(15 downto 0);
  signal mult_p_net_x0: std_logic_vector(15 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(15 downto 0);

begin
  mult_p_net_x0 <= im;
  mult1_p_net_x0 <= re;
  c <= concat_y_net_x0;

  concat: entity work.concat_a369e00c6b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret_output_port_net,
      in1 => reinterpret1_output_port_net,
      y => concat_y_net_x0
    );

  reinterpret: entity work.reinterpret_7025463ea8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mult1_p_net_x0,
      output_port => reinterpret_output_port_net
    );

  reinterpret1: entity work.reinterpret_7025463ea8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mult_p_net_x0,
      output_port => reinterpret1_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_core/pfb_fir/pol1_in1_first_tap/sync_delay"

entity sync_delay_entity_9fa8e29349 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_9fa8e29349;

architecture structural of sync_delay_entity_9fa8e29349 is
  signal ce_1_sg_x2: std_logic;
  signal clk_1_sg_x2: std_logic;
  signal constant1_op_net: std_logic_vector(11 downto 0);
  signal constant2_op_net: std_logic_vector(11 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(11 downto 0);
  signal counter_op_net: std_logic_vector(11 downto 0);
  signal delay_q_net_x1: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x0: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x2 <= ce_1;
  clk_1_sg_x2 <= clk_1;
  delay_q_net_x1 <= in_x0;
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
      op(0) => constant3_op_net
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
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x1,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x1,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x1,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
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

-- Generated from Simulink block "pfb_core/pfb_fir/pol1_in1_first_tap"

entity pol1_in1_first_tap_entity_95f833393f is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    coeff_out: out std_logic_vector(23 downto 0); 
    dout: out std_logic_vector(15 downto 0); 
    sync_out: out std_logic; 
    taps_out: out std_logic_vector(31 downto 0)
  );
end pol1_in1_first_tap_entity_95f833393f;

architecture structural of pol1_in1_first_tap_entity_95f833393f is
  signal ce_1_sg_x3: std_logic;
  signal clk_1_sg_x3: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal delay1_q_net_x2: std_logic_vector(15 downto 0);
  signal delay_q_net_x1: std_logic;
  signal force_im_output_port_net_x0: std_logic_vector(7 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(7 downto 0);
  signal mult1_p_net_x0: std_logic_vector(15 downto 0);
  signal mult_p_net_x0: std_logic_vector(15 downto 0);
  signal mux_y_net_x1: std_logic;
  signal pol1_in1_net_x1: std_logic_vector(15 downto 0);
  signal register_q_net_x0: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(7 downto 0);
  signal single_port_ram_data_out_net_x1: std_logic_vector(15 downto 0);
  signal slice1_y_net_x0: std_logic_vector(23 downto 0);
  signal slice_y_net: std_logic_vector(7 downto 0);
  signal sync_net_x1: std_logic;

begin
  ce_1_sg_x3 <= ce_1;
  clk_1_sg_x3 <= clk_1;
  pol1_in1_net_x1 <= din;
  sync_net_x1 <= sync;
  coeff_out <= slice1_y_net_x0;
  dout <= single_port_ram_data_out_net_x1;
  sync_out <= mux_y_net_x1;
  taps_out <= concat_y_net_x1;

  c_to_ri_e07bd19e63: entity work.c_to_ri_entity_e07bd19e63
    port map (
      c => delay1_q_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  delay_bram_7c18011f84: entity work.delay_bram_entity_7c18011f84
    port map (
      ce_1 => ce_1_sg_x3,
      clk_1 => clk_1_sg_x3,
      in1 => delay1_q_net_x2,
      out1 => single_port_ram_data_out_net_x1
    );

  mult: entity work.mult_98e3c7048f
    port map (
      a => force_im_output_port_net_x0,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      p => mult_p_net_x0
    );

  mult1: entity work.mult_98e3c7048f
    port map (
      a => force_re_output_port_net_x0,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      p => mult1_p_net_x0
    );

  pfb_coeff_gen_8bc942b6f1: entity work.pfb_coeff_gen_entity_8bc942b6f1
    port map (
      ce_1 => ce_1_sg_x3,
      clk_1 => clk_1_sg_x3,
      din => pol1_in1_net_x1,
      sync => sync_net_x1,
      coeff => register_q_net_x0,
      dout => delay1_q_net_x2,
      sync_out => delay_q_net_x1
    );

  reinterpret: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_y_net,
      output_port => reinterpret_output_port_net
    );

  ri_to_c_c9863a5ffc: entity work.ri_to_c_entity_c9863a5ffc
    port map (
      im => mult_p_net_x0,
      re => mult1_p_net_x0,
      c => concat_y_net_x1
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => register_q_net_x0,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 31,
      x_width => 32,
      y_width => 24
    )
    port map (
      x => register_q_net_x0,
      y => slice1_y_net_x0
    );

  sync_delay_9fa8e29349: entity work.sync_delay_entity_9fa8e29349
    port map (
      ce_1 => ce_1_sg_x3,
      clk_1 => clk_1_sg_x3,
      in_x0 => delay_q_net_x1,
      out_x0 => mux_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_core/pfb_fir/pol1_in1_last_tap/pfb_add_tree/adder_tree1"

entity adder_tree1_entity_b75e5628a6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din1: in std_logic_vector(15 downto 0); 
    din2: in std_logic_vector(15 downto 0); 
    din3: in std_logic_vector(15 downto 0); 
    din4: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    dout: out std_logic_vector(15 downto 0); 
    sync_out: out std_logic
  );
end adder_tree1_entity_b75e5628a6;

architecture structural of adder_tree1_entity_b75e5628a6 is
  signal addr1_s_net: std_logic_vector(15 downto 0);
  signal addr2_s_net: std_logic_vector(15 downto 0);
  signal addr3_s_net_x0: std_logic_vector(15 downto 0);
  signal ce_1_sg_x4: std_logic;
  signal clk_1_sg_x4: std_logic;
  signal delay_q_net_x0: std_logic;
  signal reint0_1_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reint1_1_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reint2_1_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reint3_1_output_port_net_x0: std_logic_vector(15 downto 0);
  signal sync_delay_q_net_x0: std_logic;

begin
  ce_1_sg_x4 <= ce_1;
  clk_1_sg_x4 <= clk_1;
  reint0_1_output_port_net_x0 <= din1;
  reint1_1_output_port_net_x0 <= din2;
  reint2_1_output_port_net_x0 <= din3;
  reint3_1_output_port_net_x0 <= din4;
  delay_q_net_x0 <= sync;
  dout <= addr3_s_net_x0;
  sync_out <= sync_delay_q_net_x0;

  addr1: entity work.xladdsub
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 14,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 14,
      b_width => 16,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 17,
      core_name0 => "addsb_11_0_4a0ca6698df0791b",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 17,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 14,
      s_width => 16
    )
    port map (
      a => reint0_1_output_port_net_x0,
      b => reint1_1_output_port_net_x0,
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      en => "1",
      s => addr1_s_net
    );

  addr2: entity work.xladdsub
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 14,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 14,
      b_width => 16,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 17,
      core_name0 => "addsb_11_0_4a0ca6698df0791b",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 17,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 14,
      s_width => 16
    )
    port map (
      a => reint2_1_output_port_net_x0,
      b => reint3_1_output_port_net_x0,
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      en => "1",
      s => addr2_s_net
    );

  addr3: entity work.xladdsub
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 14,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 14,
      b_width => 16,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 17,
      core_name0 => "addsb_11_0_4a0ca6698df0791b",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 17,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 14,
      s_width => 16
    )
    port map (
      a => addr1_s_net,
      b => addr2_s_net,
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      en => "1",
      s => addr3_s_net_x0
    );

  sync_delay: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      d(0) => delay_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_core/pfb_fir/pol1_in1_last_tap/pfb_add_tree/adder_tree2"

entity adder_tree2_entity_cc61584512 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din1: in std_logic_vector(15 downto 0); 
    din2: in std_logic_vector(15 downto 0); 
    din3: in std_logic_vector(15 downto 0); 
    din4: in std_logic_vector(15 downto 0); 
    dout: out std_logic_vector(15 downto 0)
  );
end adder_tree2_entity_cc61584512;

architecture structural of adder_tree2_entity_cc61584512 is
  signal addr1_s_net: std_logic_vector(15 downto 0);
  signal addr2_s_net: std_logic_vector(15 downto 0);
  signal addr3_s_net_x0: std_logic_vector(15 downto 0);
  signal ce_1_sg_x5: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal reint0_2_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reint1_2_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reint2_2_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reint3_2_output_port_net_x0: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x5 <= ce_1;
  clk_1_sg_x5 <= clk_1;
  reint0_2_output_port_net_x0 <= din1;
  reint1_2_output_port_net_x0 <= din2;
  reint2_2_output_port_net_x0 <= din3;
  reint3_2_output_port_net_x0 <= din4;
  dout <= addr3_s_net_x0;

  addr1: entity work.xladdsub
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 14,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 14,
      b_width => 16,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 17,
      core_name0 => "addsb_11_0_4a0ca6698df0791b",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 17,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 14,
      s_width => 16
    )
    port map (
      a => reint0_2_output_port_net_x0,
      b => reint1_2_output_port_net_x0,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en => "1",
      s => addr1_s_net
    );

  addr2: entity work.xladdsub
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 14,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 14,
      b_width => 16,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 17,
      core_name0 => "addsb_11_0_4a0ca6698df0791b",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 17,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 14,
      s_width => 16
    )
    port map (
      a => reint2_2_output_port_net_x0,
      b => reint3_2_output_port_net_x0,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en => "1",
      s => addr2_s_net
    );

  addr3: entity work.xladdsub
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 14,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 14,
      b_width => 16,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 17,
      core_name0 => "addsb_11_0_4a0ca6698df0791b",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 17,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 14,
      s_width => 16
    )
    port map (
      a => addr1_s_net,
      b => addr2_s_net,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en => "1",
      s => addr3_s_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_core/pfb_fir/pol1_in1_last_tap/pfb_add_tree/ri_to_c"

entity ri_to_c_entity_a8591987ee is
  port (
    im: in std_logic_vector(17 downto 0); 
    re: in std_logic_vector(17 downto 0); 
    c: out std_logic_vector(35 downto 0)
  );
end ri_to_c_entity_a8591987ee;

architecture structural of ri_to_c_entity_a8591987ee is
  signal concat_y_net_x0: std_logic_vector(35 downto 0);
  signal convert1_dout_net_x0: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net: std_logic_vector(17 downto 0);
  signal force_re_output_port_net: std_logic_vector(17 downto 0);

begin
  convert2_dout_net_x0 <= im;
  convert1_dout_net_x0 <= re;
  c <= concat_y_net_x0;

  concat: entity work.concat_b198bd62b0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => force_re_output_port_net,
      in1 => force_im_output_port_net,
      y => concat_y_net_x0
    );

  force_im: entity work.reinterpret_580feec131
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert2_dout_net_x0,
      output_port => force_im_output_port_net
    );

  force_re: entity work.reinterpret_580feec131
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert1_dout_net_x0,
      output_port => force_re_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_core/pfb_fir/pol1_in1_last_tap/pfb_add_tree"

entity pfb_add_tree_entity_30780f0068 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(127 downto 0); 
    sync: in std_logic; 
    dout: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end pfb_add_tree_entity_30780f0068;

architecture structural of pfb_add_tree_entity_30780f0068 is
  signal addr3_s_net_x0: std_logic_vector(15 downto 0);
  signal addr3_s_net_x1: std_logic_vector(15 downto 0);
  signal ce_1_sg_x6: std_logic;
  signal clk_1_sg_x6: std_logic;
  signal concat_y_net_x1: std_logic_vector(127 downto 0);
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert1_dout_net_x0: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x0: std_logic_vector(17 downto 0);
  signal delay1_q_net_x0: std_logic;
  signal delay_q_net_x1: std_logic;
  signal reint0_1_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reint0_2_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reint1_1_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reint1_2_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reint2_1_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reint2_2_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reint3_1_output_port_net_x0: std_logic_vector(15 downto 0);
  signal reint3_2_output_port_net_x0: std_logic_vector(15 downto 0);
  signal scale1_op_net: std_logic_vector(15 downto 0);
  signal scale2_op_net: std_logic_vector(15 downto 0);
  signal slice0_1_y_net: std_logic_vector(15 downto 0);
  signal slice0_2_y_net: std_logic_vector(15 downto 0);
  signal slice1_1_y_net: std_logic_vector(15 downto 0);
  signal slice1_2_y_net: std_logic_vector(15 downto 0);
  signal slice2_1_y_net: std_logic_vector(15 downto 0);
  signal slice2_2_y_net: std_logic_vector(15 downto 0);
  signal slice3_1_y_net: std_logic_vector(15 downto 0);
  signal slice3_2_y_net: std_logic_vector(15 downto 0);
  signal sync_delay_q_net_x0: std_logic;

begin
  ce_1_sg_x6 <= ce_1;
  clk_1_sg_x6 <= clk_1;
  concat_y_net_x1 <= din;
  delay_q_net_x1 <= sync;
  dout <= concat_y_net_x2;
  sync_out <= delay1_q_net_x0;

  adder_tree1_b75e5628a6: entity work.adder_tree1_entity_b75e5628a6
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      din1 => reint0_1_output_port_net_x0,
      din2 => reint1_1_output_port_net_x0,
      din3 => reint2_1_output_port_net_x0,
      din4 => reint3_1_output_port_net_x0,
      sync => delay_q_net_x1,
      dout => addr3_s_net_x0,
      sync_out => sync_delay_q_net_x0
    );

  adder_tree2_cc61584512: entity work.adder_tree2_entity_cc61584512
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      din1 => reint0_2_output_port_net_x0,
      din2 => reint1_2_output_port_net_x0,
      din3 => reint2_2_output_port_net_x0,
      din4 => reint3_2_output_port_net_x0,
      dout => addr3_s_net_x1
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 1,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din => scale1_op_net,
      dout => convert1_dout_net_x0
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 1,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din => scale2_op_net,
      dout => convert2_dout_net_x0
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      d(0) => sync_delay_q_net_x0,
      en => '1',
      q(0) => delay1_q_net_x0
    );

  reint0_1: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice0_1_y_net,
      output_port => reint0_1_output_port_net_x0
    );

  reint0_2: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice0_2_y_net,
      output_port => reint0_2_output_port_net_x0
    );

  reint1_1: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice1_1_y_net,
      output_port => reint1_1_output_port_net_x0
    );

  reint1_2: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice1_2_y_net,
      output_port => reint1_2_output_port_net_x0
    );

  reint2_1: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice2_1_y_net,
      output_port => reint2_1_output_port_net_x0
    );

  reint2_2: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice2_2_y_net,
      output_port => reint2_2_output_port_net_x0
    );

  reint3_1: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice3_1_y_net,
      output_port => reint3_1_output_port_net_x0
    );

  reint3_2: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice3_2_y_net,
      output_port => reint3_2_output_port_net_x0
    );

  ri_to_c_a8591987ee: entity work.ri_to_c_entity_a8591987ee
    port map (
      im => convert2_dout_net_x0,
      re => convert1_dout_net_x0,
      c => concat_y_net_x2
    );

  scale1: entity work.scale_fa7c2ab9f6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => addr3_s_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_fa7c2ab9f6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => addr3_s_net_x1,
      op => scale2_op_net
    );

  slice0_1: entity work.xlslice
    generic map (
      new_lsb => 112,
      new_msb => 127,
      x_width => 128,
      y_width => 16
    )
    port map (
      x => concat_y_net_x1,
      y => slice0_1_y_net
    );

  slice0_2: entity work.xlslice
    generic map (
      new_lsb => 96,
      new_msb => 111,
      x_width => 128,
      y_width => 16
    )
    port map (
      x => concat_y_net_x1,
      y => slice0_2_y_net
    );

  slice1_1: entity work.xlslice
    generic map (
      new_lsb => 80,
      new_msb => 95,
      x_width => 128,
      y_width => 16
    )
    port map (
      x => concat_y_net_x1,
      y => slice1_1_y_net
    );

  slice1_2: entity work.xlslice
    generic map (
      new_lsb => 64,
      new_msb => 79,
      x_width => 128,
      y_width => 16
    )
    port map (
      x => concat_y_net_x1,
      y => slice1_2_y_net
    );

  slice2_1: entity work.xlslice
    generic map (
      new_lsb => 48,
      new_msb => 63,
      x_width => 128,
      y_width => 16
    )
    port map (
      x => concat_y_net_x1,
      y => slice2_1_y_net
    );

  slice2_2: entity work.xlslice
    generic map (
      new_lsb => 32,
      new_msb => 47,
      x_width => 128,
      y_width => 16
    )
    port map (
      x => concat_y_net_x1,
      y => slice2_2_y_net
    );

  slice3_1: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 31,
      x_width => 128,
      y_width => 16
    )
    port map (
      x => concat_y_net_x1,
      y => slice3_1_y_net
    );

  slice3_2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 15,
      x_width => 128,
      y_width => 16
    )
    port map (
      x => concat_y_net_x1,
      y => slice3_2_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_core/pfb_fir/pol1_in1_last_tap"

entity pol1_in1_last_tap_entity_6e90a55d34 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeff: in std_logic_vector(7 downto 0); 
    din: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    taps: in std_logic_vector(95 downto 0); 
    dout: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end pol1_in1_last_tap_entity_6e90a55d34;

architecture structural of pol1_in1_last_tap_entity_6e90a55d34 is
  signal ce_1_sg_x7: std_logic;
  signal clk_1_sg_x7: std_logic;
  signal concat_y_net_x0: std_logic_vector(31 downto 0);
  signal concat_y_net_x1: std_logic_vector(127 downto 0);
  signal concat_y_net_x3: std_logic_vector(95 downto 0);
  signal concat_y_net_x4: std_logic_vector(35 downto 0);
  signal delay1_q_net_x1: std_logic;
  signal delay_q_net_x1: std_logic;
  signal force_im_output_port_net_x0: std_logic_vector(7 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(7 downto 0);
  signal mult1_p_net_x0: std_logic_vector(15 downto 0);
  signal mult_p_net_x0: std_logic_vector(15 downto 0);
  signal mux_y_net_x0: std_logic;
  signal reinterpret_output_port_net: std_logic_vector(7 downto 0);
  signal single_port_ram_data_out_net_x1: std_logic_vector(15 downto 0);
  signal slice1_y_net_x0: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x7 <= ce_1;
  clk_1_sg_x7 <= clk_1;
  slice1_y_net_x0 <= coeff;
  single_port_ram_data_out_net_x1 <= din;
  mux_y_net_x0 <= sync;
  concat_y_net_x3 <= taps;
  dout <= concat_y_net_x4;
  sync_out <= delay1_q_net_x1;

  c_to_ri_2a9fe0f0ce: entity work.c_to_ri_entity_e07bd19e63
    port map (
      c => single_port_ram_data_out_net_x1,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  concat: entity work.concat_65b7cc6f0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => concat_y_net_x0,
      in1 => concat_y_net_x3,
      y => concat_y_net_x1
    );

  delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d(0) => mux_y_net_x0,
      en => '1',
      q(0) => delay_q_net_x1
    );

  mult: entity work.mult_98e3c7048f
    port map (
      a => force_im_output_port_net_x0,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      p => mult_p_net_x0
    );

  mult1: entity work.mult_98e3c7048f
    port map (
      a => force_re_output_port_net_x0,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      p => mult1_p_net_x0
    );

  pfb_add_tree_30780f0068: entity work.pfb_add_tree_entity_30780f0068
    port map (
      ce_1 => ce_1_sg_x7,
      clk_1 => clk_1_sg_x7,
      din => concat_y_net_x1,
      sync => delay_q_net_x1,
      dout => concat_y_net_x4,
      sync_out => delay1_q_net_x1
    );

  reinterpret: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice1_y_net_x0,
      output_port => reinterpret_output_port_net
    );

  ri_to_c_8d98691803: entity work.ri_to_c_entity_c9863a5ffc
    port map (
      im => mult_p_net_x0,
      re => mult1_p_net_x0,
      c => concat_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_core/pfb_fir/pol1_in1_tap2"

entity pol1_in1_tap2_entity_0a9c2b1a2d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeff: in std_logic_vector(23 downto 0); 
    din: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    taps: in std_logic_vector(31 downto 0); 
    coeff_out: out std_logic_vector(15 downto 0); 
    dout: out std_logic_vector(15 downto 0); 
    sync_out: out std_logic; 
    taps_out: out std_logic_vector(63 downto 0)
  );
end pol1_in1_tap2_entity_0a9c2b1a2d;

architecture structural of pol1_in1_tap2_entity_0a9c2b1a2d is
  signal ce_1_sg_x10: std_logic;
  signal clk_1_sg_x10: std_logic;
  signal concat_y_net_x0: std_logic_vector(31 downto 0);
  signal concat_y_net_x2: std_logic_vector(31 downto 0);
  signal concat_y_net_x3: std_logic_vector(63 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(7 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(7 downto 0);
  signal mult1_p_net_x0: std_logic_vector(15 downto 0);
  signal mult_p_net_x0: std_logic_vector(15 downto 0);
  signal mux_y_net_x3: std_logic;
  signal mux_y_net_x4: std_logic;
  signal reinterpret_output_port_net: std_logic_vector(7 downto 0);
  signal single_port_ram_data_out_net_x4: std_logic_vector(15 downto 0);
  signal single_port_ram_data_out_net_x5: std_logic_vector(15 downto 0);
  signal slice1_y_net_x1: std_logic_vector(23 downto 0);
  signal slice1_y_net_x2: std_logic_vector(15 downto 0);
  signal slice_y_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x10 <= ce_1;
  clk_1_sg_x10 <= clk_1;
  slice1_y_net_x1 <= coeff;
  single_port_ram_data_out_net_x4 <= din;
  mux_y_net_x3 <= sync;
  concat_y_net_x2 <= taps;
  coeff_out <= slice1_y_net_x2;
  dout <= single_port_ram_data_out_net_x5;
  sync_out <= mux_y_net_x4;
  taps_out <= concat_y_net_x3;

  c_to_ri_97cac7874c: entity work.c_to_ri_entity_e07bd19e63
    port map (
      c => single_port_ram_data_out_net_x4,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  concat: entity work.concat_62c4475a80
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => concat_y_net_x0,
      in1 => concat_y_net_x2,
      y => concat_y_net_x3
    );

  delay_bram_e074e9390e: entity work.delay_bram_entity_7c18011f84
    port map (
      ce_1 => ce_1_sg_x10,
      clk_1 => clk_1_sg_x10,
      in1 => single_port_ram_data_out_net_x4,
      out1 => single_port_ram_data_out_net_x5
    );

  mult: entity work.mult_98e3c7048f
    port map (
      a => force_im_output_port_net_x0,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      p => mult_p_net_x0
    );

  mult1: entity work.mult_98e3c7048f
    port map (
      a => force_re_output_port_net_x0,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      p => mult1_p_net_x0
    );

  reinterpret: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_y_net,
      output_port => reinterpret_output_port_net
    );

  ri_to_c_3768fdf28a: entity work.ri_to_c_entity_c9863a5ffc
    port map (
      im => mult_p_net_x0,
      re => mult1_p_net_x0,
      c => concat_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 24,
      y_width => 8
    )
    port map (
      x => slice1_y_net_x1,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 23,
      x_width => 24,
      y_width => 16
    )
    port map (
      x => slice1_y_net_x1,
      y => slice1_y_net_x2
    );

  sync_delay_9c9db15aca: entity work.sync_delay_entity_9fa8e29349
    port map (
      ce_1 => ce_1_sg_x10,
      clk_1 => clk_1_sg_x10,
      in_x0 => mux_y_net_x3,
      out_x0 => mux_y_net_x4
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_core/pfb_fir/pol1_in1_tap3"

entity pol1_in1_tap3_entity_2ce3003291 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeff: in std_logic_vector(15 downto 0); 
    din: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    taps: in std_logic_vector(63 downto 0); 
    coeff_out: out std_logic_vector(7 downto 0); 
    dout: out std_logic_vector(15 downto 0); 
    sync_out: out std_logic; 
    taps_out: out std_logic_vector(95 downto 0)
  );
end pol1_in1_tap3_entity_2ce3003291;

architecture structural of pol1_in1_tap3_entity_2ce3003291 is
  signal ce_1_sg_x13: std_logic;
  signal clk_1_sg_x13: std_logic;
  signal concat_y_net_x0: std_logic_vector(31 downto 0);
  signal concat_y_net_x5: std_logic_vector(63 downto 0);
  signal concat_y_net_x6: std_logic_vector(95 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(7 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(7 downto 0);
  signal mult1_p_net_x0: std_logic_vector(15 downto 0);
  signal mult_p_net_x0: std_logic_vector(15 downto 0);
  signal mux_y_net_x2: std_logic;
  signal mux_y_net_x6: std_logic;
  signal reinterpret_output_port_net: std_logic_vector(7 downto 0);
  signal single_port_ram_data_out_net_x3: std_logic_vector(15 downto 0);
  signal single_port_ram_data_out_net_x8: std_logic_vector(15 downto 0);
  signal slice1_y_net_x3: std_logic_vector(15 downto 0);
  signal slice1_y_net_x4: std_logic_vector(7 downto 0);
  signal slice_y_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x13 <= ce_1;
  clk_1_sg_x13 <= clk_1;
  slice1_y_net_x3 <= coeff;
  single_port_ram_data_out_net_x8 <= din;
  mux_y_net_x6 <= sync;
  concat_y_net_x5 <= taps;
  coeff_out <= slice1_y_net_x4;
  dout <= single_port_ram_data_out_net_x3;
  sync_out <= mux_y_net_x2;
  taps_out <= concat_y_net_x6;

  c_to_ri_244b203f92: entity work.c_to_ri_entity_e07bd19e63
    port map (
      c => single_port_ram_data_out_net_x8,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  concat: entity work.concat_0e2072f8e1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => concat_y_net_x0,
      in1 => concat_y_net_x5,
      y => concat_y_net_x6
    );

  delay_bram_27ba5901fb: entity work.delay_bram_entity_7c18011f84
    port map (
      ce_1 => ce_1_sg_x13,
      clk_1 => clk_1_sg_x13,
      in1 => single_port_ram_data_out_net_x8,
      out1 => single_port_ram_data_out_net_x3
    );

  mult: entity work.mult_98e3c7048f
    port map (
      a => force_im_output_port_net_x0,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      p => mult_p_net_x0
    );

  mult1: entity work.mult_98e3c7048f
    port map (
      a => force_re_output_port_net_x0,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      p => mult1_p_net_x0
    );

  reinterpret: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_y_net,
      output_port => reinterpret_output_port_net
    );

  ri_to_c_63f1653ce4: entity work.ri_to_c_entity_c9863a5ffc
    port map (
      im => mult_p_net_x0,
      re => mult1_p_net_x0,
      c => concat_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => slice1_y_net_x3,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => slice1_y_net_x3,
      y => slice1_y_net_x4
    );

  sync_delay_104da35b5b: entity work.sync_delay_entity_9fa8e29349
    port map (
      ce_1 => ce_1_sg_x13,
      clk_1 => clk_1_sg_x13,
      in_x0 => mux_y_net_x6,
      out_x0 => mux_y_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_core/pfb_fir"

entity pfb_fir_entity_a4f09a2d8b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    pol1_in1: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    pol1_out1: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end pfb_fir_entity_a4f09a2d8b;

architecture structural of pfb_fir_entity_a4f09a2d8b is
  signal ce_1_sg_x14: std_logic;
  signal clk_1_sg_x14: std_logic;
  signal concat_y_net_x2: std_logic_vector(31 downto 0);
  signal concat_y_net_x5: std_logic_vector(63 downto 0);
  signal concat_y_net_x6: std_logic_vector(95 downto 0);
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal delay1_q_net_x2: std_logic;
  signal mux_y_net_x2: std_logic;
  signal mux_y_net_x3: std_logic;
  signal mux_y_net_x6: std_logic;
  signal pol1_in1_net_x2: std_logic_vector(15 downto 0);
  signal single_port_ram_data_out_net_x3: std_logic_vector(15 downto 0);
  signal single_port_ram_data_out_net_x4: std_logic_vector(15 downto 0);
  signal single_port_ram_data_out_net_x8: std_logic_vector(15 downto 0);
  signal slice1_y_net_x1: std_logic_vector(23 downto 0);
  signal slice1_y_net_x3: std_logic_vector(15 downto 0);
  signal slice1_y_net_x4: std_logic_vector(7 downto 0);
  signal sync_net_x2: std_logic;

begin
  ce_1_sg_x14 <= ce_1;
  clk_1_sg_x14 <= clk_1;
  pol1_in1_net_x2 <= pol1_in1;
  sync_net_x2 <= sync;
  pol1_out1 <= concat_y_net_x7;
  sync_out <= delay1_q_net_x2;

  pol1_in1_first_tap_95f833393f: entity work.pol1_in1_first_tap_entity_95f833393f
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      din => pol1_in1_net_x2,
      sync => sync_net_x2,
      coeff_out => slice1_y_net_x1,
      dout => single_port_ram_data_out_net_x4,
      sync_out => mux_y_net_x3,
      taps_out => concat_y_net_x2
    );

  pol1_in1_last_tap_6e90a55d34: entity work.pol1_in1_last_tap_entity_6e90a55d34
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      coeff => slice1_y_net_x4,
      din => single_port_ram_data_out_net_x3,
      sync => mux_y_net_x2,
      taps => concat_y_net_x6,
      dout => concat_y_net_x7,
      sync_out => delay1_q_net_x2
    );

  pol1_in1_tap2_0a9c2b1a2d: entity work.pol1_in1_tap2_entity_0a9c2b1a2d
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      coeff => slice1_y_net_x1,
      din => single_port_ram_data_out_net_x4,
      sync => mux_y_net_x3,
      taps => concat_y_net_x2,
      coeff_out => slice1_y_net_x3,
      dout => single_port_ram_data_out_net_x8,
      sync_out => mux_y_net_x6,
      taps_out => concat_y_net_x5
    );

  pol1_in1_tap3_2ce3003291: entity work.pol1_in1_tap3_entity_2ce3003291
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      coeff => slice1_y_net_x3,
      din => single_port_ram_data_out_net_x8,
      sync => mux_y_net_x6,
      taps => concat_y_net_x5,
      coeff_out => slice1_y_net_x4,
      dout => single_port_ram_data_out_net_x3,
      sync_out => mux_y_net_x2,
      taps_out => concat_y_net_x6
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_core"

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

architecture structural of pfb_core is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "pfb_core,sysgen_core_11_5,{total_blocks=268,xilinx_adder_subtracter_block=6,xilinx_arithmetic_relational_operator_block=6,xilinx_bit_slice_extractor_block=22,xilinx_bus_concatenator_block=9,xilinx_bus_multiplexer_block=3,xilinx_constant_block_block=15,xilinx_counter_block=7,xilinx_delay_block=6,xilinx_gateway_in_block=2,xilinx_gateway_out_block=2,xilinx_input_scaler_block=2,xilinx_logical_block_block=3,xilinx_multiplier_block=8,xilinx_register_block=1,xilinx_single_port_random_access_memory_block=3,xilinx_single_port_read_only_memory_block=4,xilinx_system_generator_block=1,xilinx_type_converter_block=2,xilinx_type_reinterpreter_block=34,}";

  signal ce_1_sg_x15: std_logic;
  signal clk_1_sg_x15: std_logic;
  signal pol1_in1_net: std_logic_vector(15 downto 0);
  signal pol1_out1_net: std_logic_vector(35 downto 0);
  signal sync_net: std_logic;
  signal sync_out_net: std_logic;

begin
  ce_1_sg_x15 <= ce_1;
  clk_1_sg_x15 <= clk_1;
  pol1_in1_net <= pol1_in1;
  sync_net <= sync;
  pol1_out1 <= pol1_out1_net;
  sync_out <= sync_out_net;

  pfb_fir_a4f09a2d8b: entity work.pfb_fir_entity_a4f09a2d8b
    port map (
      ce_1 => ce_1_sg_x15,
      clk_1 => clk_1_sg_x15,
      pol1_in1 => pol1_in1_net,
      sync => sync_net,
      pol1_out1 => pol1_out1_net,
      sync_out => sync_out_net
    );

end structural;
