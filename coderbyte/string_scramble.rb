def StringScramble(str1,str2)

  # code goes here
  if str1.chars.sort.join =~ Regexp.new(str2.chars.sort.join(".*"))
    return true
  else
    return false
  end
         
end