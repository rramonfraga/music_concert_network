class CommentsController < ApplicationController

  def create
    @concert = Concert.find params[:concert_id]
    @comment = @concert.comments.new comment_params
    if @comment.save
    else
    end
      redirect_to action: 'show', controller: 'concerts', id: @concert.id

  end

  private
  def comment_params
    params.require(:comment).permit(:description, :user)
  end

end
