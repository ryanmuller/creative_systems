require 'spec_helper'

describe CommentsController do

  before(:each) do
    @user = Factory(:user)
    @project = Factory(:project)
    @params = { :user_id => @user.id, :content => "I can haz gud komint" }
  end

  describe "POST 'create'" do
    
    it "should create a new comment given reasonable attributes" do
      lambda do
        post :create, :comment => @params, :project_id => @project.id
      end.should change(Comment, :count).by(1)
    end
  end

end
