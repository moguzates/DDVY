//**************Unbounded Queue Declaration, Initialization, Size, Insert and Delete Method*********************


// module queues_array;
//   //declaration
//   bit [31:0] queue_1[$]; //unbounded queue
//   string     queue_2[$]; 

  
//   initial begin
//     //Queue Initialization:
//    queue_1 =  {0, 1, 2, 3};
//    queue_2 =  {"red", "blue", "green"};
      
//     //Size-Method
//     $display("------queue_1 size is %0d-------",queue_1.size());
//     foreach(queue_1[i]) $display("\t queue_1[%0d] = %0d",i ,queue_1[i]);

//     $display("------queue_2 size is %0d-------",queue_2.size());
//     foreach(queue_2[i]) $display("\t queue_2[%0d] = %0s",i ,queue_2[i]);
   
    
//     //Insert-Method
//     queue_2.insert(1, "orange");
//     $display("------queue_2 size after inserting orange is %0d-------",queue_2.size());
//     foreach(queue_2[i]) $display("\t queue_2[%0d] = %0s",i ,queue_2[i]);
   
    
//     //Delete Method
//     queue_2.delete(3);
//     $display("------queue_2 size after delete is %0d-------",queue_2.size());
//     foreach(queue_2[i]) $display("\t queue_2[%0d] = %0s",i ,queue_2[i]);
   
    
//   end

// endmodule


//**************Queue, push_front(), push_back(), pop_front() and pop_back() Method*********************


// module queues_array;
//   //declaration
//   bit    [31:0] queue_1[$]; 
//   int    lvar;  
  
//   initial begin
//     //Queue Initialization:
//     queue_1 = {0,1,2,3};
    
//     //Size-Method
//     $display("\tQueue_1 size is %0d",queue_1.size());   
    
//     //Push_front Method
//     queue_1.push_front(22);
//     $display("\tQueue_1 size after push_front is %0d",queue_1.size());
    
//     //Push_back  Method
//     queue_1.push_back(44);
//     $display("\tQueue_1 size after push_back is %0d",queue_1.size());

//  //Pop_front Method
//  lvar = queue_1.pop_front();
//     $display("\tQueue_1 pop_front value is %0d",lvar);

//  //Pop_back Method
//  lvar = queue_1.pop_back();
//     $display("\tQueue_1 pop_back value is %0d",lvar);
//   end
// endmodule


//******************************Bounded queue declaration and accessing***************************
// module queues_array;
//   //declaration
//   int    queue[$:2];
//   int    temp_var;
   
//   initial begin
//     //Queue Initialization:
//     queue = {7,3,1};
     
//     $display("Queue elements are,");
//     $display("\tqueue = %p",queue);
    
//     queue.push_back(10);
    
//     $display("After push_back Queue elements are,");
//     $display("\tqueue = %p",queue);
    
//     queue.push_front(10);
    
//     $display("After push_front Queue elements are,");
//     $display("\tqueue = %p",queue);
//   end
 
// endmodule



//*********************Accessing random element of queue**************************************
// module queues_array;
//   //declaration
//   int    queue[$];
//   int    index;
//   int  temp_var;
   
//   initial begin
//     //Queue Initialization:
//     queue = {7,3,1,0,8};
     
//     $display("----- Queue elements with index -----");
//     foreach(queue[i]) 
//       $display("\tqueue[%0d] = %0d",i,queue[i]);
//     $display("-------------------------------------\n");
    
//     $display("Before Queue size is %0d",queue.size());
//     repeat(2) begin //{
//       index    = $urandom_range(0,4); //index of queue is from 0 to 4
//       temp_var = queue[index];
//       $display("Value of Index %0d in Queue is %0d",index,temp_var);
//     end //} 
//     $display("After Queue size is %0d",queue.size());
//   end
// endmodule




//**************************Deleting random element of queue with index************************************
// module queues_array;
//   //declaration
//   int    queue[$];
//   int    index;
//   int  temp_var;
   
//   initial begin
//     //Queue Initialization:
//     queue = {7,3,1,0,8};
     
//     $display("Queue entries are %p",queue);
//     $display("Before Queue size is %0d",queue.size());
//     index    = $urandom_range(0,4); //index of queue is from 0 to 4
//     $display("Index %0d is deleted",index);
//     queue.delete(index);
//     $display("After Queue size is %0d",queue.size());
//     $display("Queue entries are %p",queue);
   
//     $display("\nQueue entries are %p",queue);
//     $display("Before Queue size is %0d",queue.size());
//     index    = $urandom_range(0,3); //index of queue is from 0 to 4
//     $display("Index %0d is deleted",index);
//     queue.delete(index);
//     $display("After Queue size is %0d",queue.size());
//     $display("Queue entries are %p",queue);    
//   end
// endmodule




//******************************Deleting complete queue********************************
module qu_delete;
  //queue declaration
  int qu[$];  
  
  initial begin

    qu.push_back(2);
    qu.push_back(13);
    qu.push_back(5);
    qu.push_back(65);
    
    $display("[Before-Delete] Queue size is %0d",qu.size());
    qu.delete();
    $display("[After -Delete] Queue size is %0d",qu.size());    
    
  end
endmodule


