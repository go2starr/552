library verilog;
use verilog.vl_types.all;
entity fulladder16_t is
    generic(
        two_pow_16      : integer := 65536
    );
end fulladder16_t;
