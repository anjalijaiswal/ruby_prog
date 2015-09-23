#"Scientific calculator supporting addition, subtraction, multiplication, division, 
#square-root, square, cube, sin, cos, tan, Factorial, inverse, modulus" 

class calsi
  def add(a,b)
    a + b
  end

  def sub(a,b)
    a - b
  end

  def mul(a,b)
    a*b
  end

  def div(a,b)
    a/b
  end

  def sq_root(n)
    sqrt(n)
  end

  def cube(n)
    n*n*n
  end

  def sin(n)
    sin(n)
  end

  def truncate(number, places)
    (number * (10 ** places)).floor / (10 ** places).to_f
  end
end