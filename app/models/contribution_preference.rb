class ContributionPreference < ActiveRecord::Base
  validates :name, :presence => true,
                   :uniqueness => true
  has_many :users, :through => :contribution_selection
  has_many :contribution_selections

  after_create :create_default_selections

  def create_default_selections
    User.all.each do |u|
      c = self.contribution_selections.new({ :preference => "no" })
      u.contribution_selections << c
    end
  end
end
