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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/01/2021 22:18:58"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	COMUTADOR IS
    PORT (
	CLK : IN std_logic;
	P : IN std_logic;
	B : IN std_logic;
	K1 : BUFFER std_logic;
	K2 : BUFFER std_logic;
	K3 : BUFFER std_logic;
	DISPLAY_0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END COMUTADOR;

-- Design Ports Information
-- K1	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K2	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K3	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_0[0]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_0[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_0[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_0[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_0[4]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_0[5]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_0[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF COMUTADOR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_P : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_K1 : std_logic;
SIGNAL ww_K2 : std_logic;
SIGNAL ww_K3 : std_logic;
SIGNAL ww_DISPLAY_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CHIP1|X~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \K1~output_o\ : std_logic;
SIGNAL \K2~output_o\ : std_logic;
SIGNAL \K3~output_o\ : std_logic;
SIGNAL \DISPLAY_0[0]~output_o\ : std_logic;
SIGNAL \DISPLAY_0[1]~output_o\ : std_logic;
SIGNAL \DISPLAY_0[2]~output_o\ : std_logic;
SIGNAL \DISPLAY_0[3]~output_o\ : std_logic;
SIGNAL \DISPLAY_0[4]~output_o\ : std_logic;
SIGNAL \DISPLAY_0[5]~output_o\ : std_logic;
SIGNAL \DISPLAY_0[6]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \CHIP1|Y[1]~1_combout\ : std_logic;
SIGNAL \CHIP1|Y~2_combout\ : std_logic;
SIGNAL \CHIP1|Y~0_combout\ : std_logic;
SIGNAL \CHIP1|X~0_combout\ : std_logic;
SIGNAL \CHIP1|X~q\ : std_logic;
SIGNAL \CHIP1|X~clkctrl_outclk\ : std_logic;
SIGNAL \P~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \CHIP2|Selector1~0_combout\ : std_logic;
SIGNAL \CHIP2|AUX.GB~q\ : std_logic;
SIGNAL \CHIP2|AUX~15_combout\ : std_logic;
SIGNAL \CHIP2|AUX.H5~q\ : std_logic;
SIGNAL \CHIP2|AUX~14_combout\ : std_logic;
SIGNAL \CHIP2|AUX.H2~q\ : std_logic;
SIGNAL \CHIP2|AUX~12_combout\ : std_logic;
SIGNAL \CHIP2|AUX.H4~q\ : std_logic;
SIGNAL \CHIP2|Selector2~0_combout\ : std_logic;
SIGNAL \CHIP2|AUX.PA~q\ : std_logic;
SIGNAL \CHIP2|AUX~16_combout\ : std_logic;
SIGNAL \CHIP2|AUX.H3~q\ : std_logic;
SIGNAL \CHIP2|Selector0~0_combout\ : std_logic;
SIGNAL \CHIP2|AUX.GP~q\ : std_logic;
SIGNAL \CHIP2|AUX~13_combout\ : std_logic;
SIGNAL \CHIP2|AUX.H1~q\ : std_logic;
SIGNAL \CHIP2|WideNor0~combout\ : std_logic;
SIGNAL \CHIP2|WideNor1~combout\ : std_logic;
SIGNAL \CHIP2|WideOr5~0_combout\ : std_logic;
SIGNAL \CHIP2|WideOr4~0_combout\ : std_logic;
SIGNAL \CHIP2|WideOr3~combout\ : std_logic;
SIGNAL \CHIP3|Mux6~0_combout\ : std_logic;
SIGNAL \CHIP3|Mux5~0_combout\ : std_logic;
SIGNAL \CHIP3|Mux4~0_combout\ : std_logic;
SIGNAL \CHIP3|Mux3~0_combout\ : std_logic;
SIGNAL \CHIP3|Mux2~0_combout\ : std_logic;
SIGNAL \CHIP3|Mux1~0_combout\ : std_logic;
SIGNAL \CHIP3|Mux5~1_combout\ : std_logic;
SIGNAL \CHIP1|Y\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CHIP3|ALT_INV_Mux2~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_P <= P;
ww_B <= B;
K1 <= ww_K1;
K2 <= ww_K2;
K3 <= ww_K3;
DISPLAY_0 <= ww_DISPLAY_0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CHIP1|X~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CHIP1|X~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\CHIP3|ALT_INV_Mux2~0_combout\ <= NOT \CHIP3|Mux2~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y12_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X10_Y19_N2
\K1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP2|WideNor0~combout\,
	devoe => ww_devoe,
	o => \K1~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\K2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP2|WideNor1~combout\,
	devoe => ww_devoe,
	o => \K2~output_o\);

-- Location: IOOBUF_X10_Y19_N23
\K3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP2|WideNor0~combout\,
	devoe => ww_devoe,
	o => \K3~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\DISPLAY_0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_0[0]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\DISPLAY_0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_0[1]~output_o\);

-- Location: IOOBUF_X11_Y25_N30
\DISPLAY_0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_0[2]~output_o\);

-- Location: IOOBUF_X10_Y22_N2
\DISPLAY_0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_0[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N9
\DISPLAY_0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP3|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_0[4]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\DISPLAY_0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_0[5]~output_o\);

-- Location: IOOBUF_X11_Y25_N23
\DISPLAY_0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP3|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_0[6]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y9_N22
\CHIP1|Y[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Y[1]~1_combout\ = \CHIP1|Y\(1) $ (\CHIP1|Y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHIP1|Y\(1),
	datad => \CHIP1|Y\(0),
	combout => \CHIP1|Y[1]~1_combout\);

-- Location: FF_X1_Y9_N23
\CHIP1|Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Y[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(1));

-- Location: LCCOMB_X1_Y9_N24
\CHIP1|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Y~2_combout\ = (\CHIP1|Y\(1) & (\CHIP1|Y\(2) $ (\CHIP1|Y\(0)))) # (!\CHIP1|Y\(1) & (\CHIP1|Y\(2) & \CHIP1|Y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHIP1|Y\(1),
	datac => \CHIP1|Y\(2),
	datad => \CHIP1|Y\(0),
	combout => \CHIP1|Y~2_combout\);

-- Location: FF_X1_Y9_N25
\CHIP1|Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Y~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(2));

-- Location: LCCOMB_X1_Y9_N28
\CHIP1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Y~0_combout\ = (!\CHIP1|Y\(0) & ((\CHIP1|Y\(1)) # (!\CHIP1|Y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Y\(2),
	datac => \CHIP1|Y\(0),
	datad => \CHIP1|Y\(1),
	combout => \CHIP1|Y~0_combout\);

-- Location: FF_X1_Y9_N29
\CHIP1|Y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(0));

-- Location: LCCOMB_X1_Y9_N30
\CHIP1|X~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|X~0_combout\ = \CHIP1|X~q\ $ (((!\CHIP1|Y\(0) & (!\CHIP1|Y\(1) & \CHIP1|Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|X~q\,
	datab => \CHIP1|Y\(0),
	datac => \CHIP1|Y\(1),
	datad => \CHIP1|Y\(2),
	combout => \CHIP1|X~0_combout\);

-- Location: FF_X1_Y9_N27
\CHIP1|X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \CHIP1|X~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|X~q\);

-- Location: CLKCTRL_G1
\CHIP1|X~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CHIP1|X~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CHIP1|X~clkctrl_outclk\);

-- Location: IOIBUF_X10_Y20_N15
\P~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P,
	o => \P~input_o\);

-- Location: IOIBUF_X10_Y20_N1
\B~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X11_Y20_N2
\CHIP2|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|Selector1~0_combout\ = (\CHIP2|AUX.H1~q\) # ((!\P~input_o\ & (\B~input_o\ & \CHIP2|AUX.GB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P~input_o\,
	datab => \B~input_o\,
	datac => \CHIP2|AUX.GB~q\,
	datad => \CHIP2|AUX.H1~q\,
	combout => \CHIP2|Selector1~0_combout\);

