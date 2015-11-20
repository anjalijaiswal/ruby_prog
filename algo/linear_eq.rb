#System of linear equations
require 'matrix'
require 'rational'

class LinearEq
  # for 3 unknowns
  def matrix_3(arry1,arry2)
    # co_effi stands for co-efficients
    # const stands for constants
    const = []

    co_effi = arry1.map do |row|
              row.map {|a| Rational(a)}
            end

    co_effi = Matrix[*co_effi]
    
    arry2.each{|a| const << [Rational(a)]}
    const = Matrix[*const]
     
    solution = (co_effi.inverse) * const
    p solution
  end

  #pass the co-efficients & constants of x & y 
  #(ax + by = c & a`x + b`y = c`) in array like [[a,b][a`,b`]] & [c,c`]
  def cramers_rule(ax,ay,az,a)
    # ax = array for all coefficients of x
    # ay = array for all coefficients of y
    # az = array for all coefficients of z
    # a  = array for all constants
    x = Matrix[a,ay,az].determinant/Matrix[ax,ay,az].determinant.to_f
    y = Matrix[ax,a,az].determinant/Matrix[ax,ay,az].determinant.to_f
    z = Matrix[ax,ay,a].determinant/Matrix[ax,ay,az].determinant.to_f
    p x
    p y 
    p z
  end

  def convert_to(ary, type)
    ary.each_with_object([]) do |row, new|
      new << row.collect {|elem| elem.send(type)}
    end
  end

  # for 2D array & Non singular array
  def gaussian_elimination(ary)
    lead = 0
    rows = ary.size
    cols = ary[0].size
    rary = convert_to(ary, :to_r)  # use rational arithmetic
    rows.times do |r|
      i = r
      # swap rows i and r 
      rary[i], rary[r] = rary[r], rary[i]
      # normalize row r
      v = rary[r][lead]
      rary[r].collect! {|x| x / v}
      # reduce other rows
      rows.times do |i|
        next if i == r
        v = rary[i][lead]
        rary[i].each_index {|j| rary[i][j] -= v * rary[r][j]}
      end
      lead += 1
    end
    rary.each do |row|
      p row.last
    end
  end
end



l = LinearEq.new
# l.gaussian_elimination([[2,10,8,54],[0,7,4,30],[5,5,5,35]])
l.gaussian_elimination([[2,1,-1,8],[-3,-1,2,-11],[-2,1,2,-3]])
l.cramers_rule([1,3,2],[3,5,4],[-2,6,3],[5,7,8])
l.matrix_3([[2,10,8],[0,7,4],[5,5,5]],[54,30,35])


