library verilog;
use verilog.vl_types.all;
entity detect_58_next is
    generic(
        next_0_0        : integer := 351;
        next_0_1        : integer := 116;
        next_0_2        : integer := 96;
        next_0_3        : integer := 128;
        next_1_0        : integer := 16;
        next_1_1        : integer := 450;
        next_1_2        : integer := 24;
        next_1_3        : integer := 0
    );
    port(
        \in\            : in     vl_logic;
        state           : in     vl_logic_vector(3 downto 0);
        next_state      : out    vl_logic_vector(3 downto 0)
    );
end detect_58_next;
