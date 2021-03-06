----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:53:23 02/11/2017 
-- Design Name: 
-- Module Name:    mux32Bit - Behavioral 
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

entity mux16Bit is
    Port ( sel : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           Outt : out  STD_LOGIC_VECTOR (15 downto 0));
end mux16Bit;

architecture Behavioral of mux16Bit is

COMPONENT mux
port
(in0,in1,sel: in std_logic;
 output : out std_logic);
END COMPONENT;

begin

mux15:mux
port map(
   in0 => A(15),
	in1 => B(15),
	sel => sel,
	output => Outt(15));
	
mux14:mux
port map(
   in0 => A(14),
	in1 => B(14),
	sel => sel,
	output => Outt(14));
	
mux13:mux
port map(
   in0 => A(13),
	in1 => B(13),
	sel => sel,
	output => Outt(13));
	
mux12:mux
port map(
   in0 => A(12),
	in1 => B(12),
	sel => sel,
	output => Outt(12));
	
mux11:mux
port map(
   in0 => A(11),
	in1 => B(11),
	sel => sel,
	output => Outt(11));
	
mux10:mux
port map(
   in0 => A(10),
	in1 => B(10),
	sel => sel,
	output => Outt(10));
	
mux9:mux
port map(
   in0 => A(9),
	in1 => B(9),
	sel => sel,
	output => Outt(9));
	
mux8:mux
port map(
   in0 => A(8),
	in1 => B(8),
	sel => sel,
	output => Outt(8));
	
mux7:mux
port map(
   in0 => A(7),
	in1 => B(7),
	sel => sel,
	output => Outt(7));
	
mux6:mux
port map(
   in0 => A(6),
	in1 => B(6),
	sel => sel,
	output => Outt(6));
	
mux5:mux
port map(
   in0 => A(5),
	in1 => B(5),
	sel => sel,
	output => Outt(5));
	
mux4:mux
port map(
   in0 => A(4),
	in1 => B(4),
	sel => sel,
	output => Outt(4));
	
mux3:mux
port map(
   in0 => A(3),
	in1 => B(3),
	sel => sel,
	output => Outt(3));
	
mux2:mux
port map(
   in0 => A(2),
	in1 => B(2),
	sel => sel,
	output => Outt(2));
	
mux1:mux
port map(
   in0 => A(1),
	in1 => B(1),
	sel => sel,
	output => Outt(1));
	
mux0:mux
port map(
   in0 => A(0),
	in1 => B(0),
	sel => sel,
	output => Outt(0));

end Behavioral;

