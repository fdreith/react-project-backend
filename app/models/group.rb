class Group < ApplicationRecord
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"
  has_many :groups_users
  has_many :users, :through => :groups_users

  # has_secure_password
end
