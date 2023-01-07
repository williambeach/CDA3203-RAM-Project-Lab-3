LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY Register_1Bit_BeachWilliam IS
	PORT(D, LOAD, CLOCK: IN STD_LOGIC;
		 Q			   : OUT STD_LOGIC);
END Register_1Bit_BeachWilliam;

ARCHITECTURE Behavior OF Register_1Bit_BeachWilliam IS
BEGIN
	PROCESS(CLOCK)
	BEGIN
		IF RISING_EDGE(CLOCK) THEN
			IF LOAD = '1' THEN
				Q <= D;
			END IF;
		END IF;
	END PROCESS;
END Behavior;
		 