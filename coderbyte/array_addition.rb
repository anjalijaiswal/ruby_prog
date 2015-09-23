require 'byebug'
require 'awesome_print'

def ArrayAddition(arr)
   combi = []
  result = []
  # code goes here
  max = arr.max
  arr = arr - [arr.max]
  
  for i in 2..arr.size
    combi = arr.combination(i).to_a
    combi.each do |e|
      if e.inject{|sum,n| sum = sum + n} == max
        result << 'true'
      end
    end
  end
  
   if result.size > 0
    puts true
   else
    puts false
   end      
end


ArrayAddition([3,5,-1,8,12])
