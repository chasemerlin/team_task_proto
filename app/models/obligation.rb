class Obligation < ActiveRecord::Base
  attr_accessible :user_id, :task_id, :date_completed

  belongs_to :user
  belongs_to :task
end