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

    SIGNAL s_rpm_unsigned : UNSIGNED (13 DOWNTO 0);
    SIGNAL s_rem_thous : UNSIGNED (3 DOWNTO 0);
    SIGNAL s_rem_hund : UNSIGNED (3 DOWNTO 0);
    SIGNAL s_rem_tens : UNSIGNED (3 DOWNTO 0);
    SIGNAL s_rem_ones : UNSIGNED (3 DOWNTO 0);

    CONSTANT DIVISOR_THOUS : UNSIGNED(3 DOWNTO 0) := "1010";
    CONSTANT DIVISOR_HUND : UNSIGNED();
    CONSTANT DIVISOR_TENS : UNSIGNED();
    CONSTANT DIVISOR_ONES : UNSIGNED(3 DOWNTO 0) := "1010"; -- Constant d10

BEGIN
END ARCHITECTURE rtl;