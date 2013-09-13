class Skill < ActiveRecord::Base
  attr_accessible :name

  has_many :skill_tasks
  has_many :tasks, through: :skill_tasks

  validates_presence_of :name
end