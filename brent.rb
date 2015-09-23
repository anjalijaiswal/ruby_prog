# Brent's method
class RootFind

  def f(x)
    a = x + 3
    b = x - 1
    a*(b**2)
  end
  
  def secant_method(x0,x1)
    # where x0 & x1 are initial guesses    
    num = (f(x1)*(x1-x0))
    den = (f(x1)-f(x0)).to_f
    x1 - num/den
  end

  def iqi_method(a,b,c)
    # where a & b & c are initial guesses 
    sa = a*f(a)*f(c)/(f(a)-f(b))*(f(a)-f(c))
    sb = b*f(a)*f(c)/(f(b)-f(a))*(f(b)-f(c))
    sc = c*f(a)*f(b)/(f(c)-f(a))*(f(c)-f(b))
    sa + sb + sc
  end

  # will check if the value of s does't lie between (3*a + b)/4.0 & b
  def nt_betwn(s,a,b)
    s1 =  (3*a + b)/4.0
    if b > s1
      if s.between?(s1,b)
        false
      else
        true
      end
    else
      if s.between?(b,s1)
        false
      else
        true 
      end
    end
  end

  def brent_method(a,b)
    # intial guess for root such that f(a) & f(b) have opposite signs.
    delta = 1E-2
    
    s = a+b/2 
    c = a

    while delta > 1E-3 || f(s) == 0 do 
      
      if f(a).abs < f(b).abs
        a,b = b,a
      end
      
      
      a = a.to_f.round(5)
      b = b.to_f.round(5)
      
      # s1 & s2 are provisional values for the next iterate
      # s1 is calculated through linear interpolation & s2 via inverse quadratic interpolation
      s1 = secant_method(a,b)
      s2 = iqi_method(a,b,c)
     
      if f(a) != f(c) and f(b) != f(c)
        s = s2 
      else
        s = s1
      end
       
      if nt_betwn(s,a,b)
        s = (a+b)/2
      end 

      c = s
      delta = (b - s).abs
      
      if(f(c)*f(s) < 0)
        a = s
        b = c
      elsif(f(s)*f(b) < 0)
        a = c
      else
        b = s
      end
    end
    s
  end 
end





r = RootFind.new
r.brent_method(-4,4/3.0)