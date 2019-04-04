# A method to reverse each word in a sentence, in place.
# Time complexity: Linear, or O(n), where n is the number of characters inside the string
# Space complexity: Constant or O(1), because additional space doesn't
# depend on array size or input

def reverse_words(my_words)
  return my_words if my_words == nil

  last_letter_index = 0
  empty_index = ""
  first_letter_index = last_letter_index

  while last_letter_index < my_words.length
    until [" ", nil].include?(my_words[last_letter_index])
      last_letter_index += 1
    end

    empty_index = last_letter_index
    last_letter_index -= 1

    while first_letter_index < last_letter_index
      b = my_words[last_letter_index]
      my_words[last_letter_index] = my_words[first_letter_index]
      my_words[first_letter_index] = b
      last_letter_index -= 1
      first_letter_index += 1
    end

    last_letter_index = empty_index + 1
    first_letter_index = last_letter_index
  end

  return my_words
end
