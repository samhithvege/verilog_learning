module tb_not;
reg a;
wire b;

not_gate utt(
    .a(a),
    .b(b)
);
initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_not);
end
initial begin
    $monitor("Time=%0t a=%b b=%b",
                $time, a, b);
        a=0;
        #10;
        a=1;
        #10;
        $finish;
end
endmodule