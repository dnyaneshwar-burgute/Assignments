=begin
	
	Problem statement:
        
	Write a Program by which The knight can visit each square on a chess board exactly once. and find the shortest path between them.
	Create a class ChessKnight containing the method probability which takes an int x, an int y (the start square of the chess knight, where 1,1 is one of the 	   corners).
	
	
=end


class ChessNight
        
	N=8
	#safe method 
     	def isSafe(x,y,positions)
        
          	 if x>=0 && x< N && y >=0 && y< N && positions[x][y]==-1
            	 	return true
                 end
           	return false
	end

       #solution steps
       def printSolution(positions)
        
              for x in 0..N-1
        	         for y in 0..N-1
        		           print positions[x][y]
                                   print  "\t"
       		         end
                     print "\n"
              end
	end    
      
     # knight tour solution
     def knightTourSolution
     
       	 #Initialization of 2d array
         positions=Array.new(N){Array.new(N)}
	 xMove=[2,1,-1,-2,-2,-1,1,2]
	 yMove=[1,2,2,1,-1,-2,-2,-1]

          for x in 0..N-1
                for y in 0..N-1
                      positions[x][y]= -1
                end
          end  
          
        	 puts "Enter the x position of the knight"
        	 xpos=gets.chomp.to_i;
        	 puts "Enter the y position of the knight"  
        	 ypos=gets.chomp.to_i;
        	 positions[xpos][ypos]=0
         
          if (solveKTUtil(xpos,ypos,1,positions,xMove, yMove) == false)
            	puts "Solution does not exist"
            	return false;
          else
 	        printSolution(positions)
 		
          end
          return true;
     end
 
    #recursive function call
    
      def solveKTUtil(x,y,step,positions,xMove,yMove) 
        
              if step == N*N
                return true
              end

                #finding all next moves
 	      for k in 0..N-1                     
                     next_x=x+xMove[k]
                     next_y=y+yMove[k]
                     if(isSafe(next_x,next_y,positions))
                      	   positions[next_x][next_y] = step                          
                           if(solveKTUtil(next_x,next_y,step+1,positions,xMove,yMove)==true)
                            return true
                           else
                             positions[next_x][next_y]= -1 #backtracking
                           end                     
                     end    
              end
 
             return false
      end 		              

end

obj=ChessNight.new  
obj.knightTourSolution             
   






















