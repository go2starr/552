library verilog;
use verilog.vl_types.all;
entity cla_logic is
    port(
        ci              : in     vl_logic;
        p               : in     vl_logic_vector(3 downto 0);
        g               : in     vl_logic_vector(3 downto 0);
        c               : out    vl_logic_vector(4 downto 1);
        ggroup          : out    vl_logic;
        pgroup          : out    vl_logic
    );
end cla_logic;
