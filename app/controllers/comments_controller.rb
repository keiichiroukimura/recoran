# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user_id = current_user.id
    respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
        format.html { redirect_to post_path(@post), notice: '投稿できませんでした...' }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    render :index if @comment.destroy
  end

  private

  # ストロングパラメーター
  def comment_params
    params.require(:comment).permit(:post_id, :content, :user_id)
  end
end
