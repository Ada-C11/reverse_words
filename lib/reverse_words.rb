# A method to reverse each word in a sentence, in place.
# Time complexity: O(n^2), where n represents the length of the string. The outer loop takes O(n), and worst case scenario of the inner loops take O(n) and O(n/2), respectively. An O(n) loop inside of an O(n) loop results in O(n^2).
# Space complexity: O(C), because the storage of variables i, j, c, b, temp doesn't change based on string length.

# partial reverse string helper method
def reverse_partial_word(string, beg_idx, end_idx)
  while beg_idx < end_idx
    temp = string[beg_idx]
    string[beg_idx] = string[end_idx]
    string[end_idx] = temp
    beg_idx += 1
    end_idx -= 1
  end
  return string
end

def reverse_words(my_words)
  return nil unless my_words
  i = 0
  j = my_words.length - 1

  while i < j

    # finds beg index for partial swap
    while my_words[i] == " "
      i += 1
    end

    # finds end index blank space
    b = i
    until my_words[b] == " " || b == j + 1
      b += 1
    end

    # end index to swap
    c = b - 1

    # swap
    reverse_partial_word(my_words, i, c)

    i = b + 1
  end
end
