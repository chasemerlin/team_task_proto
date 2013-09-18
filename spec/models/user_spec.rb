require 'spec_helper'

describe User do 
  it { should have_many(:tasks).through(:user_tasks) }
  it { should have_many(:comments) }
  it { should have_many :obligations }

  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of :email}

  describe "tasks_completed_today" do
    it "returns [] if no tasks have been completed today" do
      task1 = Task.create(description: "hey i'm a task")
      user = User.create(name: "Chase", email: "chase@merlin.com", password: "keye")
      expect(user.tasks_completed_today).to eq([])
    end
    it "returns the number of tasks completed today"
  end
end