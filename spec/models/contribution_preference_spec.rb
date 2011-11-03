require 'spec_helper'

describe ContributionPreference do

  before(:each) do
    @attr = {
      :name => "Cat napping"
    }
  end

  it "should create a new instance given a valid attribute" do
    ContributionPreference.create!(@attr)
  end

  it "should require a name" do
    no_name_cp = ContributionPreference.new(@attr.merge(:name => ""))
    no_name_cp.should_not be_valid
  end

  it "should set default contribution selections for all users when created" do
    u = Factory(:user)
    c = ContributionPreference.create!(@attr)
    u.contribution_selections[0].contribution_preference.should == c
  end

end

