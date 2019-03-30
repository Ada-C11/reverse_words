# Time Complexity: O(n) because there is a constant ratio (3n/2) to the size of the input array.
# Space Complexity: O(1) because no additional memory is needed regardless of input array.

def reverse_words(my_words)
  i = 0
  j = 0
  while my_words && j <= my_words.length
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
