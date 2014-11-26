------------------------------------------------------------------------
--	clkDivSecondary.vhd  -- The secondary system clock divider
------------------------------------------------------------------------
-- Author: Luke Renaud
--	Copyright 2011 Digilent, Inc.
------------------------------------------------------------------------
-- Module description
--		A simple clock divider to a 100KHz clock down to 100Hz.
--
--  Inputs:
--		clkInt100KHz	100KHz input internal clock
--		rst				Device Reset Signal
--		
--  Outputs:
--		clkOut100Hz		100Hz desired output clock
--		early100Hz		The same clock slightly ahead of the other signal
--								for ChipScope sampling.
--
------------------------------------------------------------------------
-- Revision History:
--
--	05/19/2011(Luke Renaud): created
--	06/06/2011(Luke Renaud): added early trigger for ChipScope sampling.
--
------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clkDivSecondary is
    Port ( clkInt100KHz	: in	STD_LOGIC;
           clkOut100Hz	: out	STD_LOGIC;
			  early100Hz	: out STD_LOGIC;
			  rst				: in	STD_LOGIC);
end clkDivSecondary;

architecture Behavioral of clkDivSecondary is

	------------------------------------------------------------------------
	-- Component Declarations
	------------------------------------------------------------------------
	-- None

	------------------------------------------------------------------------
	-- General control and timing signals
	------------------------------------------------------------------------
	signal cValue			: STD_LOGIC_VECTOR(15 downto 0) := X"0000";
	signal lRefValue		: STD_LOGIC_VECTOR(15 downto 0) := X"0000";
	signal lPreRefValue	: STD_LOGIC_VECTOR(15 downto 0) := X"0000";
	signal fClkInternal	: STD_LOGIC := '0';
	signal fClkPredelay	: STD_LOGIC := '0';

	------------------------------------------------------------------------
	-- Data path signals
	------------------------------------------------------------------------

	------------------------------------------------------------------------
	-- Implementation
	------------------------------------------------------------------------
begin

	-- Output clock follows the internal toggled bit
	clkOut100Hz <= fClkInternal;
	early100Hz <= fClkPredelay;
	-- Set the inital value for the clock divider halfway point.
	-- 499 for a half wave divider of 1000.
	lRefValue <= X"01F3";
	lPreRefValue <= X"01E8";

	process(rst, clkInt100KHz)
	begin
		-- Reset Behavior
		if (rst = '1') then
			fClkInternal <= '0';
			fClkPredelay <= '0';
			cValue <= X"0000";
		-- On the rising edge increment the counter
		elsif rising_edge(clkInt100KHz) then
			if (cValue = lRefValue) then
				-- Toggle the clock on a counter delay at the reference
				fClkInternal <= not fClkInternal;			
				-- And Reset the counter.
				cValue <= X"0000";
			else
				if (cValue = lPreRefValue) then
					fClkPredelay <= not fClkPredelay;
				end if;
				cValue <= cValue + 1;
			end if;
		end if;
	end process;

end Behavioral;

