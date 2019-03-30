# A method to reverse each word in a sentence, in place.
# Time complexity: O(n), where n is the number of elements in the string.
# Space complexity: O(1), since the space is a constant
def reverse_words(my_words)
  i = 0
  if my_words == nil || my_words == ""
    return nil
  else
    while i < my_words.length
      until my_words[i] != " "
        i += 1
      end

      last = i + 1
      while my_words[last] != " " && last < my_words.length
        last += 1
      end
      j = last - 1

      word_reverse(my_words, i, j)

      i = last
    end
    return my_words
  end
end

def word_reverse(word, start_index, end_index)
  while start_index < end_index
    temp = word[start_index]
    word[start_index] = word[end_index]
    word[end_index] = temp
    start_index += 1
    end_index -= 1
  end
  return word
end
