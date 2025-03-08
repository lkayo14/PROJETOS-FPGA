-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/24/2021 19:53:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          somador_completo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY somador_completo_vhd_vec_tst IS
END somador_completo_vhd_vec_tst;
ARCHITECTURE somador_completo_arch OF somador_completo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL S : STD_LOGIC;
SIGNAL Te : STD_LOGIC;
SIGNAL Ts : STD_LOGIC;
COMPONENT somador_completo
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	S : OUT STD_LOGIC;
	Te : IN STD_LOGIC;
	Ts : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : somador_completo
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	S => S,
	Te => Te,
	Ts => Ts
	);

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '0';
	WAIT FOR 400000 ps;
	A <= '1';
	WAIT FOR 400000 ps;
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		B <= '0';
		WAIT FOR 200000 ps;
		B <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- Te
t_prcs_Te: PROCESS
BEGIN
LOOP
	Te <= '0';
	WAIT FOR 100000 ps;
	Te <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Te;
END somador_completo_arch;
