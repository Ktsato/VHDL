library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;

entity mux2_1_vector is
	port ( i0, i1      : in  std_logic_vector (3 downto 0) ;
		   sel         : in  std_logic ;
		   y           : out std_logic_vector (3 downto 0 ) );
end mux2_1_vector ;
architecture arc_mux2_1_vector of mux2_1_vector is
begin

	y <= i0 when (sel = '0') else 
		 i1 when (sel = '1');
end arc_mux2_1_vector ; 