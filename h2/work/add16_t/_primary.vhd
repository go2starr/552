library verilog;
use verilog.vl_types.all;
entity add16_t is
    generic(
        two_pow_16      : integer := 65536
    );
end add16_t;
