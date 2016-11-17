def center_expansion(str, top, bottom)
  len = str.length
  #keep expanding palindrome if still in string and ends equal each other
  while (top >= 0) && (bottom <= len-1) && (str[top] == str[bottom]) do
    #increment after each round
    top -= 1
    bottom += 1
  end
  #puts str[top+1..bottom-1]
  str[top+1..bottom-1]
end

def longest_palindrome(s)
  n = s.length
  if n == 0
    0
  end
  longestP = s[0...1]
  for i in 0..n-1
    # check for odd palindromes at the ith postion of the string
    word1 = center_expansion(s, i, i)
    if word1.length > longestP.length
      longestP = word1
    end
    # check for even palindromes at the ith and i+1th positions of the string
    word2 = center_expansion(s, i, i+1)
    if word2.length > longestP.length
      longestP = word2
    end
    #puts "Loop"
  end
  longestP.length
end
