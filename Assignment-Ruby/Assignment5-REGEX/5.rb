=begin
     problem statement:
      Does a string start with "St"?
=end

	puts "Enter a string"
	str=gets.chomp
	
	 if str = ~/^St/
	   puts "Yes your string start with St"
	 else
	   puts "No the string is not started with St"
	end
 
