# A method to reverse each word in a sentence, in place.
# Time complexity: Not sure on this, but I believe O(n^2),
# where n represents the length of my_words.
# Space complexity: O(1), because the letters are reversed in place.

def reverse_words(my_words)
  if my_words == nil
    return my_words
  end
  len = my_words.length
  i = 0
  low = nil
  high = nil
  len.times do
    if my_words[i] != " "
      if my_words[i - 1] == " " || i == 0
        low = i
      elsif my_words[i + 1] == " " || i + 1 == len
        high = i
      end
      if low != nil && high != nil
        j = 0
        len2 = high - low + 1
        (len2 / 2).times do
          l = my_words[low + j]
          h = my_words[high - j]
          x = l
          my_words[low + j] = h
          my_words[high - j] = x
          j += 1
        end
        high = nil
        low = nil
      end
    end
    i += 1
  end
  return my_words
end
