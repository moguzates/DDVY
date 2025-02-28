// //Packed Struct example
// module struct_tb;
  
//   typedef struct packed {
//     bit [7:0]  addr ;
//     bit        valid;
//     bit [31:0] data ; 
//   } mem_pkt; 
  
//   mem_pkt pkt;
  
//   initial begin 
    
//     // Initializing Struct
//     pkt = '{8'h6, 1'b1, 32'hC001_0FAB};
//     $display ("pkt = %p", pkt);
    
//     // Change the struct field value
//     pkt.addr = 8'h8;
//     $display ("pkt = %p", pkt);
   
//     // Change the struct field value
//     pkt.data = 32'hFFF0_0FFF;
//     $display ("pkt = %p", pkt);

//   end  
// endmodule 


//Unpacked Struct Example
module struct_tb;
  
  typedef enum logic {INVALID_PKT,VALID_PKT} pkt_type;
  
  typedef struct packed {
    byte       addr;
    pkt_type   valid;
    bit [31:0] data; 
  } mem_pkt; 
  
  mem_pkt pkt;  //pkt bu yapıyı kullanan bir değişkendir.
  
  initial begin 
    
    // Initializing Struct
    pkt = '{8'h6, VALID_PKT, 32'hC001_0FAB};
    $display ("pkt = %p", pkt);
    
    // Change the struct field value
    pkt.addr = 8'h8;
    $display ("pkt = %p", pkt);
   
    // Change the struct field value
    pkt.valid = INVALID_PKT;
    $display ("pkt = %p", pkt);
  end  
endmodule 