module Multiplexer_4_to_1 (
    input [3:0] sw,
    input [1:0] sw8,
    output [3:0] p,
    output [1:0] t,
    output reg y
);
assign {p[0],p[1],p[2],p[3]} = {sw[0], sw[1], sw[2], sw[3]};
assign {t[1],t[0]} = {sw8[1],sw8[0]};

always @* begin
    case (sw8)
        2'b00: y = sw[0];
        2'b01: y = sw[1];
        2'b10: y = sw[2];
        2'b11: y = sw[3];
        default: y = 1'b0; 
    endcase
end

endmodule