# A method to reverse each word in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_words(my_words)
    if my_words.nil?
      return nil
    end
    i = 0
    j = 0
    while j < my_words.length
      if my_words[i] == ' '
        i += 1
        j = i
        next
      end
  
      while j < my_words.length && my_words[j] != ' '
        j += 1
      end
  
      reverse(my_words, i, j - 1)
      i = j
    end
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
