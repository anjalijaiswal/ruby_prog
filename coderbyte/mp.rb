def MultiplicativePersistence(num)

  # code goes here
  str = num.to_s
  return 0 if str.length == 1
  arr = str.chars
  sum = arr.inject(1){|sum,n| sum * n.to_i }
  if sum.to_s.length > 1
    count = 1
    begin
      sum = sum.to_s.chars.inject(1){|sum,n| sum * n.to_i } 
      count = count + 1
    end until sum.to_s.length == 1
    return count
  else 
    return 1
  end
         
end
   