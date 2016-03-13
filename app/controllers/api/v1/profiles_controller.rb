class Api::V1::ProfilesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def create
    coordinates = get_coordinates(params[:location])
    @profile = Profile.create(profile_params)
    @profile.update_attributes(latitude: coordinates[0], longitude: coordinates[1])
    render :show
  end

  def update
    @profile = Profile.find(params[:id])
    coordinates = get_coordinates(params[:location])
    @profile.update_attributes(profile_params, latitude: coordinates[0], longitude: coordinates[1])
    render :show
  end

  def destroy
    Profile.find(params[:id]).destroy
    format.json {render json: "Profile Deleted"}
  end

  private

  def profile_params
    params.permit(:full_name, :image_url, :job_title, :network_id, :photo, :theme_type, :user_id, :createdAt, :updatedAt)
  end

  def get_coordinates(location)
    Geocoder.coordinates(location)
  end

end
