
     def string_operation(str1,str2)
      str1==str2
     end
  
     puts"Enter the string1"
     str1=gets.chomp;
     puts"Enter the string2"
     str2=gets.chomp;
     result=string_operation(str1,str2)
     if result then 
        puts"Strings are equal"
     else
        puts"Strings are not same";
     end  
     
     
     
