def solucao(input)
  input.map do |hash|
    name = hash[:name].ljust(11)[0, 11]
    cpf = hash[:cpf].ljust(11)[0, 11]
    state = hash[:state].ljust(11)[0, 11]
    value = hash[:value].rjust(11)[0, 11]

    puts "[#{name}][#{cpf}][#{state}][#{value}]"
  end
end

data = [
  { name: 'Maria Neusa de Aparecida', cpf: '97905796671', state: 'Sao Paulo', value: '1234' },
  { name: 'Ricardo Fontes', cpf: '44010762900', state: 'Rio Grande do Sul', value: '567' }
]

solucao(data)

# OBS: A resposta esta voltando em "[]", pois cpf não saia espaçado do nome.
