#Equivalent iterative solution for tower of hanoi problem
require_relative 'stack'
class Toh
  # where n is number of disks
  def eis(list)
    while !list.empty?
      n,src,int,dest = list.pop
      if n == 1
        p "move disk from #{src} to #{dest}"
      else
        list.push [n-1,int,dest,src]
        list.push [1,src,dest,int]
        list.push [n-1,src,int,dest]
      end
    end
  end

  def towers(n,src,dest,int)
    if n == 1
      p "move disk from #{src} to #{dest}"
    else
      towers(n-1,int,dest,src)
      towers(1,src,dest,int)
      towers(n-1,src,int,dest)
    end
  end
end

t = Toh.new
list = []
list.push([4,'a','b','c']
t.eis(list)
t.towers(4,'a','b','c')