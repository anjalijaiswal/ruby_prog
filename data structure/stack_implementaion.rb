#detecting unbalanced punctuation in expression
require_relative 'stack'
class StackImplementaion
  def paren_match(str)
    stack = Stack.new
    asym = "{[(<"
    rsym = "}])>"

    str.each_char do |sym|
      if asym.include? sym
        stack.push(sym)
      elsif rsym.include? sym
        top = stack.peek
        if asym.index(top) != rsym.index(sym)
          return false
        else
          stack.pop
        end
      end
    end
    p stack.empty?
  end
end


s = StackImplementaion.new
s.paren_match "(((a+b)*c)(g-i))"
