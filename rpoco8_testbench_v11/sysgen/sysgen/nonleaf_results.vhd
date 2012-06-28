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
