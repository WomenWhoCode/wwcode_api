class Api::V1::UsersController < ApplicationController
  protect_from_forgery except: :user_events

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params, emailVerified: false)
    @user.save
    render :show
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params, emailVerified: false)
    render :show
  end

  def destroy
    User.find(params[:id]).destroy
    render json: "User Deleted"
  end

  def user_events
    user_id = params[:user_id]
    user = User.find(user_id)
    network = user.network
    events = network.events

    user_hash = user.as_json( 
      include: { network: {
        include: :events} })

    user_hash["login_location_networks"] = [].as_json(include: :events) #[] to be filled in with location based on login geo-coordinates sent by client side

      respond_to do |format|
        format.js do
          response.headers['Access-Control-Allow-Headers'] = 'Content-Type'
          response.headers['Access-Control-Allow-Methods'] = 'GET,POST,OPTIONS'
          response.headers['Access-Control-Allow-Origin'] = ''
          render json: user_hash, :callback => params[:callback]
        end
        format.json do
          render json: user_hash
        end
      end
  end

  private

  def user_params
    params.permit(:username, :password, :emailVerified, :email, :phone, :profile_id)
  end
end
