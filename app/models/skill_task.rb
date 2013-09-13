class SkillTask < ActiveRecord::Base
  belongs_to :skill 
  belongs_to :task 
end