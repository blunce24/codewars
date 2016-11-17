def validSolution(board)
  #check if any 0s or any rows are invalid
  board.each do |a|
    if a.include?(0) || a.uniq.length != a.length
      return false
    end
  end
  #check if any columns are invalid
  for i in 0...board.length
      arr = []
      board.each do |b|
        arr.push(b[i])
      end
      if arr.uniq.length != arr.length
        return false
      end
  end
  #check if boxes are invalid
  j = 0
  k = 0
  while j < board.length
    while k < board.length
      box = [board[j][k], board[j][k+1], board[j][k+2], board[j+1][k], board[j+1][k+1], board[j+1][k+2], board[j+2][k], board[j+2][k+1], board[j+2][k+2]]
      if box.uniq.length != box.length
        return false
      end
      k += 3
    end
    j += 3
  end
  true
end
