class Task < ActiveRecord::Base
  attr_accessible :project_id, :skill_ids, :user_ids, :description, :weight, :due_date

  has_many :user_tasks
  has_many :users, through: :user_tasks

  has_many :skill_tasks
  has_many :skills, through: :skill_tasks

  has_many :comments

  has_many :obligations

  belongs_to :project

  validates_presence_of :description

  def belongs_to_specific_project?
    project != nil 
  end
end