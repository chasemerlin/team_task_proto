require 'spec_helper'

describe Task do  
  it { should have_many(:users).through(:user_tasks) }
  it { should have_many(:skills).through(:skill_tasks) }

  it { should validate_presence_of :description }
end