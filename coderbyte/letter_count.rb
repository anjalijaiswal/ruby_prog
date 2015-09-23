#Have the function LetterCount(str) take the str parameter being passed and 
#return the first word with the greatest number of repeated letters. 
#For example: "Today, is the greatest day ever!" 
#should return greatest because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's. 
#If there are no words with repeating letters return -1. Words will be separated by spaces.


def LetterCount(str)
  highest_count = 1
  letter = {}
  # code goes here
  words = str.split(" ")
  words.to_a.each do |w|
    w.chars.to_a.each do |a|
      if w.count(a) > highest_count
        highest_count =  w.count(a)
        letter[w] =  highest_count.to_i 
      end
    end
  end
  if letter.length == 0
    return -1
  else
   a =  letter.max_by{|w,c| c}
   return a[0]
  end      
end



LetterCount("Hello apple pie")