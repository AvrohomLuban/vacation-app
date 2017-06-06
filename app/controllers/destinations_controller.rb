class DestinationsController < ApplicationController

  def index
   #  if params[:destination]
   #    @destination = Location.find_by(destination: params[:destination])
   #    @notes = @destination.notes
   #  else
   #  @notes = Note.all.order(:rating => "desc")
   # end
   @location = Location.all
   render "index.html.erb"

  end

end
