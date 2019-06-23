class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) 
    @posts = Post.where(user_id: @user.id).all.order(created_at: "DESC")
  end
end
