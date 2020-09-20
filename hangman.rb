# (2) Write a program hangman.rb that contains a function called hangman.  The function's parameters are a word and an array of letters.  It returns a string showing the letters that have been guessed.  Call the function from within your program so that you know that it works.

# Example: hangman("bob",["b"]) should evaluate to "b_b"
# Example: hangman("alphabet",["a","h"]) should return "a__ha___"

def hangman(word, arr)
    #create variables to store incrementers and chars
    result = []
    i = 0
    #make sure we can compare whether given lower case or capitalized letters by making all cases the same
    word = word.upcase
    arr = arr.join("").upcase
  
  #  word = word.split("") do we need to split string into array?
  #  create a nested loops to iterate over the characters of the word, 
  #  each arr char should iterate over all word chars 
  #  push char back into word[i] position if it matches, 
  #  otherwise push "_"
    while i < word.length
      j = 0
      while j < arr.length
        if word[i] == arr[j]
          result.push(arr[j])
        end
        j += 1
      end
      if word[i] == " "
        result[i] = word[i]
      elsif result[i] != word[i]
        result[i] = "_"
      end
      i += 1
    end
    puts "\"" + result.join("").downcase + "\""
  end
  
  hangman("hot dog", ["y", "o"])