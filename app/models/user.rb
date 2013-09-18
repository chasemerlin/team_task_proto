class User < ActiveRecord::Base
  attr_accessible :name, :email, :password

  has_many :user_tasks
  has_many :tasks, through: :user_tasks

  has_many :comments

  has_many :obligations

  validates_presence_of :email, :name
  validates_uniqueness_of :email
  
  has_secure_password

  # need to test this
  def tasks_assigned_today
    todays_tasks = []
    tasks.each do |task|
      todays_tasks << task if task.due_date == Date.today
    end
    todays_tasks
  end

  # need to test
  def tasks_completed_today
    Obligation.where(user_id: self.id, date_completed: Date.today).map {|obligation| obligation.task }
  end
end