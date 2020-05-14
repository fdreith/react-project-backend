class AssignedTaskSerializer
  include FastJsonapi::ObjectSerializer
   attributes :id, :content, :due_date, :completed, :comments, :user, :owner
  has_many :comments
  belongs_to :user
  belongs_to :owner
end
