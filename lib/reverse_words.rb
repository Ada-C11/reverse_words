require 'pry'
# A method to reverse each word in a sentence, in place.
# Time complexity: On - linear
# Space complexity: O - no additional space taken up, temporary values to move things around. 
def reverse_words(my_words)
  return my_words if my_words == nil || my_words.length == 0
  
  i = 0
  l = my_words.length
  start = 0
  finish = 0
  
  while i < l 
    while my_words[i] == " "
      i += 1
    end
    start = i
    while my_words[i] != " " && i < l
      i += 1 
    end
    finish = (i -1) 
    while start < finish
        temp = my_words[start]
        my_words[start] = my_words[finish]
        my_words[finish] = temp
        start += 1
        finish -= 1
    end
  end
  return my_words
end 