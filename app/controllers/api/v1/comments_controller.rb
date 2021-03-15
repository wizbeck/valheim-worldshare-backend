class Api::V1::CommentsController < ApplicationController

  def create
    comment = Comment.new(comment_params)
    if comment.save
      render json: CommentSerializer.new(comment)
    else
      render json: {error: comment.errors.full_messages}, status: :unprocessable_entity
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :author, :world_id)
  end

end