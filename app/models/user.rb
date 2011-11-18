class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :cmu, :password, :password_confirmation, :remember_me, :avatar, :contribution_selection, :contribution_selections_attributes
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  has_many :contribution_preferences, :through => :contribution_selection
  has_many :contribution_selections
  has_many :memberships
  has_many :projects, :through => :memberships
  has_many :comments

  accepts_nested_attributes_for :contribution_selections

  after_create :create_default_selections

  def create_default_selections
    ContributionPreference.all.each do |cp|
      c = self.contribution_selections.new({ :preference => "no" })
      cp.contribution_selections << c
    end
  end

  def join!(project)
    memberships.create!(:project_id => project.id)
  end

  def leave!(project)
    memberships.find_by_project_id(project).destroy
  end

  def member?(project)
    memberships.find_by_project_id(project)
  end
end
