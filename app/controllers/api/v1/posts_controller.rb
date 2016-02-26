class Api::V1::PostsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Reply.find(params[:id])
    @post = Post.create(objectId: params[:objectId], awesome_count: params[:awesome_count], description: params[:description], event_id: params[:event_id], feature_id: params[:feature_id], photo: params[:photo], user_id: params[:user_id], createdAt: params[:createdAt], updatedAt: params[:updatedAt])
    render :show
  end

  def update
    @post = Post.find(params[:id])
    @post.update(objectId: params[:objectId], awesome_count: params[:awesome_count], description: params[:description], event_id: params[:event_id], feature_id: params[:feature_id], photo: params[:photo], user_id: params[:user_id], createdAt: params[:createdAt], updatedAt: params[:updatedAt])
    render :show
  end

  def destroy
    Post.find(params[:id]).destroy
    format.json {render json: "Post Deleted"}
  end
end
