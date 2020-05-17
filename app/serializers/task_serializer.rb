class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :content, :due_date, :completed, :user, :owner
  has_many :comments
  belongs_to :user
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"
end
