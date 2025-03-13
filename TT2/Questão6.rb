# config/routes.rb
get '/users/find_user', to: 'users#find_user'

#"to: 'users#find_user'", indica  que a requisição será tratada pelo método find_user dentro do UsersController.

#Para acessar, pode ser por navegador ou via API:
http://localhost:3000/users/find_user

#Outra opção é via curl:
curl http://localhost:3000/users/find_user
