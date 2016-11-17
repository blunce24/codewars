def sequence_gen(*args)
  Enumerator.new do |y|
    args.each do |e|
      y << e
    end
    loop do
      sum = args.reduce(:+)
      y << sum
      args = args.drop(1).push(sum)
    end
  end
end
