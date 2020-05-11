class EmployeeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :email, :department_id
  belongs_to :department, serializer: DepartmentSerializer
  # has_many :tasks, serializer: TaskSerializer

  attribute :task do |employee|
    {
      content: employee.task.content
      due_date: employee.task.due_date
      completed: employee.task.completed
      comments: employee.task.comments.map
    }
  end


end
