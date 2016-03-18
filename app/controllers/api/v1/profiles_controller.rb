class Api::V1::ProfilesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def create
    coordinates = get_coordinates(location_param)
    @profile = Profile.create(profile_params)
    @profile.update_attributes(latitude: coordinates.first, longitude: coordinates.last)
    render :show
  end

  def update
    @profile = Profile.find(params[:id])
    coordinates = get_coordinates(location_param)
    @profile.update_attributes(profile_params, latitude: coordinates.first, longitude: coordinates.last)
    render :show
  end

  def destroy
    Profile.find(params[:id]).destroy
    format.json {render json: "Profile Deleted"}
  end

  private

  def profile_params
    params.permit(:full_name, :image_url, :job_title, :network_id, :photo, :theme_type, :user_id, :created_at, :updated_at)
  end

  def location_param
    params.permit(:location)
  end

  def get_coordinates(location)
    Geocoder.coordinates(location)
  end

end
