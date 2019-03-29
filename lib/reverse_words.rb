# A method to reverse each word in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def swap(starting_index, ending_index, my_words)
  for j in (starting_index..(starting_index + (ending_index - starting_index - 1) / 2))
    temp = my_words[j]
    my_words[j] = my_words[starting_index + ending_index - j]
    my_words[starting_index + ending_index - j] = temp
  end
end

def reverse_words(my_words)
  if my_words == nil
    return nil
  end
  starting_index = 0
  for i in (0...my_words.length)
    if (my_words[i] == " ")
      ending_index = i - 1
      swap(starting_index, ending_index, my_words)
      starting_index = i + 1
    end
    if (i == my_words.length - 1)
      ending_index = i
      swap(starting_index, ending_index, my_words)
      starting_index = i + 1
    end
  end
  return my_words
end

puts reverse_words("the quick brown fox jumped over the lazy dog")
