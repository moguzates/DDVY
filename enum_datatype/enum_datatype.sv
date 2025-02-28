module enum_datatype;

typedef enum  { red=0, green, blue=4, yellow, white=10, black } colors;

enum {a, b, c, d, e, f, g} alphabets;

colors first_set;
colors second_set;

initial begin

    first_set = first_set.first();
    $display (" first_set first color is %0s, value = %0d, time=%0d" , first_set.name(),first_set, $time);
    #10;
    first_set = first_set.last();
    $display (" first_set last color is  %0s,  value = %0d, time=%0d", first_set.name(),first_set, $time);

    second_set = first_set;
    $display (" second_set color is  %0s,  value = %0d", second_set.name(),second_set);
    second_set = second_set.prev(2);
    $display (" second_set color is  %0s,  value = %0d", second_set.name(),second_set);
    second_set = second_set.next(3);
    $display (" second_set color is  %0s,  value = %0d", second_set.name(),second_set);

    $display("number of members in alphabets is    %0d", alphabets.num ());
    $display("default first number in alphabets is %0s, value is %0d", alphabets.name(), alphabets);
    alphabets=alphabets.next;
    $display("alphabets member is %0s, value is %0d", alphabets.name(), alphabets);
    alphabets=alphabets.last;
    $display("alphabets member is %0s, value is %0d", alphabets.name(), alphabets);
    alphabets=alphabets.prev;
    $display("alphabets member is %0s, value is %0d", alphabets.name(), alphabets);
    
end

endmodule

