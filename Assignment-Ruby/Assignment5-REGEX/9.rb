
=begin

problem statement:
Find and replace all non-alphanumeric characters in a string with "-".

=end
 

puts "Enter the Source string which contains non alphanumeric characters(#,@,!,',':)"
str=gets
str=str.gsub(/[.+@+:+#+,+!+$+]/,'-')
puts str
 
