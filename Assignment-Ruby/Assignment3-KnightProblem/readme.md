

  Possible algorithms to solve knight tour problem are:
  
  1)Brute force algorithms
  2)Divide and conquer algorithms
  3)Neural network solutions
  4)Warnsdorff's rule
  5) Backtracking

          From the above algorithm I implemented the code in backtracking approach but later on realize that as the position of x and y grows the time complexity also   		  grows. It nearly take 5 to 15 minute to show the output.
       
          So that backtracking approach is not used to solve this kind of problem and solution for this is to use warnsdorff rule.

          Warnsdorff's rule:

          Warnsdorff's rule is a heuristic for finding a knight's tour. We move the knight so that we always proceed to the square from which the knight will have the 		fewest onward moves. When calculating the number of onward moves for each candidate square, we do not count moves that revisit any square already visited. It 		is, of course, possible to have two or more choices for which the number of onward moves is equal; there are various methods for breaking such ties, including 		one devised by Pohl  and another by Squirrel and Cull.

        With the help of this approach we are able to overcome the problem of time but it also have disadvantage of deep stack operations affect the space complexity.
        But it is always better to overcome the time complexity so conclusion is that we should use Warndroffs rule.
                  
   
