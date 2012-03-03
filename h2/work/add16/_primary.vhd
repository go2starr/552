library verilog;
use verilog.vl_types.all;
entity add16 is
    port(
        a               : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic_vector(15 downto 0);
        ci              : in     vl_logic;
        sum             : out    vl_logic_vector(15 downto 0);
        co              : out    vl_logic;
        ggroup          : out    vl_logic;
        pgroup          : out    vl_logic
    );
end add16;
