# A method to reverse each word in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

def reverse_words(my_words)
  # each letter needs to move opposite direction
  i = 0
  j = -1
  while i < (my_words.length) / 2
    last_letter = my_words[i]
    my_words[i] = my_words[j]
    my_words[j] = last_letter
    i += 1
    j -= 1
  end
  return my_words
  # need to do this x-length of times? x = number of letters in the word/string
end

word = reverse_words("Engineer")
puts "#{word}"
