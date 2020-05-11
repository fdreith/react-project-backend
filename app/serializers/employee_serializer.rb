class EmployeeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :email, :department_id
  belongs_to :department
  has_many :tasks
end
