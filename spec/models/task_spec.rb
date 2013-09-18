require 'spec_helper'

describe Task do  
  it { should have_many(:users).through(:user_tasks) }
  it { should have_many(:skills).through(:skill_tasks) }
  it { should have_many(:comments) }
  it { should have_many(:obligations) }
  it { should belong_to(:project) }

  it { should validate_presence_of :description }

  describe "belongs_to_specific_project?" do
    it "returns false if task has not been assigned a project" do
      project = Project.create(name: "Project Fun")
      task1 = Task.create(description: "This is a task")
      expect(task1.belongs_to_specific_project?).to eq(false)
    end
    it "returns true if a project has been assigned" do
      project = Project.create(name: "Project Fun")
      task1 = Task.create(description: "This is a task", project_id: project.id)
      expect(task1.belongs_to_specific_project?).to eq(true)
    end
  end
end