module DualPortRam
#(
   parameter Data_width = 8,  // # of bits in word
             Addr_width = 3  // # of address bits
)
(  // ports
   input wire clk, we,
   input wire [(Addr_width-1):0] w_addr, r_addr,
   input wire [(Data_width-1):0] d,
   output wire [(Data_width-1):0] q
);

// signal declarations
reg [Data_width-1:0] ram[2**Addr_width-1:0]; // 2 dimensional array for RAM storage
reg [Data_width-1:0] data_reg;   // read output reg

// RAM initialization from an external file
initial
   $readmemh("initialRAM.txt", ram);

always @(posedge clk)
begin
   if (we)
      begin
         ram[w_addr] <= d;    // write data
      end
   data_reg <= ram[r_addr];   // read data to reg for output
end

// assign data_reg to output
assign q = data_reg;

endmodule