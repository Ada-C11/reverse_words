# A method to reverse each word in a sentence, in place.
# For n characters in the sentence,
# Time complexity: O(n)
# Space complexity: O(1)
def reverse_words(sentence)
  if sentence.nil?
    return nil
  end
  place = 0
  while place < sentence.length do
    # 1. Find first non-white space character.
    # Break if place >= sentence.length.
    while place < sentence.length && sentence[place] == " " do
      place += 1
    end
    if place >= sentence.length
      break
    end
    # 2. Set start to that index.
    start = place
    # 3. Keep iterating and moving place until we find white space or >= length.
    while place < sentence.length && sentence[place] != " " do
      place += 1
    end
    # 4. Set finish = place - 1
    finish = place - 1
    # 5. Do reverse word method.
    while start < finish do
      temp = sentence[start]
      sentence[start] = sentence[finish]
      sentence[finish] = temp
      start += 1
      finish -= 1
    end
  end
  return sentence
end

# def reverse_first_two_letters(string)
#   first_character = string[0]
#   string[0] = string[1]
#   string[1] = first_character
# end
#
# def reverse_first_three_letters(string)
#   first_character = string[0]
#   string[0] = string[2]
#   string[2] = first_character
# end
#
# def reverse_first_four_letters(string)
#   first_character = string[0]
#   string[0] = string[3]
#   string[3] = first_character
#
#   first_character = string[1]
#   string[1] = string[2]
#   string[2] = first_character
# end

# def reverse_word(word)
#   start = 0
#   finish = word.length - 1
#   while start < finish do
#     temp = word[start]
#     word[start] = word[finish]
#     word[finish] = temp
#     start += 1
#     finish -= 1
#   end
#   return word
# end
