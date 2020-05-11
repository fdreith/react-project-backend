class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :content, :due_date, :completed, :employee_id, :supervisor_id, :created_at
  belongs_to :employee, optional: true
  belongs_to :supervisor, optional: true
  has_many :comments

end
