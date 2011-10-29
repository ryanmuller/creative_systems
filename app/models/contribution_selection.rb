class ContributionSelection < ActiveRecord::Base
  belongs_to :user
  belongs_to :contribution_preference
end

