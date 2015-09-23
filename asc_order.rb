#"Accepting series of numbers, strings from keyboard and sorting them ascending, descending order." 

def series
  # p "Enter a series"
  # str = gets.chomp
  # p str.split('').sort.join
  # p str.chars.sort_by(&:downcase).join
  a = []
  loop { break if (c = gets.chomp) == 'q'; a << c }
  p a.sort
  p a.sort { |a,b| b<=>a }
end


series