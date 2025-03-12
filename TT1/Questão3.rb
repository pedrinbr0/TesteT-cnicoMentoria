def fatorial(n)
  return nil if n < 0
  return 1 if n == 0

  resultado = 1
  (1..n).each { |i| resultado *= i }

  resultado
end

puts fatorial(-1)
puts fatorial(0)
puts fatorial(5)
puts fatorial(100)
