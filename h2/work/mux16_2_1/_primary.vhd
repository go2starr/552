library verilog;
use verilog.vl_types.all;
entity mux16_2_1 is
    port(
        in1             : in     vl_logic_vector(15 downto 0);
        in2             : in     vl_logic_vector(15 downto 0);
        s               : in     vl_logic;
        \out\           : out    vl_logic_vector(15 downto 0)
    );
end mux16_2_1;
