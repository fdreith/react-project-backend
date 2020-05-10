class Comment < ApplicationRecord
  belongs_to :task
  belongs_to :employee, optional: true
  belongs_to :supervisor, optional: true
end
