class ContributionPreferencesController < ApplicationController
	
	def index
		@cps = ContributionPreference.all
    @cp = ContributionPreference.new
	end

  def create
    @cp = ContributionPreference.new(params[:contribution_preference])

    if @cp.save
      redirect_to contribution_preferences_path
    else
      @cps = ContributionPreference.all
      render action: "index"
    end
  end
end
