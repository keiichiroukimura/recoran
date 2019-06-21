# frozen_string_literal: true

class PostsController < ApplicationController
  def new
    @post = Post.new
    @music = Music.find(params[:id])
  end
  def index
    @post = Post.find(1)
  end
  def create
    @post = Post.new(post_params)
    if @post.save
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
