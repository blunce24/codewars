def count_by(x, n)
  arr = Array.new
  for i in 1..n
    arr.push(i * x)
  end
  return arr
end