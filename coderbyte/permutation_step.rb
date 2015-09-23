#Have the function PermutationStep(num) take the num parameter being passed and 
#return the next number greater than num using the same digits. 
#For example: if num is 123 return 132, if it's 12453 return 12534. If a number has no greater permutations, return -1 (ie. 999). 


def PermutationStep(num)
 
  str = num.to_s.chars.to_a.permutation.map &:join
  str = str.uniq.sort!
  
  if str.length < 2
    return -1
   elsif str.max.to_i == num
     return -1
  else
    len = str.index(num.to_s)
    return str[len+1]
  end       
end