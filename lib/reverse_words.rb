# A method to reverse each word in a sentence, in place.
# Time complexity: linear, O(n) - where n is the length of the input string
# Space complexity: constant, O(1) - the space used remains the same regardless
#                   of input size.
def reverse_words(my_words)
  return if !my_words

  start_index = 0
  end_index = 0

  while end_index < my_words.length
    if my_words[end_index] == " " || end_index == my_words.length - 1
      k = end_index
      k = end_index - 1 if my_words[end_index] == " "
      reverse_string(start_index, k, my_words)
      start_index = end_index + 1
    end
    end_index += 1
  end

  return my_words
end

def reverse_string(start_index, end_index, my_words)
  while start_index < end_index
    storage = my_words[start_index]
    my_words[start_index] = my_words[end_index]
    my_words[end_index] = storage
    start_index += 1
    end_index -= 1
  end

  return my_words
end
