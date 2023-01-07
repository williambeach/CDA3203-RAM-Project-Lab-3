LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY Register_16Bit_BeachWilliam IS
	PORT(LOAD, CLOCK: IN STD_LOGIC;
		 D			: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 Q			: OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END Register_16Bit_BeachWilliam;

ARCHITECTURE Behavior OF Register_16Bit_BeachWilliam IS
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