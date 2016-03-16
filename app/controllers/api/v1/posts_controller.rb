class Api::V1::PostsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @replies = @post.replies.all
  end

  def create
    @post = Post.create(post_params)
    render :show
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    render :show
  end

  def destroy
    Post.find(params[:id]).destroy
    format.json {render json: "Post Deleted"}
  end

  private

  def post_params
    params.permit(:awesome_count, :description, :event_id, :feature_id, :photo, :user_id, :created_at, :updated_at)
  end

end
