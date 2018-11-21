class EventsController < ApplicationController
  layout 'site'
  def index 
    @events = Event.all 
  end

  def show  
    @event = Event.friendly.find(params[:id])
    @latest_events = Event.last(5)
  end

  def event_calendar
    @events = Event.all
    @calendar_events = []
    @events.each do |event|
      @calendar_events << {
        title: event.title, 
        start: event.start_datetime.strftime("%Y-%m-%d"), 
        end: event.end_datetime.strftime("%Y-%m-%d"), 
        url: event_path(event)
      }  
    end
    render json: @calendar_events
  end

  def event_params
    params.require(:event).permit!
  end

end
