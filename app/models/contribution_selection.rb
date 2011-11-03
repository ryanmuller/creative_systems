class ContributionSelection < ActiveRecord::Base
  belongs_to :user
  belongs_to :contribution_preference

  validates :contribution_preference_id, :uniqueness => { :scope => :user_id } 
end

