class ContributionPreferencesController < ApplicationController
	
	def index
		@cps = ContributionPreference.all
	end
end
