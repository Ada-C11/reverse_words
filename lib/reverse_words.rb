# A method to reverse each word in a sentence, in place.
# Time complexity: O(n + m/2) where n is the length of sentence and m is length of words.
#                        --> O(n).  
# Space complexity: O(1)

def reverse_words(my_words)
  return nil if !my_words
  left = 0
  my_words_length = my_words.length
  my_words_length.times do |i|
    if my_words[i] == " " || i == my_words_length - 1
      right = i == my_words_length - 1 ? i : i - 1
      ((right + 1 - left)/2).times do |j|
        temp = my_words[left + j]
        my_words[left + j] = my_words[right - j]
        my_words[right - j] = temp
      end
      left = i + 1
    end
  end
  return my_words
end
