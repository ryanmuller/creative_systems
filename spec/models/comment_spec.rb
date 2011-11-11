require 'spec_helper'

describe Comment do

  before(:each) do
    @user = Factory(:user)
    @comment = Factory(:comment, :user => @user)
  end

  it "should respond to user" do
    @comment.should respond_to(:user)
  end

  it "should have the right user" do
    @comment.user.should == @user
  end

  it "should respond to commentable" do
    @comment.should respond_to(:commentable)
  end


end
