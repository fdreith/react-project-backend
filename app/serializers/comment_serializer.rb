class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :content, :task_id, :created_at, :user

  belongs_to :user
end
