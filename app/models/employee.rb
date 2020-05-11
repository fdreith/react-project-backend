class Employee < ApplicationRecord
  has_secure_password
  belongs_to :department
  has_many :tasks

  attr_accessor :id, :name, :email, :password_digest, :department_id
end
