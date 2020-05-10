class Department < ApplicationRecord
  has_many :supervisors
  has_many :employees
end