-- Location: FF_X11_Y20_N3
\CHIP2|AUX.GB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHIP1|X~clkctrl_outclk\,
	d => \CHIP2|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP2|AUX.GB~q\);

-- Location: LCCOMB_X11_Y20_N20
\CHIP2|AUX~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|AUX~15_combout\ = (\P~input_o\ & \CHIP2|AUX.GB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P~input_o\,
	datad => \CHIP2|AUX.GB~q\,
	combout => \CHIP2|AUX~15_combout\);

-- Location: FF_X11_Y20_N21
\CHIP2|AUX.H5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHIP1|X~clkctrl_outclk\,
	d => \CHIP2|AUX~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP2|AUX.H5~q\);

-- Location: LCCOMB_X11_Y20_N28
\CHIP2|AUX~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|AUX~14_combout\ = (!\P~input_o\ & (!\B~input_o\ & \CHIP2|AUX.GB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P~input_o\,
	datac => \B~input_o\,
	datad => \CHIP2|AUX.GB~q\,
	combout => \CHIP2|AUX~14_combout\);

-- Location: FF_X11_Y20_N29
\CHIP2|AUX.H2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHIP1|X~clkctrl_outclk\,
	d => \CHIP2|AUX~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP2|AUX.H2~q\);

-- Location: LCCOMB_X11_Y20_N12
\CHIP2|AUX~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|AUX~12_combout\ = (!\P~input_o\ & (!\B~input_o\ & !\CHIP2|AUX.GP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P~input_o\,
	datac => \B~input_o\,
	datad => \CHIP2|AUX.GP~q\,
	combout => \CHIP2|AUX~12_combout\);

-- Location: FF_X11_Y20_N13
\CHIP2|AUX.H4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHIP1|X~clkctrl_outclk\,
	d => \CHIP2|AUX~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP2|AUX.H4~q\);

