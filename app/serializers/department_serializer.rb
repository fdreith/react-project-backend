class DepartmentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :users
  has_many :users
end
