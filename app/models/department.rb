class Department < ApplicationRecord
  has_many :supervisors
  has_many :employees

  attr_accessor :id, :name
end
