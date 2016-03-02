class Api::V1::EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.create(featured: params[:featured], network_id: params[:network_id], updatedAt: params[:updatedAt], url: params[:url], event_date: params[:event_date],location: params[:location], title: params[:title], subscribe_count: params[:subscribe_count], createdAt: params[:createdAt], description: params[:description], meetup_event_id: params[:meetup_event_id], time_zone: params[:time_zone], hex_color: params[:hex_color])
    render :show
  end

  def update
    @event = Event.find(params[:id])
    @event.update(featured: params[:featured], network_id: params[:network_id], updatedAt: params[:updatedAt], url: params[:url], event_date: params[:event_date],location: params[:location], title: params[:title], subscribe_count: params[:subscribe_count], createdAt: params[:createdAt], description: params[:description], meetup_event_id: params[:meetup_event_id], time_zone: params[:time_zone], hex_color: params[:hex_color])
    render :show
  end

  def destroy
    Event.find(params[:id]).destroy
    format.json {render json: "Event Removed"}
  end

end
