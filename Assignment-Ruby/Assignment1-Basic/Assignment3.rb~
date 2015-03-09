module Calculate
     def calculate_score(total)

         (total/300)*100;  

     end

     def calculate_interest(p_amount,rate,no_of_years)
       
         (p_amount*rate*no_of_years)/100

     end
end

class Score 
	include Calculate
           @@sub11
           @@sub22
           @@sub33
    def initialize(sub1,sub2,sub3)
           @@sub11=sub1
           @@sub22=sub2
           @@sub33=sub3
    end

    def calculate_total()
        @@sub11+@@sub22+@@sub33
    end
   
end

class Interest 
  
	include Calculate

      
   def initialize(p_amount1,rate1,no_of_years1)
       @p_amount=p_amount1
       @rate=rate1
       @no_of_years=no_of_years1
   end
   def getP_amount()
      return @p_amount
   end
   def getRate()
      return @rate
   end
   def getYears()
      return @no_of_years
   end
end

scoreObj=Score.new(10,20,30)
total=scoreObj.calculate_total()
puts"the total are"
puts total
score=scoreObj.calculate_score(total.to_f)
puts"the score is"
puts score
interestObj=Interest.new(5000,10,5)
interest=interestObj.calculate_interest(interestObj.getP_amount(),interestObj.getRate(),interestObj.getYears())
puts "The interest is"
puts interest



   
