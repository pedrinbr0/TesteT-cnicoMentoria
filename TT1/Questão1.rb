def palindromo?(str)
  str = str.downcase.gsub(/[^a-z0-9]/, '')
  str == str.reverse
end

puts palindromo?("arara")
puts palindromo?("A base do teto desaba")
puts palindromo?("Ruby")
