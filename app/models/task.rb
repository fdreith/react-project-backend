class Task < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"

  validates :content, presence: true

end
