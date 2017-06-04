class CommentsController < ApplicationController

  def new
    @note = Note.find_by(id: params[:id])
    render "new.html.erb"
  end

  def create
    @comment = Comment.create(text: params[:comment], note_id: params[:id])
    redirect_to "/notes"
  end


end
