class Comment < ApplicationRecord
  belongs_to :task
  belongs_to :employee
  belongs_to :supervisor
end
