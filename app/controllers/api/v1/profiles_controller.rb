class Api::V1::ProfilesController < ApplicationController
<<<<<<< HEAD
 def index
  @profiles = Profile.all
end

def show
  @profile = Profile.find(params[:id])
end

def create
  coordinates = Geocoder.coordinates(params[:location])
  latitude = coordinates[0]
  longitude = coordinates [1]
  @profile = Profile.create(objectId: params[:objectId], full_name: params[:full_name],image_url: params[:image_url], job_title: params[:job_title], latitude: params[:latitude], longitude: params[:longitude], network: params[:network], photo: params[:photo], theme_type: params[:theme_type], userId: params[:userId], createdAt: params[:creaedAt], updatedAt: parms[:updatedAt])
  render :show
end

def update
  @profile = Profile.find(params[:id])
  coordinates = Geocoder.coordinates(params[:location])
  latitude = coordinates[0]
  longitude = coordinates [1]
  @profile.update((objectId: params[:objectId], full_name: params[:full_name],image_url: params[:image_url], job_title: params[:job_title], latitude: params[:latitude], longitude: params[:longitude], network: params[:network], photo: params[:photo], theme_type: params[:theme_type], userId: params[:userId], createdAt: params[:creaedAt], updatedAt: parms[:updatedAt])
=======
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def create
    coordinates = Geocoder.coordinates(params[:location])
    latitude = coordinates[0]
    longitude = coordinates [1]
    @profile = Profile.create(objectId: params[:objectId], full_name: params[:full_name],image_url: params[:image_url], job_title: params[:job_title], latitude: params[:latitude], longitude: params[:longitude], network: params[:network], photo: params[:photo], theme_type: params[:theme_type], user_id: params[:user_id], createdAt: params[:creaedAt], updatedAt: parms[:updatedAt])
    render :show
  end

  def update
    @profile = Profile.find(params[:id])
    coordinates = Geocoder.coordinates(params[:location])
    latitude = coordinates[0]
    longitude = coordinates [1]
    @profile.update(objectId: params[:objectId], full_name: params[:full_name],image_url: params[:image_url], job_title: params[:job_title], latitude: params[:latitude], longitude: params[:longitude], network: params[:network], photo: params[:photo], theme_type: params[:theme_type], user_id: params[:user_id], createdAt: params[:createdAt], updatedAt: params[:updatedAt])
>>>>>>> d645854ae381c97b99899a68d4893589367c50fa
    render :show
  end

  def destroy
    Profile.find(params[:id]).destroy
<<<<<<< HEAD
    render json: "Profile Deleted"
=======
    format.json {render json: "Profile Deleted"}
>>>>>>> d645854ae381c97b99899a68d4893589367c50fa
  end
end
