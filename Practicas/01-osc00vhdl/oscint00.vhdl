library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
library machxo2;
use machxo2.all;

entity oscint00 is
	port(osc_int: out std_logic);
end oscint00;

architecture oscint0 of oscint00 is
	COMPONENT OSCH
		GENERIC (NOM_FREQ: string := "2.08");
		port (  STDBY:in std_logic;
				OSC:out std_logic;
				SEDSTDBY:out std_logic);
	END COMPONENT;
	attribute NOM_FREQ : string;
	attribute NOM_FREQ of OSCinst0 : label is "2.08";

begin
	OSCInst0: OSCH
	generic map ( NOM_FREQ => "2.08" )
	port map ( STDBY=> '0',
				OSC => osc_int);
end oscint0;
