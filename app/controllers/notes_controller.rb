class NotesController < ApplicationController

def index
    @notes = Note.all.order(:rating => "desc")
    render "index.html.erb"
  end

  def show
    @note = Note.find_by(id: params[:id])
    @comments = Comment.where(note_id: @note.id)
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @note = Note.create(title: params[:title], length: params[:length], season: params[:season], destination: params[:destination], text: params[:text])
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
