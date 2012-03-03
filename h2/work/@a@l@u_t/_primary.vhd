library verilog;
use verilog.vl_types.all;
entity alu_t is
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
end alu_t;
