LIBRARY ieee;
USE ieee.numeric_std.ALL;

ENTITY bin_to_bcd IS
    PORT (
        i_bin : IN STD_LOGIC_VECTOR (13 DOWNTO 0);
        o_bcd_thous : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
        o_bcd_hund : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
        o_bcd_tens : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
        o_bcd_ones : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
    );
END ENTITY bin_to_bcd;

ARCHITECTURE rtl OF bin_to_bcd IS

    SIGNAL s_rpm_unsigned : unsigned(i_bin);

BEGIN
    


    
END ARCHITECTURE rtl;
