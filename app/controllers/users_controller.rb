class UsersController < ApplicationController
  before_filter :authenticate_user!, :only => [:show, :index]

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end
end

