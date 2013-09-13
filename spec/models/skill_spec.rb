require "spec_helper"

describe Skill do 
  it { should have_many(:tasks).through(:skill_tasks) }

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
end