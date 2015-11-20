#Matrix
require 'matrix'
class Matrice
  
  # will add two matrices of same size
  def addition(arry1,arry2)
    if arry1.flatten.size != arry2.flatten.size
      puts "Addition operation failed. Matrices are of different sizes."
    else
      for i in 0...arry1.size
        for j in 0...arry1[i].size
          arry1[i][j] = arry2[i][j] + arry1[i][j]
        end
      end
      p arry1
    end
  end

  def multiplication(arry1,arry2)
    m1 = Matrix[*arry1]
    m2 = Matrix[*arry2]
    temp = []
    matrix = []
    
    if m1.column_count != m2.row_count
      p "Matrix dimention mismatch"
    else
      m1.row.each_index do |i|
        m2.column.each_index do |j|
          (0 ... m1.column_count).inject(0) do |vij, k|
            vij + m1[i, k] * m2[k, j]
          end
        end
      end
      p Matrix[*rows]
      p m2.column_count
    end
  end

end


m = Matrice.new
# m.addition([[1,2,3],[4,5,6]],[[1,2,3],[1,2,3]])
m.multiplication([[1,2],[4,5]],[[1,2],[1,2]])
