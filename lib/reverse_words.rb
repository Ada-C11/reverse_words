# A method to reverse each word in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_words(my_words)
  return nil if my_words == nil
  i = 0
  j = 0
  while i < my_words.length
    if my_words[i] != " " && i != nil
      j = i + 1
      while my_words[j] != " " && my_words[j] != nil
        j += 1
      end
      my_words = string_reverse(my_words, i, j - 1)
      i = j + 1
    else
      i += 1
    end
  end
end

def string_reverse(my_string, i, j)
  while i < j
    temp = my_string[i]
    my_string[i] = my_string[j]
    my_string[j] = temp
    i += 1
    j -= 1
  end
  return my_string
end

puts reverse_words("hello, world")
