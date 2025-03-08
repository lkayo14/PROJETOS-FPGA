ENTITY FSM_1 IS
PORT (S1,S2, IN_CLK : IN BIT;
C1, C2, C3 : OUT BIT;
SAIDA: OUT INTEGER RANGE 0 TO 7);
END FSM_1;

ARCHITECTURE ONE OF FSM_1 IS
TYPE STATE IS (GP, H1, GB, H5, H2, PA, H4, H3);
SIGNAL AUX : STATE;
BEGIN
PROCESS (DIV_CLK)
BEGIN
IF (IN_CLK'EVENT)AND(IN_CLK='1')THEN
       CASE AUX IS 
		 WHEN GP =>
		 IF (S1='0'AND S2='1') THEN
		 AUX<=H1;
		 ELSIF (S1='0'AND S2='0') THEN
		 AUX<=H4;
		 ELSE
		 AUX<=GP;
		 END IF;
		 
		 WHEN H1 =>
		 AUX<= GB;
		 
		 WHEN GB =>
		 IF (S1='1') THEN
		 AUX<=H5;
       ELSIF (S1='0'AND S2='0') THEN
		 AUX<=H2;
		 ELSE
		 AUX<=GB;
		 END IF;
		 
		 WHEN H2 =>
		 AUX<= PA;
		 
		 WHEN H5 =>
		 AUX<= GP;
		 
		 WHEN H4 =>
		 AUX<= PA;
		 
		 WHEN PA =>
		 IF (S1='1') THEN
		 AUX<=H3;
       ELSE 
		 AUX<=PA;
		 END IF;
		 
		 WHEN H3 =>
		 AUX<= GP;
		 
		END CASE;
		END IF;
END PROCESS;
	
	
WITH AUX SELECT
	C1<= '1' WHEN GP,
		  '1' WHEN H1,
		  '1' WHEN H4,
		  '0' WHEN OTHERS;

WITH AUX SELECT
	C2<= '1' WHEN GB,
		  '1' WHEN H2,
		  '1' WHEN H5,
		  '0' WHEN OTHERS;		  
		  
WITH AUX SELECT
	C3<= '1' WHEN GP,
		  '1' WHEN H1,
		  '1' WHEN H4,
		  '0' WHEN OTHERS;	
	
WITH AUX SELECT
	DEC<= '0' WHEN GP,
		   '1' WHEN H1,
		   '2' WHEN GB,
		   '3' WHEN H5,
			'4' WHEN H2,
		   '5' WHEN PA,
			'6' WHEN H4,
			'7' WHEN H3;
	
		 
END ONE;

		 
		 
		 