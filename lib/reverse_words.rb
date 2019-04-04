# A method to reverse each word in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
require "pry"

def reverse_words(my_words)
  # each letter needs to move opposite direction
  if my_words != nil
    all_words_split = my_words.split(" ")
    all_words_split.each do |word|
      i = 0
      j = -1
      while i < (word.length) / 2
        last_letter = word[i]
        word[i] = word[j]
        word[j] = last_letter
        i += 1
        j -= 1
      end
    end
    #   binding.pry
    return my_words.replace(all_words_split.join(" "))
  else
    return nil
  end
  # need to do this x-length of times? x = number of letters in the word/string
end

#["hello,", "world"]
# word = reverse_words("hello, world")
# puts "#{word}"

# i = 0
# j = -1
# while i < (my_words.length) / 2
#   last_letter = my_words[i]
#   my_words[i] = my_words[j]
#   my_words[j] = last_letter
#   i += 1
#   j -= 1
# end
# return my_words
