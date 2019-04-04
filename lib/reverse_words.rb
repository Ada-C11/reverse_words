require 'pry'
# A method to reverse each word in a sentence, in place.
# Time complexity: On - linear
# Space complexity: O - no additional space taken up, temporary values to move things around. 
def reverse_words(my_words)
  return my_words if my_words == nil || my_words.length == 0
  
  i = 0
  l = my_words.length
  start_char = 0
  finish_char = 0
  
  while i < l 
    while my_words[i] == " "
      i += 1
    end
    start_char = i
    while my_words[i] != " " && i < l
      i += 1 
    end
    finish_char = (i -1) 
    while start_char < finish_char
        temp = my_words[start]
        my_words[start_char] = my_words[finish_char]
        my_words[finish] = temp
        start_char += 1
        finish_char -= 1
    end
  end
  return my_words
end 