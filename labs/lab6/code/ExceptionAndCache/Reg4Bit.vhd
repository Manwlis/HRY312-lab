----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:21:34 02/11/2017 
-- Design Name: 
-- Module Name:    Reg4Bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Reg4Bit is
    Port ( Clk : in  STD_LOGIC;
           WrEn : in  STD_LOGIC;
           Din : in  STD_LOGIC_VECTOR (3 downto 0);
           Dout : inout  STD_LOGIC_VECTOR (3 downto 0));
end Reg4Bit;

architecture Behavioral of Reg4Bit is

COMPONENT Reg1Bit
port
(Clk,WrEn,Din : in std_logic;
 Dout : inout std_logic);
END COMPONENT;

begin

Reg1Bit3:Reg1Bit
port map(
  Clk => Clk,
  WrEn => WrEn,
  Din => Din(3),
  Dout => Dout(3));
  
Reg1Bit2:Reg1Bit
port map(
  Clk => Clk,
  WrEn => WrEn,
  Din => Din(2),
  Dout => Dout(2));
  
Reg1Bit1:Reg1Bit
port map(
  Clk => Clk,
  WrEn => WrEn,
  Din => Din(1),
  Dout => Dout(1));
  
Reg1Bit0:Reg1Bit
port map(
  Clk => Clk,
  WrEn => WrEn,
  Din => Din(0),
  Dout => Dout(0));

end Behavioral;
