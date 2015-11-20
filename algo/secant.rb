#
class RootFind

  def f(x)
    x**4 - 5
  end

  def secant_method(x0,x1)
    # where x0 & x1 are initial guesses 
    x_arry = [x0,x1]
    delta = 10**-3
    
    while delta > 10**-4 do 
      
      num = (f(x_arry.last)*(x_arry.last-x_arry[-2]))
      den = (f(x_arry.last)-f(x_arry[-2])).to_f
      xm = x_arry.last - num/den
      delta = (xm - x_arry.last).abs
      x_arry << xm
    end
    p x_arry.last
  end

end

r = RootFind.new
r.secant_method(1,2)