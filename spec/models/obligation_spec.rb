require 'spec_helper'

describe Obligation do
    it { should belong_to(:user) }
    it { should belong_to(:task) }
end