-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
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
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
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
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
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
      epb_data => epb_data,
      epb_addr => epb_addr,
      epb_addr_gp => epb_addr_gp,
      epb_cs_n => epb_cs_n,
      epb_be_n => epb_be_n,
      epb_r_w_n => epb_r_w_n,
      epb_oe_n => epb_oe_n,
      epb_rdy => epb_rdy,
      ppc_irq_n => ppc_irq_n,
      quadc0_adc0_clk_in_p => quadc0_adc0_clk_in_p,
      quadc0_adc1_clk_in_p => quadc0_adc1_clk_in_p,
      quadc0_adc2_clk_in_p => quadc0_adc2_clk_in_p,
      quadc0_adc3_clk_in_p => quadc0_adc3_clk_in_p,
      quadc0_adc0_data_in_p => quadc0_adc0_data_in_p,
      quadc0_adc1_data_in_p => quadc0_adc1_data_in_p,
      quadc0_adc2_data_in_p => quadc0_adc2_data_in_p,
      quadc0_adc3_data_in_p => quadc0_adc3_data_in_p,
      quadc0_adc0_clk_in_n => quadc0_adc0_clk_in_n,
      quadc0_adc1_clk_in_n => quadc0_adc1_clk_in_n,
      quadc0_adc2_clk_in_n => quadc0_adc2_clk_in_n,
      quadc0_adc3_clk_in_n => quadc0_adc3_clk_in_n,
      quadc0_adc0_data_in_n => quadc0_adc0_data_in_n,
      quadc0_adc1_data_in_n => quadc0_adc1_data_in_n,
      quadc0_adc2_data_in_n => quadc0_adc2_data_in_n,
      quadc0_adc3_data_in_n => quadc0_adc3_data_in_n,
      quadc0_sync_in_p => quadc0_sync_in_p,
      quadc0_sync_in_n => quadc0_sync_in_n,
      quadc1_adc0_clk_in_p => quadc1_adc0_clk_in_p,
      quadc1_adc1_clk_in_p => quadc1_adc1_clk_in_p,
      quadc1_adc2_clk_in_p => quadc1_adc2_clk_in_p,
      quadc1_adc3_clk_in_p => quadc1_adc3_clk_in_p,
      quadc1_adc0_data_in_p => quadc1_adc0_data_in_p,
      quadc1_adc1_data_in_p => quadc1_adc1_data_in_p,
      quadc1_adc2_data_in_p => quadc1_adc2_data_in_p,
      quadc1_adc3_data_in_p => quadc1_adc3_data_in_p,
      quadc1_adc0_clk_in_n => quadc1_adc0_clk_in_n,
      quadc1_adc1_clk_in_n => quadc1_adc1_clk_in_n,
      quadc1_adc2_clk_in_n => quadc1_adc2_clk_in_n,
      quadc1_adc3_clk_in_n => quadc1_adc3_clk_in_n,
      quadc1_adc0_data_in_n => quadc1_adc0_data_in_n,
      quadc1_adc1_data_in_n => quadc1_adc1_data_in_n,
      quadc1_adc2_data_in_n => quadc1_adc2_data_in_n,
      quadc1_adc3_data_in_n => quadc1_adc3_data_in_n,
      quadc1_sync_in_p => quadc1_sync_in_p,
      quadc1_sync_in_n => quadc1_sync_in_n,
      rpoco8_testbench_v11_led_ext => rpoco8_testbench_v11_led_ext(0 to 0),
      rpoco8_testbench_v11_walsh_walsh1_ext => rpoco8_testbench_v11_walsh_walsh1_ext(0 to 0),
      rpoco8_testbench_v11_walsh_walsh2_ext => rpoco8_testbench_v11_walsh_walsh2_ext(0 to 0),
      rpoco8_testbench_v11_walsh_walsh3_ext => rpoco8_testbench_v11_walsh_walsh3_ext(0 to 0),
      rpoco8_testbench_v11_walsh_walsh4_ext => rpoco8_testbench_v11_walsh_walsh4_ext(0 to 0),
      rpoco8_testbench_v11_walsh_walsh5_ext => rpoco8_testbench_v11_walsh_walsh5_ext(0 to 0),
      rpoco8_testbench_v11_walsh_walsh6_ext => rpoco8_testbench_v11_walsh_walsh6_ext(0 to 0),
      rpoco8_testbench_v11_walsh_walsh7_ext => rpoco8_testbench_v11_walsh_walsh7_ext(0 to 0),
      rpoco8_testbench_v11_walsh_walsh8_ext => rpoco8_testbench_v11_walsh_walsh8_ext(0 to 0)
    );

end architecture STRUCTURE;

