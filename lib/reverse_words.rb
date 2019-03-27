# A method to reverse each word in a sentence, in place.
# Time complexity: O(n) where n is the number of characters in the input string
# Space complexity: O(1)
def reverse_words(my_words)
  return nil if my_words.nil?

  start_index = 0
  end_index = 0
  my_words.length.times do |i|
    end_index = i
    if my_words[end_index] == ' '
      word_reverse(start_index, end_index - 1, my_words)
      start_index = end_index + 1
    elsif end_index == my_words.length - 1
      word_reverse(start_index, end_index, my_words)
    end
  end
  return my_words
end

def word_reverse(start_index, end_index, words)
  i = start_index
  j = end_index
  while i < j
    temp = words[i]
    words[i] = words[j]
    words[j] = temp
    i += 1
    j -= 1
  end
  return words
end
