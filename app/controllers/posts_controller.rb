# frozen_string_literal: true
class PostsController < ApplicationController
  def new
    @post = Post.new
    @music = Music.find(params[:id])
  end
  def index
    @posts = Post.all.order(created_at: "DESC")
  end
  def create
    @post = Post.new(content: params[:post][:content])
    if @post.save
      @join = Join.new(post_id: @post.id, music_id: params[:post][:music_id])
      @join.save
      flash[:success] = "新規投稿。"
      redirect_to posts_path 
    else
      render 'new'
    end
  end

  private
  
  def set_post
    @post = Post.find(params[:id])
  end
  
  def post_params
    params.require(:post).permit(:content, :user_id, :music_id)
  end 
end
