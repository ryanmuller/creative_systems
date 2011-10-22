require 'spec_helper'

describe UsersController do

  before (:each) do
    @user = Factory(:user)
    sign_in @user
  end

  describe "GET 'show'" do
    
    it "should be successful" do
      get :show, :id => @user.id
      response.should be_success
    end
    
    it "should find the right user" do
      get :show, :id => @user.id
      assigns(:user).should == @user
    end
    
  end

  describe "GET 'index'" do 
    
    it "should be successful" do
      get :index
      response.should be_success
    end
    
    it "should find all the users" do
      get :index
      assigns(:users).should == [@user]
    end

  end

end
