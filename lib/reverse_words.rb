# A method to reverse each word in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
#b: beginning, e: end
def reverse_str(my_words, b, e)
  while b < e
    temp_letter = my_words[b]
    my_words[b] = my_words[e]
    my_words[e] = temp_letter
    b += 1
    e -= 1
  end
  return my_words
end

def is_punctuation?(c)
  punc_str = " ><!@#$%^&*()-_\\|:;?\"'"
  punc_str.each_char do |char|
    if c == char
      return true
    end
  end
  return false
end

p is_punctuation?(" ")

def reverse_words(my_words)
  if my_words == nil
    return nil
  end
  len = my_words.length
  b = 0
  until b >= len
    while b < len && is_punctuation?(my_words[b])
      b += 1
    end

    e = b
    while e < len && !is_punctuation?(my_words[e])
      e += 1
    end

    e -= 1
    reverse_str(my_words, b, e)
    b = e + 1
  end
  return my_words
end

p reverse_words("    hi,how       #$@$%%#!>>>> are you?")
