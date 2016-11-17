def create_row(dim, a, b)
  arr = []
  for i in 1..dim
    arr2 = []
    if i % 2 != 0
      for j in 1..dim
        if j % 2 != 0
          arr2.push(a)
        else
          arr2.push(b)
        end
      end
    else
      for j in 1..dim
        if j % 2 == 0
          arr2.push(a)
        else
          arr2.push(b)
        end
      end
    end
    row = arr2.join(" ")
    arr.push(row)
  end
  arr.join("\n")
end

def checkered_board(dimension)
  if dimension.is_a?(Integer) && dimension >= 2
    light = "\u25A1"
    dark = "\u25A0"
    if dimension % 2 != 0
      create_row(dimension, dark, light)
    else
      create_row(dimension, light, dark)
    end
  else
    false
  end
end
