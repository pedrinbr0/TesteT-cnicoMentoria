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
