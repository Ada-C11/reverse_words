# A method to reverse each word in a sentence, in place.
# Time complexity: O(n), where n is the length of the string 
# Space complexity: O(1)

def reverse_words(my_words)
  return false if my_words == nil || my_words.length == 0  
  word_start = 0
  word_end = 0
  i = 0
  
  while i < my_words.length
    while  i < my_words.length && my_words[i] == " "
      i += 1
    end
    word_start = i

    while i < my_words.length && my_words[i] != " "
      i += 1
    end 
    word_end = i - 1
    while word_start < word_end
    temp = my_words[word_start]
    my_words[word_start] = my_words[word_end]
    my_words[word_end] = temp
    word_start += 1
    word_end -= 1
    end
  end
  return my_words
end
