class CommentsController < ApplicationController
  def create
    # Blogをパラメータの値から探し出し,Blogに紐づくcommentsとしてbuildします。
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    
    respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
        byebug
        format.html { redirect_to post_path(@post), notice: '投稿できませんでした...' }
      end
    end
  end

  private
  # ストロングパラメーター
  def comment_params
    params.require(:comment).permit(:post_id, :content, :user_id)
  end
end
