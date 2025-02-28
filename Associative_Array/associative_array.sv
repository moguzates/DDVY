//***********************Associative Array Declaration Methods*********************************

// module associative_array;
// //array declaration
// int a_array[int];
// int index       ;

// initial begin

//     repeat(3) begin  
//     a_array[index] = index*2;
//     index = index + 4;
//     end

//     //num() –Associative array method
//     $display("\ta_array number of entries in a_array is %0d",a_array.num());
//     $display("--- Associative array a_array entries and Values are ---");
//     foreach(a_array[i])    $display("\t a_array[%0d] = %0d",i ,a_array[i]);

//     //first()-Associative array method
//     a_array.first(index);
//     $display("\t first entry is \t a_array[%0d] = %0d",index ,a_array[index]);

//     //last()
//     a_array.last(index);
//     $display("\t last entry is \t a_array[%0d] = %0d",index, a_array[index]);

//     //exists()
//     if (a_array.exists(8))
//     $display("\t8 is exist");
//     else
//     $display("\t8 is not exist");

//     //prev()
//     a_array.prev(index);
//     $display("\t prev entry is \t a_array[%0d] = %0d",index ,a_array[index]);

//     //next()
//     a_array.next(index);
//     $display("\t next entry is \t a_array[%0d] = %0d",index ,a_array[index]);

//endmodule



     //************************************bit and string index type****************************************.

    module associative_array;
  //array declaration
  int a_array1[bit [7:0]]; //index type is bit [7:0] and entry type is int
  bit a_array2[string]   ; //index type is string and entry type is bit

    initial begin
        a_array1 [5]  = 10;
        a_array1 [8]  = 20;

        a_array2 ["GOOD PKT"] = 1; 
        a_array2 ["BAD PKT"]  = 0;

        foreach(a_array1[index]) 
      $display("a_array1[%0d] = %0d",index,a_array1[index]);

        foreach(a_array2[index]) 
      $display("a_array2[%0s] = %0d",index,a_array2[index]);

    end

endmodule