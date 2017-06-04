class VoteController < ApplicationController

  def rating
    @note = Note.find_by(id: params[:id])
    if @note.rating == nil
      @note.update(rating: params[:rating].to_i)
      flash[:success] = "Thanks for your positive feedback. You are first vote"
      redirect_to "/notes"
    else
      @note.update(rating: @note.rating + params[:rating].to_i)
      flash[:success] = "Thanks for your positive feedback. You help improve the site."
      redirect_to "/notes"
    end
  end




end
