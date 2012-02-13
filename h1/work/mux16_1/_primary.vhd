library verilog;
use verilog.vl_types.all;
entity mux16_1 is
    port(
        \In\            : in     vl_logic_vector(15 downto 0);
        s               : in     vl_logic_vector(3 downto 0);
        \Out\           : out    vl_logic
    );
end mux16_1;
