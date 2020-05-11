class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :content, :task_id, :employee_id, :supervisor_id, :created_at
  belongs_to :task
  belongs_to :employee
  belongs_to :supervisor
end
