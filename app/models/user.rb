class User < ActiveRecord::Base
  attr_accessible :name, :email, :password

  has_many :user_tasks
  has_many :tasks, through: :user_tasks

  validates_presence_of :email, :name
  validates_uniqueness_of :email
  
  has_secure_password
end