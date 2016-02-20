class Api::V1::PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create(objectId: params[:objectId], awesome_account: params[:awesome_account], description: params[:description], eventId: params[:eventId], featureId: params[:featureId], photo: params[:photo], userId: params[:userId], createdAt: params[:createdAt], updatedAt: params[:updatedAt])
    render :show
  end

  def update
    @post = Post.find(params[:id])
    @post.update(objectId: params[:objectId], awesome_account: params[:awesome_account], description: params[:description], eventId: params[:eventId], featureId: params[:featureId], photo: params[:photo], userId: params[:userId], createdAt: params[:createdAt], updatedAt: params[:updatedAt])
    render :show
  end

  def destroy
    Post.find(params[:id]).destroy
    render json: "Post Deleted"
  end
end
