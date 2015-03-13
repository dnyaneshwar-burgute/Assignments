
=begin

problem statement:
Are there any whitespace characters in the string?

=end
 



puts "Enter String"
str=gets.chomp
if /\s/.match("#{str}")
puts "String contain white spaces"
else
puts "string doesnt contain white spaces"
end

