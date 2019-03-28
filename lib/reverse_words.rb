# A method to reverse each word in a sentence, in place.
# Time complexity: O(n) - n being the length of the string passed into reverse_words
# Space complexity: O(1)
def reverse_words(my_words)
  return nil if my_words == nil

  i = 0
  max_index = my_words.length - 1
  first = 0

  while i <= max_index
    if my_words[i] != " " && my_words[i - 1] == " "
      first = i
    elsif my_words[i] != " " && (my_words[i + 1] == " " || my_words[i + 1] == nil)
      last = i

      while first < last
        my_words[first], my_words[last] = my_words[last], my_words[first]

        first += 1
        last -= 1
      end
    end
    i += 1
  end
  return my_words
end
