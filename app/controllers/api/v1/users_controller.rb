class Api::V1::UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(username: params[:username], password: params[:password], emailVerified: false, email: params[:email], phone: params[:phone], profile_id: params[:profile_id], access_code: params[:access_code], personalization_details: params[:personalization_details])
    render :show
  end

  def update
    @user = User.find(params[:id])
    @user.update(username: params[:username], password: params[:password], emailVerified: false, email: params[:email], phone: params[:phone], profile_id: params[:profile_id], access_code: params[:access_code], personalization_details: params[:personalization_details])
    render :show
  end

  def destroy
    User.find(params[:id]).destroy
    render json: "User Deleted"
  end

  def user_events
    user = User.find(user_id)
    profile = user.profile
    network = user.network
    events = network.events
    network["events"] = events
    render json: network.to_json
  end
end
