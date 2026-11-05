module tb_or;
reg a,b;
wire c;

or_gate utt(
    .a(a),
    .b(b),
    .c(c)
);
initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_or);
end
initial begin
    $monitor("Time=%0t a=%b b=%b c=%b",
                $time, a, b, c);
        a=0; b=0;
        #10;
        a=0; b=1;
        #10;
        a=1;b=0;
        #10;
        a=1;b=1;
        #10;
        $finish;
end
endmodule
