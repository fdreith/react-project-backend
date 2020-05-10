class Supervisor < ApplicationRecord
  has_secure_password
  belongs_to :department
  has_many :tasks
  has_many :employees, through: :tasks
end
