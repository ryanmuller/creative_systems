require 'spec_helper'

describe DeviseController do

  before (:each) do
    @user = Factory(:user)
    sign_in @user
  end
  
  describe "PUT 'update'" do

    it "should update contribution selection given valid attributes" do
      @attributes = { :current_password => @user.password, :adfasd => "yes" }

      expect { 
        put :update, :id => @user.id, :user => @attributes
      }.to change(ContributionSelection, :count).by(1) 
    end
  end
end


