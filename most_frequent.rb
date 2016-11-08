def most_frequent_item_count(collection)
  # Do your magic. :)
  count = Hash.new(0)
  collection.each do |n|
    count[n] += 1
  end
  if !(count.values.sort[-1])
    return 0
  else
    return count.values.sort[-1]
  end
end
