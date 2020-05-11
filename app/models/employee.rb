class Employee < ApplicationRecord
  has_secure_password
  belongs_to :department
  has_many :tasks
  has_many :comments

end
