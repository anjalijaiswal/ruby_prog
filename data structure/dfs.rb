# # dfs.rb
# def depth_first_search(adj_matrix, source_index, end_index)
#   node_stack = [source_index]

#   loop do
#     curr_node = node_stack.pop
#     return false if curr_node == nil
#     return true if curr_node == end_index

#     children = (0..adj_matrix.length-1).to_a.select do |i| 
#       adj_matrix[curr_node][i] == 1
#     end

#     node_stack = node_stack + children
#   end
#   node_stack
# end


class Dfs
  def traverse(adj_matrix, source, destination)

    visited = [source]
    loop do
      curr_node = visited.pop
      children = (0..adj_matrix.length-1).to_a.select do |i| 
      adj_matrix[curr_node][i] == 1
    end

    node_stack = node_stack + children
  end
  node_stack
  end
end

adj_matrix =  [0,1,1,0,0,1,1], #0 
    [1,0,0,0,0,0,0], #1
    [1,0,0,0,0,0,0], #2
    [0,0,0,0,1,1,0], #3
    [0,0,0,1,0,1,1], #4
    [1,0,0,1,1,0,0],
    [1,0,0,0,1,0,0] 

p Dfs.new.traverse(adj_matrix, 0, 6)