-- Location: LCCOMB_X11_Y20_N10
\CHIP2|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|Selector2~0_combout\ = (\CHIP2|AUX.H2~q\) # ((\CHIP2|AUX.H4~q\) # ((!\P~input_o\ & \CHIP2|AUX.PA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P~input_o\,
	datab => \CHIP2|AUX.H2~q\,
	datac => \CHIP2|AUX.PA~q\,
	datad => \CHIP2|AUX.H4~q\,
	combout => \CHIP2|Selector2~0_combout\);

-- Location: FF_X11_Y20_N11
\CHIP2|AUX.PA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHIP1|X~clkctrl_outclk\,
	d => \CHIP2|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP2|AUX.PA~q\);

-- Location: LCCOMB_X11_Y20_N16
\CHIP2|AUX~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|AUX~16_combout\ = (\P~input_o\ & \CHIP2|AUX.PA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P~input_o\,
	datad => \CHIP2|AUX.PA~q\,
	combout => \CHIP2|AUX~16_combout\);

-- Location: FF_X11_Y20_N17
\CHIP2|AUX.H3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHIP1|X~clkctrl_outclk\,
	d => \CHIP2|AUX~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP2|AUX.H3~q\);

-- Location: LCCOMB_X11_Y20_N24
\CHIP2|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|Selector0~0_combout\ = (!\CHIP2|AUX.H5~q\ & (!\CHIP2|AUX.H3~q\ & ((\CHIP2|AUX.GP~q\) # (!\P~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P~input_o\,
	datab => \CHIP2|AUX.H5~q\,
	datac => \CHIP2|AUX.GP~q\,
	datad => \CHIP2|AUX.H3~q\,
	combout => \CHIP2|Selector0~0_combout\);

-- Location: FF_X11_Y20_N25
\CHIP2|AUX.GP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHIP1|X~clkctrl_outclk\,
	d => \CHIP2|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP2|AUX.GP~q\);

-- Location: LCCOMB_X11_Y20_N6
\CHIP2|AUX~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|AUX~13_combout\ = (!\P~input_o\ & (\B~input_o\ & !\CHIP2|AUX.GP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P~input_o\,
	datac => \B~input_o\,
	datad => \CHIP2|AUX.GP~q\,
	combout => \CHIP2|AUX~13_combout\);

-- Location: FF_X11_Y20_N7
\CHIP2|AUX.H1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHIP1|X~clkctrl_outclk\,
	d => \CHIP2|AUX~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP2|AUX.H1~q\);

-- Location: LCCOMB_X11_Y20_N30
\CHIP2|WideNor0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|WideNor0~combout\ = (\CHIP2|AUX.H1~q\) # ((\CHIP2|AUX.H4~q\) # (!\CHIP2|AUX.GP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|AUX.H1~q\,
	datab => \CHIP2|AUX.H4~q\,
	datac => \CHIP2|AUX.GP~q\,
	combout => \CHIP2|WideNor0~combout\);

-- Location: LCCOMB_X11_Y20_N14
\CHIP2|WideNor1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|WideNor1~combout\ = (\CHIP2|AUX.H5~q\) # ((\CHIP2|AUX.GB~q\) # (\CHIP2|AUX.H2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|AUX.H5~q\,
	datac => \CHIP2|AUX.GB~q\,
	datad => \CHIP2|AUX.H2~q\,
	combout => \CHIP2|WideNor1~combout\);

-- Location: LCCOMB_X11_Y20_N22
\CHIP2|WideOr5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|WideOr5~0_combout\ = ((\CHIP2|AUX.GB~q\) # ((\CHIP2|AUX.H4~q\) # (\CHIP2|AUX.H2~q\))) # (!\CHIP2|AUX.GP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|AUX.GP~q\,
	datab => \CHIP2|AUX.GB~q\,
	datac => \CHIP2|AUX.H4~q\,
	datad => \CHIP2|AUX.H2~q\,
	combout => \CHIP2|WideOr5~0_combout\);

-- Location: LCCOMB_X11_Y20_N8
\CHIP2|WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|WideOr4~0_combout\ = ((\CHIP2|AUX.PA~q\) # ((\CHIP2|AUX.H1~q\) # (\CHIP2|AUX.H2~q\))) # (!\CHIP2|AUX.GP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|AUX.GP~q\,
	datab => \CHIP2|AUX.PA~q\,
	datac => \CHIP2|AUX.H1~q\,
	datad => \CHIP2|AUX.H2~q\,
	combout => \CHIP2|WideOr4~0_combout\);

