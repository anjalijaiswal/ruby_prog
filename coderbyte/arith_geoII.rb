def ArithGeoII(arr)
  diff = []
  div = []
  # code goes here
  for i in 1..arr.size-1
    diff << arr[i]-arr[i-1]
    div << arr[i]/arr[i-1]
  end
    if diff.uniq.size < 2 
  return "Arithmetic" 
    elsif div.uniq.size < 2
    return "Geometric" 
  else 
    return -1
  end
    
         
end