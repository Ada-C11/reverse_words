# A method to reverse each word in a sentence, in place.
# Time complexity:linear, O(n) where n is the number of elements in the string array because we go through the string once.
# for each reversing of each word the program needs to work through half the length which at the end will be half the length of the 
# string and we can eliminate that because its a constant
# Space complexity: constant O(1), because we only use spaces for storing word_start and word_end and i and that will not change
def reverse_words(my_words)
  if my_words
    word_start = 0
    word_end = 0
    i = 0
    while i < (my_words.length)
      if my_words[i] != " "
        word_start = i
        until my_words[i] == " " || i == my_words.length
          i += 1
        end
       word_end = i
       string_reverse(my_words, word_start, word_end)
      end
      i += 1
    end
    return my_words
  else 
    return nil
  end
end
def string_reverse(my_string, start_index, end_index)
  (((end_index + 1) - start_index) / 2).times do |i|
    temp = my_string[start_index + i]
    my_string[start_index + i] = my_string[end_index - (i + 1)]
    my_string[end_index - (i + 1)] = temp
  end
  return my_string
end
