library verilog;
use verilog.vl_types.all;
entity alu is
    generic(
        op_rol          : integer := 0;
        op_sll          : integer := 1;
        op_ror          : integer := 2;
        op_sra          : integer := 3;
        op_add          : integer := 4;
        op_or           : integer := 5;
        op_xor          : integer := 6;
        op_and          : integer := 7
    );
    port(
        a               : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic_vector(15 downto 0);
        cin             : in     vl_logic;
        op              : in     vl_logic_vector(2 downto 0);
        inva            : in     vl_logic;
        invb            : in     vl_logic;
        sign            : in     vl_logic;
        \Out\           : out    vl_logic_vector(15 downto 0);
        ofl             : out    vl_logic;
        zero            : out    vl_logic
    );
end alu;
