def cpf_formatado?(cpf)
  regex = /^\d{3}\.\d{3}\.\d{3}-\d{2}$/
  cpf.match?(regex)
end

puts cpf_formatado?("461.636.517-23")
puts cpf_formatado?("46163651723")
puts cpf_formatado?("46.1636.517-23")
puts cpf_formatado?("abc.def.ghi-jk")
