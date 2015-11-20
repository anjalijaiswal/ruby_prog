# insertion sort
# quick sort
class Sort 
  def insertion_sort(arry)
    arry.each_index do |i|
      next if i == 0
      (1...arry.size).each do |j|
        arry[j], arry[j-1] = arry[j-1], arry[j] if arry[j] < arry[j-1]
      end
    end
    puts arry
  end

  def quick_sort(arry,from=0,to=nil) 
    to = arry.size - 1 if to == nil
    if from < to
      i = partition(arry, from, to)
      quick_sort(arry, from, i - 1)
      quick_sort(arry, i + 1, to)
    end
    arry
  end

  private
  def partition(arry, from, to)
    pivot = arry[to]
    i = from
    for j in from...to
      if arry[j] <= pivot
        arry[i], arry[j] = arry[j] , arry[i]
        i += 1
      end
    end
    arry[i], arry[to] = arry[to], arry[i]
    return i
  end
end


sort = Sort.new
sort.insertion_sort([8, 3, 25, 6, 10, 17, 1, 2, 18, 5])
puts sort.quick_sort([8, 3, 25, 6, 10, 17, 1, 2, 18, 5])

