# A method to reverse each word in a sentence, in place.
# Time complexity: The time complexity is O(n^2) where n is the length of my_words
# Space complexity: The time complexity is O(n) where n is the length of the
#                  string because no additional space is needed to store any
#                  other strings or arrays

def reverse_words(my_words)
  return nil if my_words.nil?

  i = 0
  j = 0
  while j < my_words.length
    if my_words[i] == " "
      i += 1
      j = i
    end

    while j < my_words.length && my_words[j] != " "
      j += 1
    end

    reverse(my_words, i, j - 1)
    i = j
  end

  return my_words
end

def reverse(array, low, high)
  while (low < high)
    temp = array[low]
    array[low] = array[high]
    array[high] = temp
    low += 1
    high -= 1
  end
end