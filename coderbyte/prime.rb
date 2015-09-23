require 'awesome_print'
require 'byebug'


def PrimeTime(num)

  # code goes here
  for i in 2..num
    if num%i == 0
      ap num%i 
      ap false
    else
      ap false
    end
  end
  
         
end
   

   PrimeTime(8)