// class packet;

// //class properties
// byte packet_id;

// //static property to keep track of number of pkt's created
// static byte no_of_pkts_created;

// //cunstructor
// function new();
//     //incrementing pkt count on creating an object 
//     no_of_pkts_created++;
//     packet_id = no_of_pkts_created;
// endfunction

// //method to displayy class properties
// function void display();
//     $display("----------------------------------------");
//     $display("\t packet id = %0d",packet_id);    
//     $display("----------------------------------------");
// endfunction

// endclass

// module static_properties;
// packet pkt[3];

// initial begin
//     foreach(pkt[i]) begin
//         pkt[i] = new();
//         pkt[i].display();
//     end
// end


// endmodule




// //statik sadece statik türlere erişebilir. Bu kod error verir.
// class packet;
//   byte packet_id;
  
//   //static property to keep track of number of pkt's created
//   static byte no_of_pkts_created;
  
//   //constructor
//   function new();
//     //incrementing pkt count on creating an object
//     no_of_pkts_created++;
//   endfunction
    
//   //Static method to display class prperties
//   static function void display_packets_created();
//     $display("--------------------------------------");
//     $display("\t Packet Id is %0d",packet_id);
//     $display("\t %0d packets created.",no_of_pkts_created);
//     $display("--------------------------------------");
//   endfunction 
// endclass

// module static_properties;
//   packet pkt[3];

//   initial begin
//     foreach(pkt[i]) begin
//       pkt[i] = new();
//     end
//     pkt[0].display_packets_created();
//   end  
// endmodule




class packet;
    
  //static property to keep track of number of pkt's created
  static byte no_of_pkts_created;
  
  //constructor
  function new();
    //incrementing pkt count on creating an object
    no_of_pkts_created++;
  endfunction
    
  //Static method to display class prperties
  static function void display_packets_created();
    $display("--------------------------------------");
    $display("\t %0d packets created.",no_of_pkts_created);
    $display("--------------------------------------");
  endfunction 
endclass

module static_properties;
  packet pkt[3];
  packet p;

  initial begin
    foreach(pkt[i]) begin
      pkt[i] = new();
    end
    
    //Accesing static Variable with class handle p
    $display("--------------------------------------");
    $display("\t %0d packets created.",p.no_of_pkts_created);
    $display("--------------------------------------");    
    
    //Accesing static Method with class handle p
    p.display_packets_created();
  end  

endmodule