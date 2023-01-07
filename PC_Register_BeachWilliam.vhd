LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
ENTITY PC_Register_BeachWilliam IS
	PORT(LOAD, INC, RESET, CLOCK: IN STD_LOGIC;
		 D			: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 Q			: BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0));
END PC_Register_BeachWilliam;

ARCHITECTURE Behavior OF PC_Register_BeachWilliam IS
BEGIN
	PROCESS(CLOCK)
	BEGIN
		IF RISING_EDGE(CLOCK) THEN
			IF RESET = '1' THEN
				Q <= "0000000000000000";
			ELSIF LOAD = '1' THEN
				Q <= D;
			ELSIF INC = '1' THEN
				Q <= STD_LOGIC_VECTOR(UNSIGNED(Q) + 1);
			ELSE
				Q <= Q;
			END IF;
		END IF;
	END PROCESS;
END Behavior;