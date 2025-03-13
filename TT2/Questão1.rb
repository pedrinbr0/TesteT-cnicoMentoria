def divisiveis_por_w(x, y, w)
  return [] if w == 0
  (x..y).select { |num| num % w == 0 }
end

puts divisiveis_por_w(10, 50, 5).inspect
