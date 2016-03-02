class Api::V1::SubscribesController < ApplicationController

  def index
    @subscribes = Subscribe.all
  end

  def show 
    @subscribe = Subscribe.find(params[:id])
  end

  def create
    @subscribe = Subscribe.create(event_id: params[:event_id], feature_id: params[:feature_id], network_id: params[:network_id], subscribed: params[:subscribed], user_id: current_user.id, createdAt: Time.now, updatedAt: Time.now)
    render :show
  end

  def update
    @subscribe = Subscribe.find(params[:id])
    @subscribe.update(event_id: params[:event_id], feature_id: params[:feature_id], network_id: params[:network_id], subscribed: params[:subscribed], user_id: current_user.id, updatedAt: Time.now)
    render :show
  end

  def destroy
    Subscribe.find(params[:id]).destroy
    format.json {render json: "Subscribe Removed"}
  end


end
