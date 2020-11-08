class EventsController < ForumpagesController
  def index 
    @events = Event.all
  end 
end