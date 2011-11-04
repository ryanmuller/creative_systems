class Membership < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  attr_accessible :project_id


  validates :project_id, :presence => true
  validates :user_id, :presence => true,
                      :uniqueness => { :scope => :project_id }

end
