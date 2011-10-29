require 'spec_helper'

describe Membership do
   before(:each) do 
     @user = Factory.create(:user)
     @project = Factory.create(:project)
     @membership = @user.memberships.build(:project_id => @project.id)
   end

   it "should respond to user" do
     @membership.should respond_to(:user)
   end
   
   it "should respond to project" do
     @membership.should respond_to(:project)
   end


   it "should create a new instance given valid attributes" do
     @membership.save!
   end

   it "should be a member of the correct project" do
     @membership.save
     @membership.project.should == @project
   end

   it "should have the right user" do
     @membership.save
     @membership.user.should == @user
   end
end
