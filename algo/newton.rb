#Newton's method
class RootFind

  # function
  def f(x)
    (x**3 ) - x + 1
  end

  # derivative of f(x)
  def derivative(x)
    3*(x**2) -1
  end

  def newton_method(x0)
    # where x0 is initial guess

    delta = 10**-3
    
    while delta > 10**-4 do 
      
      # x1 is next element
      x1 = x0 - f(x0)/derivative(x0).to_f
      delta = (x1 - x0).abs
      x0 = x1
      
    end
    
    p x1
  end

end

r = RootFind.new
r.newton_method(-1)