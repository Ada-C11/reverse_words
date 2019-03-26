# A method to reverse each word in a sentence, in place.
# Time complexity: O(n) linear, algorithm dependant on the length of my_words
# Space complexity: O(1)
def reverse_words(my_words)
  if my_words == nil
    return nil
  else  
    word_start = 0
    word_end = 0
  end
 
  while word_start < my_words.length
    if my_words[word_end] == " " || word_end == my_words.length
      start_pointer = word_start
      end_pointer = word_end - 1
    

    while start_pointer < end_pointer
      temporary = my_words[start_pointer]
      
      my_words[start_pointer] = my_words[end_pointer]
      my_words[end_pointer] = temporary
      start_pointer += 1
      end_pointer -= 1
    end
    word_start= word_end + 1
    end
    word_end += 1
  end
end
