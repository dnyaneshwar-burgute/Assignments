=begin

problem statement:
Does a string end with "art"?

=end




puts "Enter a string"
str=gets.chomp

 if str = ~/art$/
   puts "Yes your string end with art"
 else
   puts "No the string is not end  with art"
end
 
