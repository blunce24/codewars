def calculator(distance, bus_drive, bus_walk)
  #your code here, use the preset $walk and $bus values
  walk_time = (distance / $walk) * 60
  bus_time = (bus_drive / $bus + bus_walk / $walk) * 60
  if walk_time > 120
    return "Bus"
  elsif walk_time < 10 || walk_time == bus_time || walk_time < bus_time
    return "Walk"
  else
    return "Bus"
  end
end
