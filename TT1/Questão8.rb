Qual o significado do self nas classes ruby?

Depende do contexto em qual ele é usado no código.

#Dentro de um Método de Instância:

class Carro
  def initialize(marca)
    @marca = marca
  end

  def mostrar_marca
    puts self  # self é a instância do objeto
    puts @marca
  end
end

carro = Carro.new("Fiat")
carro.mostrar_marca  # self é o objeto carro

#Dentro de um Método de Classe:

class Carro
  def self.mostrar_nome_classe
    puts self  # self é a classe Carro
  end
end

Carro.mostrar_nome_classe # self é a classe Carro

#Em Setters e Atribuições:

class Carro
  def marca=(marca)
    self.marca = marca  # Aqui, o uso de self é implícito para acessar o atributo
  end
end

#Dentro de um bloco:

class Carro
  def dentro_do_bloco
    yield  # Chama o bloco
  end
end

carro = Carro.new
carro.dentro_do_bloco { puts self }  # Aqui, self ainda é a instância carro
