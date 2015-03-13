=begin

 Problem statement:
 Write a ruby program which accept input as file path.
  Constraint : will accept only ruby files.
            write a RegEx to grep all defined variables like (global, local, class, instance) from given ruby file.
  
  Output : print all variables with there type count

=end

  

	GLOBAL_VAR=Array.new
	CLASS_VAR=Array.new
	INSTANCE_VAR=Array.new
        LOCAL_VAR=Array.new
	#filename='/home/webonise/DD/Assignments/RUBY/binding.rb'
        puts "Enter the file name"
        filename=gets.chomp 
	if  /.rb$/.match(filename)
                
         	File.open(filename, 'r') do |f1|  
  			while line = f1.gets  
    				#puts line
                               if class_var= /@@\w+/.match(line)
                                CLASS_VAR.push(class_var)
                               end

                               if instance_var=/@\w+/.match(line)  
                                INSTANCE_VAR.push(instance_var)  
                               end

				if global_var=/^\$\w+/.match(line)  
                                GLOBAL_VAR.push(global_var)  
                               end  

				if local_var=/_\w+/.match(line)  
                                LOCAL_VAR.push(local_var)  
                               end  
                          	
  			end  
		end  


           
      print  "GLOBAL VARIABLES :\n"
      puts GLOBAL_VAR
      puts "COUNT :#{GLOBAL_VAR.count}"
   

 
      print  "CLASS VARIABLES :\n"
      puts CLASS_VAR
      puts "COUNT :#{CLASS_VAR.count}"
      
  
 
      print  "INSTANCE VARIABLES :\n"
      puts INSTANCE_VAR
      puts "COUNT :#{INSTANCE_VAR.count}"
     
     
 
      print  "LOCAL  VARIABLES :\n"
      puts LOCAL_VAR
      puts "COUNT :#{LOCAL_VAR.count}"
  
        
                
        else
          puts "Wrong file type" 
	end


     
 
     
       
     
           
          
 
   




