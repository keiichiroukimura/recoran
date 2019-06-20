# frozen_string_literal: true

class PostsController < ApplicationController
  def new
    @post = Post.new(post_params)
    @music = Music.find(params[:id])
  end
  def index
    @post = Post.all
  end
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
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
    params.permit(:track_name, :artist_name, :image, :image_cache, :content, :user_id)
  end 
  
  def ensure_correct_user
    if @post.user_id != current_user.id
      redirect_to posts_path 
    end
  end
end
