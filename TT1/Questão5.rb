#Models com associações

class Employee < ApplicationRecord
  belongs_to :team, optional: true
  belongs_to :job_title
end

class Team < ApplicationRecord
  has_many :employees
end

class JobTitle < ApplicationRecord
  has_many :employees
end

#Sintaxe do ActiveRecord

employees = Employee
  .joins("LEFT JOIN teams ON employees.team_id = teams.id")
  .joins("LEFT JOIN job_titles ON employees.job_title_id = job_titles.id")
  .select("employees.first_name || ' ' || employees.last_name AS nome_completo,
           employees.cpf,
           teams.name AS equipe,
           job_titles.name AS cargo")
  .order("employees.cpf")

employees.each do |employee|
  puts "#{employee.nome_completo} | #{employee.cpf} | #{employee.equipe || 'Sem equipe'} | #{employee.cargo}"
end
