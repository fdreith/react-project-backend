class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :content
  belongs_to :task
  belongs_to :user
end
