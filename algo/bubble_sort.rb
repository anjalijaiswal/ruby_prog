# bubble_sort.rb
class BubbleSort
  def self.sort(array)
    loop do 
      swapped = false
      array.each_cons(2) do |x1, x2|
      # array.each_index do |i|
        # next if i == 0
        if x1 > x2
          puts "#{x1}   #{array}"
          swapped = true
          x2, x1 = x1, x2
        end
      end
      break if swapped == false
    end
    array
  end
end

puts BubbleSort.sort([8, 3, 25, 6, 10, 17, 1, 2, 18, 5])