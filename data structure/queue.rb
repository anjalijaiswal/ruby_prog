#Queue class for restricted functionality
class Queue
  
  def intialize
    @queue = []
  end
  def enqueue(x)
    @queue << x
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue.first
  end

  def length
    @queue.length
  end

  def empty?
    @queue.empty?
  end
end