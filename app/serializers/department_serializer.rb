class DepartmentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :supervisors
  has_many :employees
end
