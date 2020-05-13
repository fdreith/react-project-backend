class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :supervisor, :department
  belongs_to :department
  has_many :tasks
  has_many :assigned_tasks, :class_name => "Task", :foreign_key => "owner_id"

end
