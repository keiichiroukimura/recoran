class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) 
    @posts = Post.where(user_id: @user.id).all
    byebug
  end
end
