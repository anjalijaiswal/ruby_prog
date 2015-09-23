#“Fibonacci series, swapping two variables, finding maximum/minimum among a list of numbers.” 
def fibonacci(n)
  arry = [0,1]

  for i in 2..n-1
    arry << arry[-1] + arry[-2] 
  end

  puts arry.count
end


fibonacci(12)

def swap(a,b)
  puts "a is #{a} ; b is #{b}"
  a,b = b,a
  puts "a is #{a} ; b is #{b}"
end

swap(10,20)

def min_max
  a = (20...30)
  p "min is #{a.min} max is #{a.max}"
end

min_max