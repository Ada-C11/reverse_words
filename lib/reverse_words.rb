# A method to reverse each word in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(1)
def reverse_words(my_words)
  return nil if my_words.nil?

  start_word = 0
  end_word = 0
  i = 0
  
  unless my_words == nil
    length = my_words.length
    while i < length
      while my_words[i] == " "
        i += 1
      end
      start_word = i

      while i < length && my_words[i] != " "
        i += 1
      end
      end_word = i - 1

      while end_word > start_word
        temp = my_words[start_word]
        my_words[start_word] = my_words[end_word]
        my_words[end_word] = temp
        start_word += 1
        end_word -= 1
      end

    end
  end

  return my_words
end