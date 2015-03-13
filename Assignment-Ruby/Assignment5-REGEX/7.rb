=begin

	problem statement:
   Does a string have non-alphanumeric characters in it?

=end
	puts "\ncheck the string contain no alpha numeric character....\n"
	print "Enter the string:"
	input=gets.chomp
	if /[.+,+(+)+#+$+:+]/.match("#{input}")
	puts "string matches the pattern!!!"
	else
	puts "given string dont follow the pattern!!!"
	end
