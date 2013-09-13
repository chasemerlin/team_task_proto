class Task < ActiveRecord::Base
  attr_accessible :skill_ids, :user_ids, :description, :weight, :due_date, :completed

  has_many :user_tasks
  has_many :users, through: :user_tasks

  has_many :skill_tasks
  has_many :skills, through: :skill_tasks

  validates_presence_of :description
end