-- Location: LCCOMB_X11_Y20_N0
\CHIP2|WideOr3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|WideOr3~combout\ = ((\CHIP2|AUX.GB~q\) # ((\CHIP2|AUX.H5~q\) # (\CHIP2|AUX.H1~q\))) # (!\CHIP2|AUX.GP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|AUX.GP~q\,
	datab => \CHIP2|AUX.GB~q\,
	datac => \CHIP2|AUX.H5~q\,
	datad => \CHIP2|AUX.H1~q\,
	combout => \CHIP2|WideOr3~combout\);

-- Location: LCCOMB_X11_Y21_N16
\CHIP3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP3|Mux6~0_combout\ = (!\CHIP2|WideOr5~0_combout\ & (\CHIP2|WideOr4~0_combout\ & \CHIP2|WideOr3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|WideOr5~0_combout\,
	datac => \CHIP2|WideOr4~0_combout\,
	datad => \CHIP2|WideOr3~combout\,
	combout => \CHIP3|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y21_N14
\CHIP3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP3|Mux5~0_combout\ = (\CHIP2|WideOr5~0_combout\ & (\CHIP2|WideOr4~0_combout\ & !\CHIP2|WideOr3~combout\)) # (!\CHIP2|WideOr5~0_combout\ & (\CHIP2|WideOr4~0_combout\ $ (!\CHIP2|WideOr3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|WideOr5~0_combout\,
	datac => \CHIP2|WideOr4~0_combout\,
	datad => \CHIP2|WideOr3~combout\,
	combout => \CHIP3|Mux5~0_combout\);

-- Location: LCCOMB_X11_Y21_N0
\CHIP3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP3|Mux4~0_combout\ = (\CHIP2|WideOr3~combout\ & (!\CHIP2|WideOr5~0_combout\)) # (!\CHIP2|WideOr3~combout\ & ((!\CHIP2|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|WideOr5~0_combout\,
	datac => \CHIP2|WideOr4~0_combout\,
	datad => \CHIP2|WideOr3~combout\,
	combout => \CHIP3|Mux4~0_combout\);

-- Location: LCCOMB_X11_Y21_N10
\CHIP3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP3|Mux3~0_combout\ = (\CHIP2|WideOr4~0_combout\ & ((\CHIP2|WideOr3~combout\))) # (!\CHIP2|WideOr4~0_combout\ & (\CHIP2|WideOr5~0_combout\ & !\CHIP2|WideOr3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|WideOr5~0_combout\,
	datac => \CHIP2|WideOr4~0_combout\,
	datad => \CHIP2|WideOr3~combout\,
	combout => \CHIP3|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y21_N12
\CHIP3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP3|Mux2~0_combout\ = ((!\CHIP2|WideOr5~0_combout\ & \CHIP2|WideOr3~combout\)) # (!\CHIP2|WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|WideOr5~0_combout\,
	datac => \CHIP2|WideOr4~0_combout\,
	datad => \CHIP2|WideOr3~combout\,
	combout => \CHIP3|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y21_N26
\CHIP3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP3|Mux1~0_combout\ = (\CHIP2|WideOr4~0_combout\ & (!\CHIP2|WideOr5~0_combout\ & !\CHIP2|WideOr3~combout\)) # (!\CHIP2|WideOr4~0_combout\ & ((\CHIP2|WideOr3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|WideOr5~0_combout\,
	datac => \CHIP2|WideOr4~0_combout\,
	datad => \CHIP2|WideOr3~combout\,
	combout => \CHIP3|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y21_N4
\CHIP3|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP3|Mux5~1_combout\ = \CHIP2|WideOr4~0_combout\ $ (\CHIP2|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHIP2|WideOr4~0_combout\,
	datad => \CHIP2|WideOr5~0_combout\,
	combout => \CHIP3|Mux5~1_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_K1 <= \K1~output_o\;

ww_K2 <= \K2~output_o\;

ww_K3 <= \K3~output_o\;

ww_DISPLAY_0(0) <= \DISPLAY_0[0]~output_o\;

ww_DISPLAY_0(1) <= \DISPLAY_0[1]~output_o\;

ww_DISPLAY_0(2) <= \DISPLAY_0[2]~output_o\;

ww_DISPLAY_0(3) <= \DISPLAY_0[3]~output_o\;

ww_DISPLAY_0(4) <= \DISPLAY_0[4]~output_o\;

ww_DISPLAY_0(5) <= \DISPLAY_0[5]~output_o\;

ww_DISPLAY_0(6) <= \DISPLAY_0[6]~output_o\;
END structure;


