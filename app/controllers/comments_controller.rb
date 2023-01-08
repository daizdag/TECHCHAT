class CommentsController < ApplicationController

  def create
    Comment.create(comment_params)
    redirect_to question_path(params[:question_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :name).merge(question_id: params[:question_id])
  end

end
