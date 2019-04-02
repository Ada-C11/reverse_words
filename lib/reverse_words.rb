# A method to reverse each word in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
require "pry"

def reverse_words(my_words)
  if my_words == nil
    return nil
  end
  first_index = 0
  last_index = 0
  string_last = my_words.length - 1
  my_words.each_char do |char|
    if char == " "
      break
    end
    last_index += 1
  end
  if (last_index - first_index) > 1
    i = first_index
    j = last_index - 1
    if j == my_words.length
      j = string_last
    end
    while i < j
      temp = my_words[i]
      my_words[i] = my_words[j]
      my_words[j] = temp
      i += 1
      j -= 1
    end
  end
  until last_index >= string_last
    first_index = last_index + 1
    last_index += 1
    my_words[first_index..string_last].each_char do |char|
      if char == " "
        break
      end
      last_index += 1
    end
    if (last_index - first_index) > 1
      i = first_index
      j = last_index - 1
      if j == my_words.length
        j = string_last
      end
      while i < j
        temp = my_words[i]
        my_words[i] = my_words[j]
        my_words[j] = temp
        i += 1
        j -= 1
      end
    end
  end
  return my_words
end
