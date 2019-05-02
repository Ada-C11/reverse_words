# A method to reverse each word in a sentence, in place.
# Time complexity: ? O(n)
# Space complexity: ? O(1) reverse is happening in place
def reverse_words(my_words)
  return nil if my_words == nil

  i = 0
  m = 0
  j = my_words.length

  i += 1 while my_words == " "

  while i < j
    while my_words[i] != " " && i != j
      i += 1
    end

    k = i
    while m < k
      temp = my_words[k - 1]
      my_words[k - 1] = temp
      m += 1
      k -= 1
    end

    m = i
  end
  return my_words
end
