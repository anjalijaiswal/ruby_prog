#Bisection_method # roots of quadratic eq
# require 'byebug'
require 'awesome_print'
class RootFinder
  
  # evaluate the value of given function
  def expression(x)
    return x**3-x-2
  end

  def bisection(a,b,nmax)
    # where a & b are endpoint values 
    # nmax is maximum iterations

    result = []
    # mid_point = 0.0
    f0 = expression(a)
    f1 = expression(b)
    delta = 10**-3
    
    while delta > 10**-4 do
      mid_point = (a+b)/2.to_f
      
      result << mid_point
      
      fm = expression(mid_point)
      delta = (result[-2] - result.last).abs if result.length > 2
      
      if fm > 0
        if f0 > 0
          a = mid_point 
          f0 = fm
        else
          b = mid_point
          f1 = fm
        end
      else 
        if f0 > 0
          b = mid_point
          f1 = fm
        else
          a = mid_point
          f0 = fm
        end
      end
    end
    
    puts result.last
  end  
end

b = RootFinder.new
b.bisection(1,2,15)

