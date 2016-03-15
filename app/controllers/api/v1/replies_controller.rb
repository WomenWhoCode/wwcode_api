class Api::V1::RepliesController < ApplicationController

  def show
    @reply = Reply.find(params[:id])
  end

  def create
    @reply = Reply.create(replies_params)
    render :show
  end

  def update
    @reply = Reply.find(params[:id])
    @reply.update(replies_params)
    render :show
  end

  def destroy
    Reply.find(params[:id]).destroy
    format.json {render json: "Reply Removed"}
  end

  private

  def replies_params
    params.permit(:child_post_id, :createdAt, :parent_post_id, :updatedAt)
  end
end
