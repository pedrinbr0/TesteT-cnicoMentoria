require 'yaml'

class Formatter
  def initialize(format_file)
    @format_config = YAML.load_file(format_file)
  end

  def format_value(value, length, align, padding)
    value = value.to_s[0, length]

    pad_char = padding == 'zeros' ? '0' : ' '

    if align == 'right'
      value.rjust(length, pad_char)
    else
      value.ljust(length, pad_char)
    end
  end


  def format_line(hash)
    @format_config.keys.map do |key|
      config = @format_config[key]

      value = hash[key.to_sym] || ''
      format_value(value, config['length'], config['align'], config['padding'])
    end.join(" ")
  end

  def format_list(data)
    data.map { |hash| format_line(hash) }.join("\n")
  end
end

data = [
  { name: 'Maria Neusa de Aparecida', cpf: '97905796671', state: 'Sao Paulo', value: '1234' },
  { name: 'Ricardo Fontes', cpf: '44010762900', state: 'Rio Grande do Sul', value: '567' }
]

formatter = Formatter.new('format.yaml')

puts formatter.format_list(data)
