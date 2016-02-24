class Api::V1::PostsController < ApplicationController
<<<<<<< HEAD

=======
  before_filter :authenticate_user!, except: [:index, :show]
  
>>>>>>> acb528a6fef97843103110958afb65823b1fc067
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
<<<<<<< HEAD
    @post = Post.create(objectId: params[:objectId], awesome_account: params[:awesome_account], description: params[:description], eventId: params[:eventId], featureId: params[:featureId], photo: params[:photo], userId: params[:userId], createdAt: params[:createdAt], updatedAt: params[:updatedAt])
=======
    @post = Post.create(objectId: params[:objectId], awesome_count: params[:awesome_count], description: params[:description], event_id: params[:event_id], feature_id: params[:feature_id], photo: params[:photo], user_id: params[:user_id], createdAt: params[:createdAt], updatedAt: params[:updatedAt])
>>>>>>> acb528a6fef97843103110958afb65823b1fc067
    render :show
  end

  def update
    @post = Post.find(params[:id])
<<<<<<< HEAD
    @post.update(objectId: params[:objectId], awesome_account: params[:awesome_account], description: params[:description], eventId: params[:eventId], featureId: params[:featureId], photo: params[:photo], userId: params[:userId], createdAt: params[:createdAt], updatedAt: params[:updatedAt])
=======
    @post.update(objectId: params[:objectId], awesome_count: params[:awesome_count], description: params[:description], event_id: params[:event_id], feature_id: params[:feature_id], photo: params[:photo], user_id: params[:user_id], createdAt: params[:createdAt], updatedAt: params[:updatedAt])
>>>>>>> acb528a6fef97843103110958afb65823b1fc067
    render :show
  end

  def destroy
    Post.find(params[:id]).destroy
<<<<<<< HEAD
    render json: "Post Deleted"
=======
    format.json {render json: "Post Deleted"}
>>>>>>> acb528a6fef97843103110958afb65823b1fc067
  end
end
