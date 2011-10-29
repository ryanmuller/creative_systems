require 'spec_helper'

describe MembershipsController do

  before(:each) do
    @user = Factory(:user)
    @project = Factory(:project)
    sign_in @user
  end

  describe "access control" do

    it "should require signin for create" do
      post :create, :project_id => @project.id, :membership => { :project_id => @project.id }
      response.should_not be_success
    end

  end


  describe "POST 'create'" do


    it "should create a membership" do
      lambda do
        post :create, :project_id => @project.id, :membership => { :project_id => @project.id }
        response.should be_redirect
      end.should change(Membership, :count).by(1)
    end
  end
end
