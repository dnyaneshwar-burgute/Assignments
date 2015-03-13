

=begin

problem statement:
Find and replace all instances of "Mrs" with "Ms" in a sentence
=end

	puts "Enter the Source string which contains Mrs"	
	str=gets
	str=str.gsub(/Mrs+|mrs+/,'Ms')
	puts str
 

