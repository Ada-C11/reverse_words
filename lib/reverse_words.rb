# A method to reverse each word in a sentence, in place.
# Time complexity: linear, as the words in the string are reversed in place
# Space complexity: O(1), as the iterators are updated without further need for space
def reverse_words(my_words)
  word_start = 0
  word_end = 0
  i = 0
  unless my_words == nil
    while i < my_words.length                         # iterate until the end of the string
      while i < my_words.length && my_words[i] == " " # ignore empty spaces
        i += 1
      end

      word_start = i                                  # i is set to the index of first char found
      
      while i < my_words.length && my_words[i] != " " # iterate until the end of the word
        i += 1
      end

      word_end = i - 1                                

      while word_end > word_start                     # swap letters starting from the outside
        temp = my_words[word_start]
        my_words[word_start] = my_words[word_end]
        my_words[word_end] = temp
        word_start += 1
        word_end -= 1
      end
    end 
  end
  return my_words
end
