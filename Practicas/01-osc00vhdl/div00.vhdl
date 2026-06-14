library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity div00 is
	port(
		clkdiv: in std_logic;
		indiv: in std_logic_vector(5 downto 0);
		oscout: inout std_logic);
end div00;

architecture div0 of div00 is
	signal sdiv: std_logic_vector(21 downto 0);
begin
	pdiv: process(clkdiv)
	begin
		if (clkdiv'event and clkdiv = '1') then
			case indiv is
			---1
				when "000000" => 
					if(sdiv > "1000000000000000000000")then
						oscout <= not(oscout);
						sdiv <= (others => '0');
					else
						sdiv <= sdiv + '1';
						oscout <= oscout;
					end if;
			---2		
				when "000001" =>  
					if(sdiv > "0100000000000000000000")then
						oscout <= not(oscout);
						sdiv <= (others => '0');
					else
						sdiv <= sdiv + '1';
						oscout <= oscout;
					end if;
			---3		
				when "000011" =>  
					if(sdiv > "0010000000000000000000")then
						oscout <= not(oscout);
						sdiv <= (others => '0');
					else
						sdiv <= sdiv + '1';
						oscout <= oscout;
					end if;
			---4
				when "000111" =>  
					if(sdiv > "0001000000000000000000")then
						oscout <= not(oscout);
						sdiv <= (others => '0');
					else
						sdiv <= sdiv + '1';
						oscout <= oscout;
					end if;
			--5
				when "001111" =>  
					if(sdiv > "0000100000000000000000")then
						oscout <= not(oscout);
						sdiv <= (others => '0');
					else
						sdiv <= sdiv + '1';
						oscout <= oscout;
					end if;
			---6
				when "111111" =>  
					if(sdiv > "0000001000000000000000")then
						oscout <= not(oscout);
						sdiv <= (others => '0');
					else
						sdiv <= sdiv + '1';
						oscout <= oscout;
					end if;
			--7
				when "111110" =>  
					if(sdiv > "0000000001000000000000")then
						oscout <= not(oscout);
						sdiv <= (others => '0');
					else
						sdiv <= sdiv + '1';
						oscout <= oscout;
					end if;
			--8
				when "111100" =>  
					if(sdiv > "0000000000000010000000")then
						oscout <= not(oscout);
						sdiv <= (others => '0');
					else
						sdiv <= sdiv + '1';
						oscout <= oscout;
					end if;
			--9
				when others =>  null;
			end case;
		end if;
	end process pdiv;
end div0;
