# frozen_string_literal: true
class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  
  def new
    @post = Post.new
    @music = Music.find(params[:id])
  end
  
  def index
    if params[:artist_name].present?
      @posts= Post.search_track(params[:artist_name])
    else
      @posts = Post.all.order(created_at: "DESC")
    end
  end
  
  def create
    @post = Post.new(content: params[:post][:content])
    @post.user_id = current_user.id
    if @post.save
      @together = Together.new(post_id: @post.id, music_id: params[:post][:music_id])
      @together.save
      flash[:success] = "新規投稿。"
      redirect_to posts_path 
    else
      render 'new'
    end
  end

  def destroy
    @post.destroy
    flash[:danger] = "投稿を削除しました。"
    redirect_to user_path(@post.user_id)
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = @post.comments.build
  end

  private
  
  def set_post
    @post = Post.find(params[:id])
  end
  
  def post_params
    params.require(:post).permit(:track_name, :content, :user_id, :music_id)
  end 
end
