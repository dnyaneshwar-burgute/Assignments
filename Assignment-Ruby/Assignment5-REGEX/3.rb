=begin

problem statement:
Print out the 3rd word of each sentence from a list of sentences.
=end






	array=["Hello how r u"," Welcome to webonise lab","like cricket"]

	i=0
	while i < array.count do

   		str=array.at(i)
   		str.split("")
   		puts str[2]
   		i+=1
	end 

