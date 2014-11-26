------------------------------------------------------------------------
--	masterController.vhd  --  Overall Project Controller Module
------------------------------------------------------------------------
-- Author: Luke Renaud 
--	Copyright 2011 Digilent, Inc.
------------------------------------------------------------------------
-- Module description
--		This module manages the full I/O of the system. The 100MHz clock
--		is fed through two clock dividers to produce a 100KHz signal and
--		a 100Hz signal. The 100KHz signal is used to interface with two
--		Pmod's to send out an arbitrary number, convert it to an analog
--		value, then to convert it back into a digital number.
--		
--		The 100Hz clock is used to drive the counter that controls what number
--		should currently be stored in the DA1, and the target value that
--		the AD2 is trying to read.
--
--		Chipscope may then be used to read the state of the board. The lower
--		12 bits of the wRetSignal0 will contain the ADC value, this will be
--		shown in comparision to the 8-bits sent to the DAC.
--	
--		To compare the values graphically, select signals 0 through 11 in the
--		Signals pane, right click, and select copy to new bus. Then select
--		signals 4 through 11 and select move to new bus. Finally select signals
--		12 through 19 and select move to new bus. This should result in three
--		busses which can be ploted in the Bus Plot section of ChipScope for
--		comparision.
--
--  Inputs:
--		RESET			Main Reset Controller
--		SYS_CLK		100MHz onboard system clock
--		AD2_SDA		PmodAD2 I2C interface In/Out data line
--		AD2_SCL		PmodAD2 I2C interface In/Out clock line
--
--  Outputs:
--		DA1_SYNC		PmodDA1 select line (labeled SYNC on the PCB)
--		DA1_SCLK		PmodDA1 select data clock line. 
--		DA1_SD0		PmodDA1 serial data channel 0
--		DA1_SD1		PmodDA1 serial data channel 1
--		DCH0			The output of the PmodAD2, tied to an output so that the optomizer
--							doesn't remove it.
--		CHIP_EXT		Trigger signal for Chipscope to sample.
--
------------------------------------------------------------------------
-- Revision History:
--
--	05/20/2011(Luke Renaud): created
--	06/01/2011(Luke Renaud): Modified for PmodAD2
--
------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity masterControler is
    Port ( RESET		: in		STD_LOGIC;
           SYS_CLK	: in		STD_LOGIC;
			  AD2_SCL	: inout	STD_LOGIC;
			  AD2_SDA	: inout	STD_LOGIC;
			  DCH0		: out		STD_LOGIC_VECTOR(15 downto 0);
			  SCL_ALT_IN : inout	STD_LOGIC;
			  SDA_ALT_IN : inout	STD_LOGIC);
end masterControler;

architecture Behavioral of masterControler is

	------------------------------------------------------------------------
	-- Component Declarations
	------------------------------------------------------------------------

	--  Project Components
	component internalCounter is
		Port (	clkIn		: in	STD_LOGIC;
					rst		: in	STD_LOGIC;
					outNum	: out	STD_LOGIC_VECTOR (7 downto 0));
	end component;

	component clkDivMain is
		Port (	clkSys100MHz	: in	STD_LOGIC;
					clkOut100KHz	: out	STD_LOGIC;
					rst				: in	STD_LOGIC);
	end component;

	component clkDivSecondary is
		Port (	clkInt100KHz	: in	STD_LOGIC;
					clkOut100Hz		: out	STD_LOGIC;
					early100Hz		: out STD_LOGIC;
					rst				: in	STD_LOGIC);
	end component;

	component pmodAD2_ctrl is
		Port (	mainClk		: in		STD_LOGIC;
					SDA_mst		: inout	STD_LOGIC;
					SCL_mst		: inout	STD_LOGIC;
					wData0		: out		STD_LOGIC_VECTOR(15 downto 0);
					rst			: in		STD_LOGIC);
	end component;
	
	------------------------------------------------------------------------
	-- General control and timing signals
	------------------------------------------------------------------------
	signal clockInternal : STD_LOGIC;
	signal clockTrigger : STD_LOGIC;
	signal fRxDone : STD_LOGIC;
	signal fRstRXCtrl : STD_LOGIC;

	------------------------------------------------------------------------
	-- Data path signals
	------------------------------------------------------------------------
	signal wValue : STD_LOGIC_VECTOR(7 downto 0);
	signal wRetSignal0 : STD_LOGIC_VECTOR(15 downto 0);

	signal SDA_ctrl : STD_LOGIC;
	signal SCL_ctrl : STD_LOGIC;

------------------------------------------------------------------------
-- Implementation
------------------------------------------------------------------------
begin

-- Divide from 100MHz to 100KHz
mainDivider: clkDivMain PORT MAP(
			clkSys100MHz =>	SYS_CLK,
			clkOut100KHz =>	clockInternal,
			rst =>				RESET);

-- Divide from 100KHz to 100Hz
secondDivider: clkDivSecondary PORT MAP(
			clkInt100KHz =>	clockInternal,
			clkOut100Hz =>		clockTrigger,
			rst =>				RESET);

-- Count from 0 to 255 for internal use
valueCounter: internalCounter PORT MAP(
			clkIn =>		clockTrigger,
			rst =>		RESET,
			outNum =>	wValue);

-- When the 100Hz signal goes high, read in the current
-- PmodAD1 value for comparision to that of the DA1.
analogReciever: pmodAD2_ctrl PORT MAP(
			mainClk =>	SYS_CLK,
			SDA_mst =>	AD2_SDA,
			SCL_mst =>	AD2_SCL,
			wData0 =>	wRetSignal0,
			rst =>		fRstRXCtrl);

	
-- This flag controls the reset on the DA1 controller. It is only
-- going to transmit after comming out of a reset state, so we cause
-- it's reset signal to be controlled by either the system reset signal
-- or by the high state of the 100Hz clock.
fRstRXCtrl <= RESET or not clockTrigger;

-- Tie the ADC return values to something so that they
-- aren't removed when we translate/map.
DCH0 <= wRetSignal0;

-- The PmodAD2 has dual SDA and SCL lines for daisy chaining TWI bus devices. If 
-- these other pins are brought low accadentially, then the device will refuse to
-- transmit data. To prevent this, we drive them as high impedance if they are 
-- connected. If they are disconnected, they are left floating and the system
-- should still work.
SDA_ALT_IN <= 'Z';
SCL_ALT_IN <= 'Z';

end Behavioral;

