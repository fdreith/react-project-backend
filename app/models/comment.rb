class Comment < ApplicationRecord
  belongs_to :task
  belongs_to :employee, optional: true
  belongs_to :supervisor, optional: true

  attr_accessor :id, :content, :task_id, :employee_id, :supervisor_id, :created_at
end
