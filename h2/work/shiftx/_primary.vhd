library verilog;
use verilog.vl_types.all;
entity shiftx is
    generic(
        x               : integer := 0;
        op_rol          : integer := 0;
        op_sll          : integer := 1;
        op_ror          : integer := 2;
        op_asr          : integer := 3
    );
    port(
        \in\            : in     vl_logic_vector(15 downto 0);
        op              : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic_vector(15 downto 0)
    );
end shiftx;
