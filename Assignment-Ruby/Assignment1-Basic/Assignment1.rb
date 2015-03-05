
  
     def arithmatic_operation(num1,num2,op)
      num1.send(op,num2)
     end
  
     puts"Enter the first number"
     num1=gets.chomp.to_i;
     puts"Enter the second number"
     num2=gets.chomp.to_i;
     puts"Enter operator"
     op=gets.chomp;
     result=arithmatic_operation(num1,num2,op)
     puts result

     
     
     
     
