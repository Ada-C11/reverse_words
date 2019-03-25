# A method to reverse each word in a sentence, in place.
# Time complexity: O(n), where n = the length of the string
# Space complexity: O(1)
def reverse_words(my_words)
  return nil if !my_words

  length = my_words.length

  beginning_index = 0
  end_index = 0

  until end_index == length
    if my_words[end_index] != " "
      end_index += 1
    elsif my_words[end_index] == " "
      if end_index != beginning_index
        my_words[beginning_index...end_index] = string_reverse(my_words[beginning_index...end_index])
        beginning_index = end_index
      else
        beginning_index += 1
        end_index += 1
      end
    end
    if end_index == length - 1
      my_words[beginning_index..end_index] = string_reverse(my_words[beginning_index..end_index])
    end
  end

  return my_words
end

def string_reverse(my_string)
  end_index = my_string.length - 1
  begin_index = 0

  until end_index <= begin_index
    a = my_string[begin_index]
    b = my_string[end_index]
    c = b
    my_string[end_index] = a
    my_string[begin_index] = c
    end_index -= 1
    begin_index += 1
  end
  return my_string
end
