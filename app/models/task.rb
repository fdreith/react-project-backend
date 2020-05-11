class Task < ApplicationRecord
  belongs_to :employee, optional: true
  belongs_to :supervisor, optional: true
  has_many :comments

end
