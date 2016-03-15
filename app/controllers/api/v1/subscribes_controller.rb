class Api::V1::SubscribesController < ApplicationController

  def index
    @subscribes = Subscribe.all
  end

  def show 
    @subscribe = Subscribe.find(params[:id])
  end

  def create
    @subscribe = Subscribe.create(subscribes_params)
    @subscribe.update_attributes(createdAt: Time.now, updatedAt: Time.now)
    render :show
  end

  def update
    @subscribe = Subscribe.find(params[:id])
    @subscribe.update(subscribes_params, updatedAt: Time.now)
    render :show
  end

  def destroy
    Subscribe.find(params[:id]).destroy
    format.json {render json: "Subscribe Removed"}
  end

  private

  def subscribes_params
    params.permit(:event_id, :feature_id, :network_id, :subscribed, :user_id)
  end


end
