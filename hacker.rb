#!/bin/ruby

# Complete the function below.


def  Decoding( encodings,  encodedstring) 
    encode_values = {}
    encodings.each do |encoding|
        strng = encoding.split(/\t/)
        if strng[0] == /\s/
            encode_values[' '] = strng[1]
        else
            encode_values[strng[0]] = strng[1]
        end
    end
    text = []
    previous = ''
    encodedstring.each_char do |char|
      if encode_values.has_value?(previous + char)
        text << encode_values.key(previous + char)
        previous = ''
      else
        previous += char
      end
    end
    text.join.gsub(/\[newline\]/, "\n")
end

fp = File.open(ENV['OUTPUT_PATH'], 'w')
    

_encodings_cnt = 0
_encodings_cnt = Integer(gets)
_encodings_i=0
_encodings = Array.new(_encodings_cnt)

while (_encodings_i < _encodings_cnt)
    _encodings_item = gets.rstrip;
    _encodings[_encodings_i] = (_encodings_item)
    _encodings_i+=1
    
end


_encodedstring = gets.strip;

res = Decoding(_encodings, _encodedstring);
fp.write res;
fp.write "\n"

fp.close()
