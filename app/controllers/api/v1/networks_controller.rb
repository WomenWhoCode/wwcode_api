class Api::V1::NetworksController < ApplicationController

  def index
    @networks = Network.all
  end

  def show 
    @network = Network.find(params[:id])
  end

  def create
    @network = Network.create(objectId: params[:objectId], awesome_count: params[:awesome_count], image_url: params[:image_url], latitude: params[:latitude], longitude: params[:longitude], meetup_group_id: params[:meetup_group_id], time_zone: params[:time_zone], title: params[:title], createdAt: params[:createdAt], updatedAt: params[:updatedAt])
    render :show
  end

  def update
    @network = Network.find(params[:id])
    @network.update(objectId: params[:objectId], awesome_count: params[:awesome_count], image_url: params[:image_url], latitude: params[:latitude], longitude: params[:longitude], meetup_group_id: params[:meetup_group_id], time_zone: params[:time_zone], title: params[:title], updatedAt: params[:updatedAt])
    render :show
  end

  def destroy
    Network.find(params[:id]).destroy
    format.json {render json: "Network Removed"}
  end

end
