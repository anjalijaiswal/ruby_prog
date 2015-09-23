#Have the function RunLength(str) take the str parameter being passed and 
#return a compressed version of the string using the Run-length encoding algorithm. 
#This algorithm works by taking the occurrence of each repeating character and 
#outputting that number along with a single character of the repeating sequence. 
#For example: "wwwggopp" would return 3w2g1o2p. 
#The string will not contain any numbers, punctuation, or symbols. 
def RunLength(str)
  arry = []
  # code goes here
  str.tr(' ', '').chars.to_a.uniq.compact.each do |w|
    c = str.count(w)
    arry << c
    arry << w
  end
    
  return arry.join
         
end
   