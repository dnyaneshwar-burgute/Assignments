=begin
3. Ruby program which prompts for and reads one line of input. It then echos the line, then prints it repeatedly, each time removing every second character. It continues until no more characters can be removed. Treat all characters alike; no special treatment for spaces or punctuation.

Ex.
  vishal@laptop:~/ruby/asst$ ruby reduce.rb
  Please enter a line> Sandy.
  Sandy.
  Sny
  Sy
  S
  vishal@laptop:~/ruby/asst$ ruby reduce.rb
  Please enter a line> On Tuesday, Frank in the motor pool buys lunch.
  On Tuesday, Frank in the motor pool buys lunch.
  O usa,Faki h oo olby uc.
  OuaFk oob c
  Oak o
  Oko
  Oo
  O
=end




print "Enter a string"
str1 = gets
str2 = str1.split("")
print str1
while not str2.length == 1
	str2.delete_at(1)
	for i in 1...str2.length
		str2.delete_at(i+1)
	end
	str3 = str2.join
	puts str3
end
