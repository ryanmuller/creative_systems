require 'spec_helper'

describe ContributionPreferencesController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

end