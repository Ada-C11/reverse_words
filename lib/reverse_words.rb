# A method to reverse each word in a sentence, in place.
# Time complexity: O(n) - Linear with n being the number of characters
# Space complexity: O(1)

def reverse(word)
  length = word.length
  (length / 2).round.times do |i|
    temp = word[i]
    word[i] = word[length - i - 1]
    word[length - i - 1] = temp
  end
  return word
end

def reverse_words(sentence)
  i = 0
  start = 0
  ending = 0

  while i < sentence.length
    if sentence[i] == ' ' 
      ending = i - 1
      sentence[start..ending] = reverse(sentence[start..ending])
      start = i + 1
    end
    i += 1
  end
  ending = i
   sentence[start..ending] = reverse(sentence[start..ending])
  return sentence
end

puts reverse_words('I strive  to engineer the most efficient solutions')
