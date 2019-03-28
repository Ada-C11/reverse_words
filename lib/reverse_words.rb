require 'pry'
# A method to reverse each word in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_words(my_words)
  return my_words if my_words == nil || my_words.length == 0
  
  #helper method
  def reverse_it(string)
    n = string.length - 1
    reversed_word = ""
    while n >= 0
     reversed_word += string[n]
     n-= 1
    end
    return reversed_word
  end

  a = 0
  z = my_words.length - 1
   str = ""
   temp = ""

  while a <= z
    if my_words[a] == " "
      str += my_words[a]
    elsif my_words.length < 2
      return my_words
    else
      while my_words[a] != " " && my_words[a] != nil
        temp += my_words[a]
        a += 1
      end 
      a -= 1
      str += reverse_it(temp)
      temp = ""
    end
    a += 1
  end
  return str
end 
