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
-- Generated on "12/01/2021 22:18:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          COMUTADOR
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY COMUTADOR_vhd_vec_tst IS
END COMUTADOR_vhd_vec_tst;
ARCHITECTURE COMUTADOR_arch OF COMUTADOR_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL B : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL DISPLAY_0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL K1 : STD_LOGIC;
SIGNAL K2 : STD_LOGIC;
SIGNAL K3 : STD_LOGIC;
SIGNAL P : STD_LOGIC;
COMPONENT COMUTADOR
	PORT (
	B : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	DISPLAY_0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	K1 : BUFFER STD_LOGIC;
	K2 : BUFFER STD_LOGIC;
	K3 : BUFFER STD_LOGIC;
	P : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : COMUTADOR
	PORT MAP (
-- list connections between master ports and signals
	B => B,
	CLK => CLK,
	DISPLAY_0 => DISPLAY_0,
	K1 => K1,
	K2 => K2,
	K3 => K3,
	P => P
	);

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;

-- P
t_prcs_P: PROCESS
BEGIN
	P <= '0';
WAIT;
END PROCESS t_prcs_P;
END COMUTADOR_arch;
