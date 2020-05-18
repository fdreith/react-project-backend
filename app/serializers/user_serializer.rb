class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :supervisor, :department
  belongs_to :department
  has_many :tasks
  has_many :assigned_tasks

end
