require 'yaml'

class Formatter
  def initialize(format_file)
    @format_config = YAML.load_file(format_file)
  end

  def format_field(value, length, align, padding)
    value = value[0, length]  # Truncar para o comprimento especificado

    # Tratar padding
    if padding == 'zeros'
      value = value.rjust(length, '0')  # Preencher com zeros à esquerda, se necessário
    elsif padding == 'spaces'
      value = value.ljust(length, ' ')  # Preencher com espaços à direita, se necessário
    end

    # Alinhamento
    if align == 'right'
      value = value.rjust(length, padding == 'zeros' ? '0' : ' ')  # Alinhar à direita
    else
      value = value.ljust(length, padding == 'zeros' ? '0' : ' ')  # Alinhar à esquerda
    end

    value
  end

  def convert_line(line)
    result = {}
    current_position = 0

    @format_config.each do |field, config|
      length = config['length']
      align = config['align']
      padding = config['padding']

      field_value = line[current_position, length]
      formatted_value = format_field(field_value, length, align, padding)

      result[field.to_sym] = formatted_value.strip  # Remover espaços extras
      current_position += length
    end

    result
  end

  def solucao(input)
    lines = input.split("\n")
    lines.map { |line| convert_line(line) }
  end
end

formatter = Formatter.new('format-2.yaml')

input = "0009790579667100001234Sao Paulo     \n0004401076290000000567Rio Grande do "

# Testando a função solucao
puts formatter.solucao(input).inspect
