# Time complexity: O(n), where n is the length of the input
# Space complexity: O(1), because the characters are reversed in place, no additional space is needed

def reverse_words(my_words)
  first_char = 0
  last_char = 0
  i = 0
  unless my_words == nil
    length = my_words.length
    while i < length
      while my_words[i] == " "
        i += 1
      end
      first_char = i
      while i < length && my_words[i] != " "
        i += 1
      end
      last_char = i - 1
      while last_char > first_char
        temp = my_words[first_char]
        my_words[first_char] = my_words[last_char]
        my_words[last_char] = temp
        first_char += 1
        last_char -= 1
      end
    end
  end
  return my_words
end
