class User < ApplicationRecord
  has_secure_password
  
  belongs_to :department
  has_many :tasks
  has_many :assigned_tasks, :class_name => "Task", :foreign_key => "owner_id"
  has_many :comments
end
