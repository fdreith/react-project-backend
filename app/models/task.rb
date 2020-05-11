class Task < ApplicationRecord
  belongs_to :employee, optional: true
  belongs_to :supervisor, optional: true
  has_many :comments

  attr_accessor :id, :content, :due_date, :completed, :employee_id, :supervisor_id, :created_at
end
