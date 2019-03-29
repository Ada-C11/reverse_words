# A method to reverse each word in a sentence, in place.
# Time complexity: O(n) where n is the length of my_words (the inner loop is O(1) and O(1*n) is O(n))
# Space complexity: O(1)
def reverse_words(my_words)
  return false if my_words == nil

  i = 0
  start_of_word = 0
  end_of_word = 0
  temp = 0

  while i < my_words.length
    while i < my_words.length && my_words[i] == " "
      i += 1
    end

    start_of_word = i

    while i < my_words.length && my_words[i] != " "
      i += 1
    end

    end_of_word = i - 1

    while start_of_word < end_of_word
      temp = my_words[start_of_word]
      my_words[start_of_word] = my_words[end_of_word]
      my_words[end_of_word] = temp
      start_of_word += 1
      end_of_word -= 1
    end
  end

  return my_words
end
