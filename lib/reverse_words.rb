require "pry"
# A method to reverse each word in a sentence, in place.
# Time complexity: O(n) where n is the length of the array, my_words
# Space complexity: Constant, O(1)

def reverse_words(my_words)
  if my_words == nil
    return nil
  end
  index = 0
  start_index = 0
  my_words.length.times do
    if my_words[index] == " " # if there is a white space, run the code below
      end_index = index - 1 # drop the white space
      my_words = reverse(my_words, start_index, end_index)
      start_index = index + 1
    end
    index += 1
  end
  my_words = reverse(my_words, start_index, index - 1) # account for last word in my_words
  return my_words
end

# helper method to reverse each word in my_words (same as the reverse_string method)
def reverse(my_words, start_index, end_index)
  while start_index < end_index
    temp = my_words[start_index]
    my_words[start_index] = my_words[end_index]
    my_words[end_index] = temp
    start_index += 1
    end_index -= 1
  end
  return my_words
end
