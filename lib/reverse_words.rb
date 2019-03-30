require "pry"

# A method to reverse each word in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

def reverse_words(my_words)
  # raise NotImplementedError
  if my_words
    i = 0

    while i < my_words.length
      # finding first character of a word
      until i != " "
        i += 1
      end
      word_start = i
      # finding last character of a word or end of sentence
      until i == " " || i == my_words.length
        i += 1
        # binding.pry
      end
      word_end = i - 1
      word = my_words[word_start..word_end]
      # binding.pry
      string_reverse(word)
    end
      i += 1
      # binding.pry
    end
    return my_words
  else
    return nil
  end
end

def string_reverse(word)
  if word
    i = 0
    j = word.length - 1

    while i < j
      temp = word[i]
      word[i] = word[j]
      word[j] = temp
      # binding.pry
      i += 1
      j -= 1
    end
    return word
  else
    return nil
  end
end
