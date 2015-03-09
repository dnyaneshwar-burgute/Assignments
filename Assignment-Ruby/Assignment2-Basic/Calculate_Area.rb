
=begin 2. Ruby program which accepts user input and process it then print the result.
Ex. radius.rb is a file which accept input as float and returns a calculated Area of cirle
vishal@laptop:~/ruby/asst$ ruby radius.rb
Enter the radius: 2
Area is: 12.5663708

=end

 PI=3.14
 puts"Enter the radius of circle"
 radius=gets.chomp.to_f;
 area=3.14*radius*radius;
 
 puts"The area of the circle is"
 puts area;
