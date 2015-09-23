def PrimeChecker(num)
  
  # code goes here
  return 1 if Prime?(num)
  str = num.to_s.chars.to_a.permutation.map &:join
  for i in 0..(str.size-1)
    return 1 if Prime?(str[i].to_i)
   end 
  return 0 
         
end

 def Prime?(num)
   for i in 2..(num-1)
     if num%i == 0
       return true
     elsif num < 3
       return true
     else
       return false
     end
   end
  
 end