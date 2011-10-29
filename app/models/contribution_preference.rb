class ContributionPreference < ActiveRecord::Base
  validates :name, :presence => true,
                   :uniqueness => true
  has_many :users, :through => :contribution_selection
  has_many :contribution_selections
end
