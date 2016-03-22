class Api::V1::NetworksController < ApplicationController

  def index
    @networks = Network.all
  end

  def show 
    @network = Network.find(params[:id])
  end

  def create    
    coordinates = get_coordinates(params[:location])
    @network = Network.create(networks_params)
    @network.update_attributes(lattitude: coordinates[0], longitude: coordinates[1])
    render :show
  end

  def update
    @network = Network.find(params[:id])
    coordinates = get_coordinates(params[:location])
    @network.update_attributes(networks_params, lattitude: coordinates[0], longitude: coordinates[1])
    render :show
  end

  def destroy
    Network.find(params[:id]).destroy
    format.json {render json: "Network Removed"}
  end

  private

  def networks_params
    params.permit(:awesome_count, :image_url, :meetup_group_id, :time_zone, :title, :createdAt, :updatedAt)
  end

  def get_coordinates(location)
    Geocoder.coordinates(location)
  end

end
