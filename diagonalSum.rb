def diagonalSum(matrix)
  sum = 0
  for i in 0..matrix.length - 1
    sum = sum + matrix[i][i]
  end
  sum
end