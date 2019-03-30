require "pry"

# A method to reverse each word in a sentence, in place.
# Time complexity: O(n) where n is the length of the string.
# Space complexity: O(1). constant time because it mutates the string in place.

def reverse_words(my_words)
  return nil if my_words == nil
  i = 0

  while i < my_words.length
    # finding the first character of a word
    until my_words[i] != " "
      i += 1
    end
    word_start = i
    # finding the last character of a word
    until my_words[i] == " " || i == my_words.length
      i += 1
    end
    word_end = i - 1
    string_reverse(my_words, word_start, word_end)
    i = word_end + 1
  end
  return my_words
end

def string_reverse(word, i = nil, j = nil)
  return word if word == nil
  i ||= 0
  j ||= (word.length - 1)

  while i < j
    temp = word[i]
    word[i] = word[j]
    word[j] = temp
    i += 1
    j -= 1
  end
  return word
end
