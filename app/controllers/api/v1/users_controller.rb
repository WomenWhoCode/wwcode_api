class Api::V1::UsersController < ApplicationController
  
  protect_from_forgery except: :user_events

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(username: params[:username], password: params[:password], emailVerified: false, email: params[:email], phone: params[:phone], profile_id: params[:profile_id])
    render :show
  end

  def update
    @user = User.find(params[:id])
    @user.update(username: params[:username], password: params[:password], emailVerified: false, email: params[:email], phone: params[:phone], profile_id: params[:profile_id])
    render :show
  end

  def destroy
    User.find(params[:id]).destroy
    render json: "User Deleted"
  end

  def user_events
    user_id = params[:user_id]
    user = User.find(user_id)
    profile = user.profile
    network = user.network
    events = network.events
    render json: network.to_json(include: :events)
    respond_to do |format|
      format.js do
        response.headers['Access-Control-Allow-Headers'] = 'Content-Type'
        response.headers['Access-Control-Allow-Methods'] = 'GET,POST,OPTIONS'
        response.headers['Access-Control-Allow-Origin'] = ''
        render json: network.to_json(include: :events), :callback => params[:callback]
      end
      format.json do
        render json: network.to_json(include: :events)
      end
    end
  end
end
