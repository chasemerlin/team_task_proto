class Project < ActiveRecord::Base
  attr_accessible :name, :description

  validates_presence_of :name

  has_many :tasks
end