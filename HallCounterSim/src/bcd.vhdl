LIBRARY ieee;

ENTITY bcd IS
    PORT (
        i_bcd : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        o_7seg : OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
    );
END ENTITY bcd;

ARCHITECTURE rtl OF bcd IS
BEGIN

    WITH i_bcd SELECT o_7seg <=
        "1111110" WHEN "0000", -- when 0
        "0110000" WHEN "0001", -- when 1
        "1101101" WHEN "0010", -- when 2
        "1111001" WHEN "0011", -- when 3
        "0110011" WHEN "0100", -- when 4
        "1011011" WHEN "0101", -- when 5
        "1011111" WHEN "0110", -- when 6
        "1110000" WHEN "0111", -- when 7
        "1111111" WHEN "1000", -- when 8
        "1111011" WHEN "1001", -- when 9
        "0000000" WHEN OTHERS;

END ARCHITECTURE rtl;