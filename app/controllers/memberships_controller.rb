class MembershipsController < ApplicationController

  before_filter :authenticate_user!

  def create
    @project = Project.find(params[:project_id]) 
    current_user.join!(@project) 
    redirect_to @project
  end

  def destroy
    @project = Project.find(params[:project_id])
    current_user.leave!(@project)
    redirect_to root_path
  end
end
