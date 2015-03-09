#ARRAY OPERATION
def array_operation
      browsers = ['Chrome', 'Firefox', 'Safari', 'Opera', 'IE']

	#method 1 length
	length=browsers.length
	puts"length of array is #{length}"

	#method 2 count

	count=browsers.count
	puts"The no of elements of array are #{count}"
	
	#method 3 reverse

	browsers2=browsers.reverse
	puts"The reverse element of array are"
	puts browsers2

	#method 4 at

	puts"The 4th element is"
	puts browsers.at(3)
	
	# method select
	browsers2=browsers.select{|a|a.length > 3}
	puts"Element after selection #{browsers2}"

end

#HASH OPERATION
def hash_operation
puts
puts
puts"HASH OPERATIONS"
h1 = Hash["a" => 1, "b" => 2, "c"=>3,"d"=>4, "e"=>5]

#method 1 keys
puts"the keys from ahsh"
puts h1.keys
# method 2 k-v
puts"The vlaue for key c is"
puts h1["c"]

#method 3 delete
puts"Deleted element is"
puts h1.delete("e");

#method 4 length
puts"The length of hash is  #{h1.length}"

#method 5 clear
h1.clear
puts "EMTY HASH #{h1}"
end


# String operation
def string_operation()
puts 
puts
puts"STRING OPERATIONS"
str="Hello"
#method 1 length
length=str.length
puts "The length of srting is #{length}"

#method 2 downcase
downcase=str.downcase
puts "The downcase of str is #{downcase} "

#method 3 capitalize
uppercase=str.capitalize
puts "The downcase of str is #{uppercase} "

# method 4 chop
str=str.chop
puts "After removing last character #{str}"

# mehtod eql?
puts "The equality of string is #{str.eql? "Hello"}"
end
array_operation()
hash_operation()
string_operation()
