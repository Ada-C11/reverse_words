# A method to reverse each word in a sentence, in place.
# Time complexity: ? O(n) where n is size of my_words
# Space complexity: ? O(n)
# require "pry"

def reverse_words(my_words)
  return nil if my_words == nil || my_words == ""

  tracking_index = 0
  if my_words[tracking_index] == " "
    until my_words[tracking_index] != " "
      tracking_index += 1
    end
  end

  until tracking_index > my_words.length - 1
    first_index = tracking_index
    until my_words[tracking_index] == " " || my_words[tracking_index] == nil
      tracking_index += 1
    end

    last_index = tracking_index - 1
    until first_index > last_index
      temp = my_words[first_index]
      my_words[first_index] = my_words[last_index]
      my_words[last_index] = temp
      first_index += 1
      last_index -= 1
    end
    tracking_index += 1
  end
  return my_words
end
