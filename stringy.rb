def stringy(size)
  arr = Array.new
  for i in 1..size
    if i % 2 == 0
      arr << 0
    else
      arr << 1
    end
  end
  return arr.join
end