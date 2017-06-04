class ImagesController < ApplicationController

  def new
    @note = Note.find_by(id: params[:id])
    render "new.html.erb"
  end

  def create
    @note = Note.find_by(id: params[:id])
    image = Image.create(url: params[:url], note_id:@note.id)
    flash[:success] = "Thank you. Image has been saved."
    redirect_to "/notes"
  end

  def index
    @images = Image.all
    render "index.html.erb"
  end

end
