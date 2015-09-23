require 'awesome_print'
require 'byebug'

def OffLineMinimum(arr)
  hold = []
  min = []
  # code goes here
  arr.each do |e|
    hold << e if e != 'E'
    if e=='E'     
      min<<hold.min
      hold.delete(hold.min)
    end
  end
  
  puts min
         
end
   
OffLineMinimum(["5","4","6","E","1","7","E","E","3","2"])


