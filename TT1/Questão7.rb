Qual a principal diferença entre estes 2 métodos?

//java
public boolean isEmpty(String s) {
  return s.length() == 0;
}

//ruby
def empty?(s)
  return s.size == 0
end

A principal diferença está na forma como cada método lida com valores nulos (null em Java e nil em Ruby).

Java (isEmpty): Se s for null, o método lançará um NullPointerException ao tentar chamar .length(). Para evitar isso, é necessário verificar se s != null antes de acessar seu tamanho.

Ruby (empty?): Se s for nil, ocorrerá um NoMethodError, pois nil não possui o método .size. A solução seria adicionar uma verificação com s.nil? antes de acessar o tamanho da string.
