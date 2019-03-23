# A method to reverse each word in a sentence, in place.
# Time complexity: O(w * l + n), where w represents the
# number of words in a 'my_words,' the l represents the
# number of letters in each word, and n represents the
# length of 'my_words.'
# Space complexity: O(1), because while i create a temporary array
# to hold and reverse the words within the sentence, the output is
# still the original array.
def reverse_words(my_words)
  if my_words == nil
    return my_words
  else
    words = my_words.split
    for word in words
      len = word.length
      i = 0
      (len / 2).times do
        low = word[0 + i]
        high = word[len - 1 - i]
        x = low
        word[0 + i] = high
        word[len - 1 - i] = x
        i += 1
      end
      if words.length > 1
        reversed_words = words.join
      else
        reversed_words = words[0].to_s
      end
      a = 0
      b = 0
      my_words.length.times do
        if my_words[0 + a] != " "
          my_words[0 + a] = reversed_words[0 + b]
          b += 1
        end
        a += 1
      end
    end
    return my_words
  end
end
