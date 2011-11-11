class CommentsController < ApplicationController

  def create
    @comment = Comment.new(params[:comment])
  end

end
