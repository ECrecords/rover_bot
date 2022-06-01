----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2022 07:45:31 PM
-- Design Name: 
-- Module Name: pwm_controller_hdl - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pwm_controller_hdl is
    Generic (
                REG_WIDTH   : integer := 32
            );
    Port    (
                -- INPUT SIGNALS
                CLK         : in std_logic;
                RST_N       : in std_logic;
                PERIOD      : in std_logic_vector(REG_WIDTH-1 downto 0);
                PULSE_WIDTH : in std_logic_vector(REG_WIDTH-1 downto 0);
                -- OUTPUT SIGNALS
                PWM_OUT     : out std_logic
            );
end pwm_controller_hdl;

architecture Behavioral of pwm_controller_hdl is
    signal count : unsigned(REG_WIDTH-1 downto 0);
begin
    
    COUNT_UPDATE: process (CLK) is
    begin
        if rising_edge(CLK) then
            if (RST_N = '0') then
                count <= (others => '0');
            else
                if (count >= unsigned(PERIOD)) then
                    count <= (others => '0');
                else
                    count <= count + 1;                          
                end if;
            end if;
        end if;
    end process;
    
    OUTPUT: process (CLK) is
    begin
        if rising_edge(CLK) then
            if (RST_N = '0') then
                PWM_OUT <= '0';
            else
                if (unsigned(PULSE_WIDTH) <= unsigned(PERIOD)) then
                    if (count < unsigned(PULSE_WIDTH)) then
                        PWM_OUT <= '1';
                    else
                        PWM_OUT <= '0';
                    end if;
                else
                    PWM_OUT <= '0';             
                end if;
            end if;         
        end if;
    end process;

end Behavioral;
