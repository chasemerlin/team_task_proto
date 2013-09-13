require 'spec_helper'

describe User do 
  it { should have_many(:tasks).through(:user_tasks) }

  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }
end