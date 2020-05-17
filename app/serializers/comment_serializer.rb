class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :content, :task_id, :user

  belongs_to :user
end
