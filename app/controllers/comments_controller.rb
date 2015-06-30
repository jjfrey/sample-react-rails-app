class CommentsController < ApplicationController
  def index
    @presenter = {
      :comments => Comment.recent_with_replies(5),
      :form => {
        :action => comments_path,
        :csrf_param => request_forgery_protection_token,
        :csrf_token => form_authenticity_token
      }
    }
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save

    if request.xhr?
      render :json => Comment.recent_with_replies(5)
    else
      redirect_to comments_path
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :text)
  end
end
