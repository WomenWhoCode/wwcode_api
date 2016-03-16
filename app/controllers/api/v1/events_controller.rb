class Api::V1::EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.create(event_params)
    render :show
  end

  def update
    @event = Event.find(params[:id])
    @event.update_attributes(event_params)
    render :show
  end

  def destroy
    Event.find(params[:id]).destroy
    format.json {render json: "Event Removed"}
  end

  private

  def event_params
    params.permit(:featured, :network_id, :event_date, :url, :location, :title, :sunscribe_count, :description, :meetup_event_id, :time_zone, :hex_color, :updated_at, :created_at)
  end

end
