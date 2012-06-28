library IEEE;
use IEEE.std_logic_1164.all;

entity eq_fft_core is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeff: in std_logic_vector(16 downto 0); 
    coeff_addr: in std_logic_vector(5 downto 0); 
    coeff_we: in std_logic; 
    pol1: in std_logic_vector(35 downto 0); 
    sync: in std_logic; 
    clip: out std_logic; 
    dout: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end eq_fft_core;
