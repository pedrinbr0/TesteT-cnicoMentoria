#Considerando a estrutura padrão de arquivos de um projeto feito com Ruby on Rails, em
#quais pastas devem se encontrar os models, os controllers e as views de um projeto?

#Resposta:

Respectivamente são encontradas em app/models/, app/controllers/ e app/views/.

#De que modo é possível saber qual controller é responsável por gerenciar uma determinada view?

O Rails segue uma convenção que liga automaticamente cada Controller a uma View com base no nome do Controller e da Action.

O nome do Controller (exemplo: UsersController) define a pasta das Views correspondente (app/views/users/).

O nome do método (Action) dentro do Controller define qual arquivo de View será renderizado.
