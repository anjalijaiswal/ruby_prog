# selection_sort.rb
class SelectionSort
  def self.sort(array)
    array.each_index do |i|
      min = array.slice(i...array.size).min
      array[array.index(min)], array[i] = array[i], min
    end
    puts array
  end
end

SelectionSort.sort([8, 3, 25, 6, 10, 17, 1, 2, 18, 5])