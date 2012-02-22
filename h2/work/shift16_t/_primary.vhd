library verilog;
use verilog.vl_types.all;
entity shift16_t is
    generic(
        op_rol          : integer := 0;
        op_sll          : integer := 1;
        op_ror          : integer := 2;
        op_asr          : integer := 3
    );
end shift16_t;
