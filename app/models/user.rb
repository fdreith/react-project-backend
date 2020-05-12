class User < ApplicationRecord
  has_secure_password

  validates :name, :email, :department_id
  
  belongs_to :department
  has_many :tasks
  has_many :assigned_tasks, :class_name => "Task", :foreign_key => "owner_id"
  has_many :comments
end
