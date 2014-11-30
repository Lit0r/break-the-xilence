------------------------------------------------------------------------
--	internalCounter.vhd  --  8-bit counter
------------------------------------------------------------------------
-- Author: Luke Renaud 
--	Copyright 2011 Digilent, Inc.
------------------------------------------------------------------------
-- Module description
--		A simple 8-bit counter.
--
--  Inputs:
--		clkIn			the counter input clock (count on rising edge)
--		rst			Reset signal (active high)
--
--  Outputs:
--		outNum		the current counter value.
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

entity internalCounter is
    Port ( clkIn		: in	STD_LOGIC;
           rst			: in	STD_LOGIC;
           outNum		: out	STD_LOGIC_VECTOR (7 downto 0));
end internalCounter;

architecture Behavioral of internalCounter is

	------------------------------------------------------------------------
	-- Component Declarations
	------------------------------------------------------------------------
	-- None

	------------------------------------------------------------------------
	-- General control and timing signals
	------------------------------------------------------------------------
	signal counterValue : STD_LOGIC_VECTOR(7 downto 0) := X"00";

	------------------------------------------------------------------------
	-- Data path signals
	------------------------------------------------------------------------

------------------------------------------------------------------------
-- Implementation
------------------------------------------------------------------------
begin

	-- The output follows the counter's value
	outNum <= counterValue;

	process(rst, clkIn)
	begin
		-- Reset behavior
		if (rst = '1') then
			counterValue <= X"00";
		-- Increment the counter
		elsif falling_edge(clkIn) then
			counterValue <= counterValue + 1;
		end if;
	end process;

end Behavioral;

