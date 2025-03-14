ENTITY somador_completo IS 
PORT ( A, B, Te: IN BIT;
S, Ts: OUT BIT);
END somador_completo;

ARCHITECTURE one OF  somador_completo IS 
SIGNAL X: BIT_VECTOR(2 DOWNTO 0);
BEGIN
X<= A & B &Te;

WITH X SELECT 
   S<= '0' WHEN "000",
		 '1' WHEN "001",
		 '1' WHEN "010",
		 '0' WHEN "011",
		 '1' WHEN "100",
		 '0' WHEN "101",
		 '0' WHEN "110",
		 '1' WHEN "111";
		 
WITH X SELECT
	Ts<= '0' WHEN "000",
		  '0'	WHEN "001",
		  '0' WHEN "010",
		  '1' WHEN "011",
		  '0' WHEN "100",
		  '1' WHEN "101",
		  '1' WHEN "110",
		  '1' WHEN "111";
		  

END one;