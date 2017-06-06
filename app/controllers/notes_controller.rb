class NotesController < ApplicationController

def index
    if params[:destination]
      @destination = Location.find_by(destination: params[:destination])
      @notes = @destination.notes
    else
    @notes = Note.all.order(:rating => "desc")
    end
    render "index.html.erb"
  end

  def show
    @note = Note.find_by(id: params[:id])
    @comments = Comment.where(note_id: @note.id)
    @font = @note.bodyfont
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @note = Note.create(title: params[:title], length: params[:length], season: params[:season], destination: params[:destination], text: params[:text], bodyfont: params[:font])
    # if Location.find_by(destination: params[:destination])
    #   @location = Location.find_by(destination: params[:destination])
    # else
    # @location = Location.create(destination: params[:destination])
    # end
    redirect_to "/notes/#{@note.id}"
  end

  def edit
    @note = Note.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @note = Note.find_by(id: params[:id])
    @note.update(title: params[:title], length: params[:length], season: params[:season], destination: params[:destination], text: params[:text])
    redirect_to "/notes/#{@note.id}"
  end

  def destroy
    @note = Note.find_by(id: params[:id])
    @note.destroy
    redirect_to "/notes"
  end

end
