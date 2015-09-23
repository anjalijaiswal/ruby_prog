# Using the Ruby language, have the function SwapII(str) take the str parameter and 
# swap the case of each character. Then, if a letter is between two numbers (without separation), 
#   switch the places of the two numbers. 
#   For example: if str is "6Hello4 -8World, 7 yes3" the output should be 4hELLO6 -8wORLD, 7 YES3. 

def SwapII(str)
  p = /\d[a-zA-Z]+\d/
  s = str.scan(p)
  
  for i in 0..s.size-1
    v = s[i].chars
    temp = v[0]
    v[0] = v[v.length-1]
    v[v.length-1] = temp

    # v.first = v.last
    # v.last = temp
    puts v
    puts str.gsub(s[i], v.join)
  end
  
end
   



SwapII("2S 6 du5d4e")