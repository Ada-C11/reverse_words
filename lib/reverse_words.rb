def reverse_words(my_words)
  i = 0
  j = 0
  while !my_words.nil? && j <= my_words.length
    if my_words[j] == ' ' || j == my_words.length
      little_end = i
      big_end = j - 1
      reverse_substring(my_words, little_end, big_end)
      i = j + 1
    end
    j += 1
  end
end

def reverse_substring(my_words, little_end, big_end)
  while little_end < big_end
    pushpin = my_words[little_end]
    my_words[little_end] = my_words[big_end]
    my_words[big_end] = pushpin
    little_end += 1
    big_end -= 1
  end
end
