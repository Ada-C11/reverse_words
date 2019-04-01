# A method to reverse each word in a sentence, in place.
# Time complexity: O(n^2) where n is the length of my_words?
# Space complexity: O(n) where n is the length of my my_words?
def reverse_words(my_words)
  return my_words if my_words == nil
  return my_words if my_words.length == 1 || my_words.length == 0 || (my_words.length == 1 && my_words[0] == " ")
  reverse = ""
  new_string = ""
  i = 0
  while i < my_words.length
    new_string += my_words[i]
    if my_words[i] == " "
      j = 0
      k = new_string.length - 2
      if k <= 0
        reverse += new_string
      else
        while j < k
          temp = new_string[j]
          new_string[j] = new_string[k]
          new_string[k] = temp
          j += 1
          k -= 1
        end
        reverse += new_string
        # reverse += new_string + my_words[i]
      end
      new_string = ""
    elsif i == my_words.length - 1 && my_words[i] != " "
      j = 0
      k = new_string.length - 1

      while j < k
        temp = new_string[j]
        new_string[j] = new_string[k]
        new_string[k] = temp
        j += 1
        k -= 1
      end
      reverse += new_string
    end
    i += 1
  end

  i = 0
  while i < reverse.length
    my_words[i] = reverse[i]
    i += 1
  end
  return my_words
end
