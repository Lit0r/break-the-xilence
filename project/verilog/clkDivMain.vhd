------------------------------------------------------------------------
--	clkDivMain.vhd  -- The primary system clock divider
------------------------------------------------------------------------
-- Author: Luke Renaud
--	Copyright 2011 Digilent, Inc.
------------------------------------------------------------------------
-- Module description
--		A simple clock divider to take the primary 100MHz system clock
--		down to 100KHz.
--
--  Inputs:
--		clkSys100MHz		100MHz input system clock
--		rst				Device Reset Signal
--		
--  Outputs:
--		clkOut10KHz		10KHz desired output clock
--
------------------------------------------------------------------------
-- Revision History:
--
--	05/19/2011(Luke Renaud): created
--
------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clkDivMain is
    Port ( clkSys100MHz	: in	STD_LOGIC;
           clkOut100KHz	: out	STD_LOGIC;
           rst				: in	STD_LOGIC);
end clkDivMain;

architecture Behavioral of clkDivMain is

	------------------------------------------------------------------------
	-- Component Declarations
	------------------------------------------------------------------------
	-- None
	
	------------------------------------------------------------------------
	-- General control and timing signals
	------------------------------------------------------------------------
	signal fClkInternal	: STD_LOGIC := '0';

	------------------------------------------------------------------------
	-- Data path signals
	------------------------------------------------------------------------
	signal cValue			: STD_LOGIC_VECTOR(15 downto 0) := X"0000";
	signal lRefValue		: STD_LOGIC_VECTOR(15 downto 0);

	------------------------------------------------------------------------
	-- Implementation
	------------------------------------------------------------------------
begin

	-- Count to this target value
	lRefValue <= X"01F3"; -- 499 for the half wave divider of 1000
	
	-- Output clock follows the internal toggled bit
	clkOut100KHz <= fClkInternal;

	process(rst, clkSys100MHz)
	begin
		-- Reset Behavior
		if (rst = '1') then
			fClkInternal <= '0';
			cValue <= X"0000";
		-- On the rising edge increment the counter
		elsif rising_edge(clkSys100MHz) then
			if (cValue = lRefValue) then
				-- Toggle the clock on a counter delay at the reference
				fClkInternal <= not fClkInternal;			
				-- And Reset the counter.
				cValue <= X"0000";
			else
				cValue <= cValue + 1;
			end if;
		end if;
	end process;


end Behavioral;

