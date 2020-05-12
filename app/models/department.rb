class Department < ApplicationRecord
  has_many :users

  validates :name
end
