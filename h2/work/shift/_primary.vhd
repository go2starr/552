library verilog;
use verilog.vl_types.all;
entity shift is
    generic(
        dir_l           : integer := 0;
        dir_r           : integer := 1
    );
    port(
        \in\            : in     vl_logic;
        left            : in     vl_logic;
        right           : in     vl_logic;
        dir             : in     vl_logic;
        \out\           : out    vl_logic
    );
end shift;
