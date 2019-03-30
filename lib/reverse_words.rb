# A method to reverse each word in a sentence, in place.
# Time complexity: ? O(n)
# Space complexity: ? O(1)

def reverse_words(my_words)
  if my_words == nil
    return nil
  end

  i = 0
  start = 0
  last = 0
  temp = 0

  while i < my_words.length
    if i < my_words.length && my_words[i] == " "
      i += 1
    end
    start = i
    while i < my_words.length && my_words[i] != " "
      i += 1
    end
    last = i - 1

    while start < last
      temp = my_words[start]
      my_words[start] = my_words[last]
      my_words[last] = temp
      start += 1
      last -= 1
    end
  end

  return my_words
end
