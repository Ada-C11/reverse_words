# A method to reverse each word in a sentence, in place.
# Time complexity: O(n), where n is length of my_words
# Space complexity: Optimized O(1), same amount of space each loop
def reverse_words(my_words)
  return if !my_words
  return my_words if my_words.length == 1
  i, j = 0, 0 
  while i < my_words.length
    i += 1 while my_words[i] == " "
    j = i
    j += 1 while my_words[j] != " " && my_words[j] != nil
    if j != i
      reverse_string(my_words, i, (j - 1))
    end
    i = j + 1
  end
  return my_words
end

def reverse_string(my_words, starting, ending)
  temp = ""
  while starting < ending
    temp = my_words[starting]
    my_words[starting] = my_words[ending]
    my_words[ending] = temp
    starting += 1
    ending -= 1
  end
  return my_words
end