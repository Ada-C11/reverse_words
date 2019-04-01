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

def replace(word, sentence, beginning)
  word.length.times do |r_index|
    sentence[beginning + r_index] = word[r_index]
  end

  return sentence
end

def reverse_slice(sentence, beginning_pos, end_pos)
  word = sentence[beginning_pos...end_pos]
  reversed_word = reverse(word)
  replace(reversed_word, sentence, beginning_pos)
  
  return sentence
end

def reverse_words(sentence)
  if sentence == nil
    return nil
  end
  beginning = 0
  sentence_length = sentence.length

  sentence_length.times do |pos|
    if sentence[pos] == ' '
      reverse_slice(sentence, beginning, pos)
      beginning = pos + 1
    end
  end

  return reverse_slice(sentence, beginning, sentence_length)
end

puts reverse_words('I strive         to engineer the most efficient solutions')