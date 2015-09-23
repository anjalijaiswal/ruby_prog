# Have the function DashInsertII(str) insert dashes ('-') between each two odd numbers and insert asterisks ('*') 
#between each two even numbers in str. For example: if str is 4546793 the output should be 454*67-9-3. 
#Don't count zero as an odd or even number.


def DashInsertII(num)

  # code goes here
  str = num.to_s.chars.to_a
  str.each_index do |i|
    next if i == 0
    if str[i] && str[i-1] =~ /\d+/
      if str[i-1].to_i.even? && str[i].to_i.even?
        str.insert(i,'*')
      elsif str[i-1].to_i.odd? && str[i].to_i.odd?
        str.insert(i,'-')
      end
    end
  end
  return str.join
         
end
   