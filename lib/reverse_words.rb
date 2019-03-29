require "pry"

# A method to reverse each word in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

def reverse_words(my_words)
  # raise NotImplementedError
  return nil if my_words == nil

  i = 0

  while i < my_words.length
    until i != " "
      i += 1
    end
    word_start = i
    until i == " " || i == my_words.length
      i += 1
      # binding.pry
    end
    word_end = i - 1

    word = my_words[word_start..word_end]
    # binding.pry
    word.string_reverse
    i = word_end + 1
    # binding.pry
  end
end

def string_reverse(word)
  return word if word == nil

  i = 0
  j = word.length - 1

  while i < j
    temp = word[i]
    word[i] = word[j]
    word[j] = temp

    i += 1
    j -= 1
  end
  return word
end
