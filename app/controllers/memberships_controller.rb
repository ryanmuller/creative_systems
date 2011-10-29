class MembershipsController < ApplicationController

  before_filter :authenticate_user!

  def create
    @project = Project.find(params[:membership][:project_id]) 
    current_user.join!(@project)

    redirect_to @project
  end
end
