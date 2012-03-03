library verilog;
use verilog.vl_types.all;
entity add1 is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        ci              : in     vl_logic;
        sum             : out    vl_logic;
        p               : out    vl_logic;
        g               : out    vl_logic
    );
end add1;
