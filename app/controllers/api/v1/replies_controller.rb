class Api::V1::RepliesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def show
    @reply = Reply.find(params[:id])
  end

  def create
    @reply = Reply.create(objectId: params[:objectId], child_post_id: params[:child_post_id], createdAt: params[:createdAt], parent_post_id: params[:parent_post_id], updatedAt: params[:updatedAt])
    render :show
  end

  def update
    @reply = Reply.find(params[:id])
    @reply.update(objectId: params[:objectId], child_post_id: params[:child_post_id], createdAt: params[:createdAt], parent_post_id: params[:parent_post_id], updatedAt: params[:updatedAt])
    render :show
  end

  def destroy
    Reply.find(params[:id]).destroy
    format.json {render json: "Reply Removed"}
  end
end
