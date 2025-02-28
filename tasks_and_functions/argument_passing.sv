// //argument pass by value example********************************************************
// //Variables x and y are passed as an argument in the function call sum, 
// //changes to the argument x within the function is not visible outside.
// module argument_passing;
//   int x,y,z;
//   //function to add two integer numbers.
//   function int sum(int x,y);
//     x = x+y;
//     return x+y;   
//   endfunction

//   initial begin
//     x = 20;
//     y = 30;
//     z = sum(x,y);
//     $display("-----------------------------------------------------------------");
//     $display("\tValue of x = %0d",x);
//     $display("\tValue of y = %0d",y);
//     $display("\tValue of z = %0d",z);
//     $display("-----------------------------------------------------------------");
//   end

// endmodule





// //argument pass by reference********************************************************
// //dışarıdaki değişiklik oroijinal değeri değiştirdi.
// module argument_passing;
//   int x,y,z;

//   //function to add two integer numbers.
//   function automatic int sum(ref int x,y);  //automatic yaptım static ken hata aldım.
//     x = x+y;
//     return x+y;   
//   endfunction

//   initial begin
//     x = 20;
//     y = 30;
//     z = sum(x,y);
//     $display("-----------------------------------------------------------------");
//     $display("\tValue of x = %0d",x);
//     $display("\tValue of y = %0d",y);
//     $display("\tValue of z = %0d",z);
//     $display("-----------------------------------------------------------------");
//   end
// endmodule




// //argument pass by name*********************************************************************
// module argument_passing;
//   int x,y,z;

//   function void display(int x,string y);
//     $display("\tValue of x = %0d, y = %0s",x,y);   
//   endfunction

//   initial begin
//     display(.y("Hello World"),.x(2016));        //önce argüman sonra string geçti
//   end
// endmodule



//pass by position