require 'spec_helper'

describe ContributionPreferencesController do
  render_views

  def valid_attributes
    { :name => "User research" }
  end

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "POST 'create'" do
    describe "with valid params" do 
      it "creates a new contribution preference" do
        expect {
          post(:create, :contribution_preference => valid_attributes)
        }.to change(ContributionPreference, :count).by(1)
      end
    end

    describe "with a duplicate name" do 
      before(:each) do
        @cp = ContributionPreference.create({ :name => "User research" })
      end

      it "should throw an error" do
        expect { 
          post :create, :contribution_preference => valid_attributes
        }.to change(ContributionPreference, :count).by(0)
      end
      
      it "should rerender the index" do
        post :create, :contribution_preference => valid_attributes
        response.should render_template("index")
      end
    end
  end

end
