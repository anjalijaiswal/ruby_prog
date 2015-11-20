# merge_sort.rb
class MergeSort
  def self.sort(array)
    
    return array if array.size <= 1
    left = self.sort array[0, array.size / 2]
    right = self.sort array[array.size / 2, array.size]

    self.merge(left, right)
  end

  private
  
  def self.merge(left, right)
    result = []
    while left.size > 0 && right.size > 0
      result << if left[0] <= right[0]
        left.shift
      else
        right.shift
      end
    end
    result.concat(left).concat(right)
  end
end

puts MergeSort.sort([8, 3, 25, 6, 10, 17, 1, 2, 18, 5])

