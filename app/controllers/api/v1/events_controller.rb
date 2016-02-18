class Api::V1::EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
<<<<<<< HEAD
    @event = Event.create(objectId: params[:objectId], featured: params[:featured], network: params[:network], updatedAt: params[:updatedAt], url: params[:url], event_date: params[:event_date],location: params[:location], title: params[:title], subscribe_count: params[:subscribe_count], createdAt: params[:createdAt], description: params[:description], meetup_event_id: params[:meetup_event_id], time_zone: params[:time_zone], hex_color: params[:hex_color])
=======
    @event = Event.create(objectId: params[:objectId], featured: params[:featured], network_id: params[:network_id], updatedAt: params[:updatedAt], url: params[:url], event_date: params[:event_date],location: params[:location], title: params[:title], subscribe_count: params[:subscribe_count], createdAt: params[:createdAt], description: params[:description], meetup_event_id: params[:meetup_event_id], time_zone: params[:time_zone], hex_color: params[:hex_color])
>>>>>>> 3b66ce485b782af4aba0c14478d8f314fa29b142
    render :show
  end

  def update
    @event = Event.find(params[:id])
<<<<<<< HEAD
    @event.updated(objectId: params[:objectId], featured: params[:featured], network: params[:network], updatedAt: params[:updatedAt], url: params[:url], event_date: params[:event_date],location: params[:location], title: params[:title], subscribe_count: params[:subscribe_count], createdAt: params[:createdAt], description: params[:description], meetup_event_id: params[:meetup_event_id], time_zone: params[:time_zone], hex_color: params[:hex_color])
=======
    @event.update(objectId: params[:objectId], featured: params[:featured], network_id: params[:network_id], updatedAt: params[:updatedAt], url: params[:url], event_date: params[:event_date],location: params[:location], title: params[:title], subscribe_count: params[:subscribe_count], createdAt: params[:createdAt], description: params[:description], meetup_event_id: params[:meetup_event_id], time_zone: params[:time_zone], hex_color: params[:hex_color])
>>>>>>> 3b66ce485b782af4aba0c14478d8f314fa29b142
    render :show
  end

  def destroy
    Event.find(params[:id]).destroy
    format.json {render json: "Event Removed"}
  end

end
