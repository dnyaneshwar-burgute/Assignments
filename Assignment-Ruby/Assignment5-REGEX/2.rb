=begin

problem statement:
Check if the pattern "ss" appears in the string "Mississippi".

=end




	puts "Enter the string"
	str=gets.chomp
	if str = ~/ss/
	   puts "SS string is present"
	else
	   puts "SS string not present"
	end 
