require 'spec_helper'

describe ContributionSelection do

  it "should not allow the same to have different selections for the same preference" do
    @u = Factory(:user)
    @cp = ContributionPreference.create!({ :name => "Cat napping" })
    @cs1 = @u.contribution_selections.new({ :preference => "no" })
    @cs2 = @u.contribution_selections.new({ :preference => "yes" })
    @cp.contribution_selections << @cs1
    lambda { 
      @cp.contribution_selections << @cs2
    }.should change(ContributionSelection, :count).by(0)
  end
end
