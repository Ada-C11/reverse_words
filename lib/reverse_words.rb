# A method to reverse each word in a sentence, in place.
# Time complexity:  O(n) where n is the length of the input string. Each character of the string is
# iterated over once with a constant number of actions, then each word it iterated over 1/2 the word length again.
# So it comes out to about O(n + 1/2 n), which reduces to O(n)
# Space complexity: O(1) constant where n is the length of the my_words string. For any length of the string
# I use the same number of fixed size variables (either size int or size char).

def reverse_words(my_words)
  return false if !my_words
  first_pointer = 0
  while first_pointer < my_words.length
    first_pointer += 1 while my_words[first_pointer] == " "
    second_pointer = first_pointer
    second_pointer += 1 while my_words[second_pointer + 1] != " " && second_pointer < my_words.length - 1
    word_length = second_pointer - first_pointer + 1
    (word_length / 2).times do |shift|
      temp = my_words[first_pointer + shift]
      my_words[first_pointer + shift] = my_words[second_pointer - shift]
      my_words[second_pointer - shift] = temp
    end
    second_pointer += 2
    first_pointer = second_pointer
  end
  return my_words
end
