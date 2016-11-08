def validate_word(word)
  #your code here
  word = word.downcase
  arr = Array.new
  word.each_char do |c|
    i = word.count(c)
    arr.push(i)
  end
  for j in 0...arr.length - 1
    if arr[j] != arr[j + 1]
      return false
    end
  end
  return true
end
