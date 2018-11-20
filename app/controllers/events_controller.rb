class EventsController < ApplicationController
  layout 'site'
  def index 
    @events = Event.all 
  end

   def show  
    @event = Event.friendly.find(params[:id])
    @latest_events = Event.last(5)
   end

  def event_params
    params.require(:event).permit!
  end
end