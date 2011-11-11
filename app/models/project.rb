class Project < ActiveRecord::Base
  validates :name, :presence => true,
                   :uniqueness => true

  has_many :memberships
  has_many :users, :through => :memberships
  has_many :comments, :as => :commentable
end
