class User < ApplicationRecord
  has_secure_password

  validates :name, :email, uniqueness: true, presence: true
  validates :department_id, presence: true
  
  belongs_to :department
  has_many :tasks
  has_many :assigned_tasks, :class_name => "Task", :foreign_key => "owner_id"
  has_many :comments
  has_many :groups_users
  has_many :groups, :through => :groups_users


end
