require "pry"
# A method to reverse each word in a sentence, in place.
#
# Time complexity: O(n) - The outer loop is O(n). Each time the inner loop runs, it operates on a small part of the array, so this inner section is O(1). Added together, they add up to:
# work done by outer loop   +   total work done by inner loop
#         O(n)              +    n*O(1)
# The final result evaluates to O(n).
#
# Space complexity: O(1)

def reverse_words(my_words)
  return nil if my_words == nil

  i_start = 0
  i_end = 0

  until i_start >= (my_words.length - 1)
    until (my_words[i_end] == " ") || (i_end == my_words.length)
      i_end += 1
    end

    i = 0
    until i == (i_end - i_start) / 2
      low_index = i_start + i
      high_index = i_end - 1 - i

      let_temp = my_words[low_index]
      my_words[low_index] = my_words[high_index]
      my_words[high_index] = let_temp

      i += 1
    end

    i_start = i_end + 1
    i_end += 1
  end
end
