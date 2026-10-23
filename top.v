module mux4 (
    input [3:0] in0, in1, in2, in3,
    input [1:0] sel,
    input enable,
    output reg [3:0] data_out
);

    always@ (in0, in1, in2, in3, sel, enable) begin
        data_out = 4'b0000;
        
        if (enable) begin
            case (sel)
                2'b00: data_out = in0;
                2'b01: data_out = in1;
                2'b10: data_out = in2;
                2'b11: data_out = in3;
                default: data_out = 4'b0000;
            endcase
        end
    end  

endmodule

module demux4 (
    input [3:0] data_in,
    input [1:0] sel,
    input enable,
    output reg [3:0] out0,
    output reg [3:0] out1,
    output reg [3:0] out2,
    output reg [3:0] out3
);

    always@ (data_in, sel, enable) begin
        out0 = 4'b0000;
        out1 = 4'b0000;
        out2 = 4'b0000;
        out3 = 4'b0000;
        
        if (enable) begin
            case (sel)
                2'b00: out0 = data_in;
                2'b01: out1 = data_in;
                2'b10: out2 = data_in;
                2'b11: out3 = data_in;
            endcase
        end
    end

endmodule

module top (
    input [15:0] sw,
    input btnL,
    input btnU,
    input btnD,
    input btnR,
    input btnC,
    output [15:0] led
);

    wire [1:0] mux_sel;
    wire [1:0] demux_sel;
    wire [3:0] shared_data;
    
    assign mux_sel = {btnU, btnL};
    assign demux_sel = {btnR, btnD};
    
    mux4 send (
        .in0(sw[3:0]),
        .in1(sw[7:4]),
        .in2(sw[11:8]),
        .in3(sw[15:12]),
        .sel(mux_sel),
        .enable(btnC),
        .data_out(shared_data)
    );
    
    demux4 receive (
        .data_in(shared_data),
        .sel(demux_sel),
        .enable(btnC),
        .out0(led[3:0]),
        .out1(led[7:4]),
        .out2(led[11:8]),
        .out3(led[15:12])
    );

endmodule 