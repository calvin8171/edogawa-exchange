class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    redirect_to "/eng_items/#{comment.eng_item.id}"
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, eng_item_id: params[:eng_item_id])
  end
end
