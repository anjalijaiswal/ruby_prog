# Stack class for restricted functionality
class Stack
  def initialize
    @stack = []
  end

  def push(x)
    @stack.push x
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end

  def empty?
    @stack.empty?
  end
end