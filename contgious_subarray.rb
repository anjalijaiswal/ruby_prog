class KadaneAlgo
  def initialize
    @array = user_input
    @max_sum_so_far = @array[0]
    @end_index = 0
    @start_index = 0
  end

  def max_subarray_sum
    max_ending_here = @array[0]
    @array.each_with_index do |value, index|
      if value > (max_ending_here + value)
        max_ending_here = value
        @start_index = index
      else
        max_ending_here += value
      end
      if max_ending_here > @max_sum_so_far
        @end_index = index
        @max_sum_so_far = max_ending_here
      end
    end
    print_output
  end

  def user_input
    puts 'Enter the array'
    gets.chomp.split.map(&:to_i)
  end

  def print_output
    puts 'Largest SubArray '
    puts 'Start Index: ' + @start_index.to_s
    puts 'End Index: ' + @end_index.to_s
    puts 'Length: ' + (@end_index - @start_index).to_s
    puts 'Sum: ' + @max_sum_so_far.to_s
    puts 'Elements: ' + @array[@start_index..@end_index].join(' ')
  end
end

KadaneAlgo.new.max_subarray_sum
