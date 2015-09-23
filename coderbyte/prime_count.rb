
#Sieve_of_Eratosthenes#Ruby
def PrimeMover(num)

  # code goes here
  nums = [nil, nil, *2..10000]
  (2..Math.sqrt(10000)).each do |i|
    (i**2..10000).step(i){|m| nums[m] = nil}  if nums[i]
  end
  
  return nums.compact[num-1]
         
end

PrimeMover(16)