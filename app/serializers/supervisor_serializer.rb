class SupervisorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :email, :department_id
  belongs_to :department
  has_many :tasks
  has_many :employees, through: :tasks
end
