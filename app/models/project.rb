class Project < ActiveRecord::Base
  validates :name, :presence => true,
                   :uniqueness => true

  has_many :memberships
  has_many :users, :through => :memberships
end
