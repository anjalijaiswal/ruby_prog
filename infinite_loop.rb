#“Display series of numbers (1,2,3,4, 5….etc) in an infinite loop. 
#The program should quit if someone hits a specific key (Say ESCAPE key).” 

# i =0
# key = STDIN.getc.chr

# begin
#   puts i
#   i += 1
# end until (key == "q")


i=0
loop do
  begin
    break if STDIN.read_nonblock(1000)
    rescue Errno::EAGAIN
  end
  puts i
  i += 1
end