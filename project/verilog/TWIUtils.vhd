----------------------------------------------------------------------------------
-- Company: Digilent Ro
-- Engineer: Elod Gyorgy
-- 
-- Create Date:    14:55:31 04/07/2011 
-- Design Name: 
-- Module Name:    TWIUtils - Package 
-- Project Name:	 TWI Master Controller Reference Design 
-- Target Devices: 
-- Tool versions: 
-- Description: This package provides enumeration types for TWI (Two-Wire
-- Interface) bus status and error conditions.
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
package TWIUtils is
  type busState_type is (busUnknown, busBusy, busFree);
  type error_type is (errArb, errNAck);
end TWIUtils;

package body TWIUtils is 
end TWIUtils;
