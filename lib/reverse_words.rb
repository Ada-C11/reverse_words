# A method to reverse each word in a sentence, in place.
# Time complexity: O(n), where n is the length of the string my_words
# Space complexity: O(1)
def reverse_words(my_words)
  return nil if my_words == nil
  i = 0
  start_index = 0
  my_words.length.times do
    if my_words[i] == " "
      my_words = reverse_word(my_words, start_index, i - 1)
      start_index = i + 1
    end
    i += 1
  end

  my_words = reverse_word(my_words, start_index, i - 1) # for last word

  return my_words
end

def reverse_word(my_words, start_index, end_index)
  ((end_index - start_index) / 2 + 1).times do
    placeholder = my_words[start_index]
    my_words[start_index] = my_words[end_index]
    my_words[end_index] = placeholder
    start_index += 1
    end_index -= 1
  end
  return my_words
end

puts reverse_words(" ,gnitseT   ,gnitset eno owt .eerht")
