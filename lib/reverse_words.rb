# A method to reverse each word in a sentence, in place.
# Time complexity: O(n), where n is length of my_words
# Space complexity: O(1)
require "pry"

def partial_reverse(my_words, start_of_word, end_of_word)
  i = start_of_word
  j = end_of_word
  while i < j
    my_words[i], my_words[j] = my_words[j], my_words[i]
    i += 1
    j -= 1
  end
end

def reverse_words(my_words)
  return nil if my_words == nil
  i = 0
  while i < my_words.length
    while my_words[i] == " " && i < my_words.length
      i += 1
    end

    start_of_word = i

    while my_words[i] != " " && i < my_words.length
      i += 1
    end

    end_of_word = i - 1

    partial_reverse(my_words, start_of_word, end_of_word)
  end
end
