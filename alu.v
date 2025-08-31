module alu (
    input  signed [7:0] a,
    input  signed [7:0] b,
    input  [2:0] op,
    output reg signed [7:0] y
);

always @(*) begin
    y   = 0;
    case (op)
        3'b000: y = a + b;                    //ADD
        3'b001: y = a - b;                    //SUB
        3'b010: y = a & b;                    //AND
        3'b011: y = a | b;                    //OR
        3'b100: y = (a & ~b) | (~a & b);      //XOR
        3'b101: y = 0;                        //Placeholder
        3'b110: y = 0;                        //Placeholder
        3'b111: y = 0;                        //Placeholder
    endcase
end

endmodule
