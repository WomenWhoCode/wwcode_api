class Api::V1::PersonalizationDetailsController < ApplicationController

  def index
    @personalization_details = PersonalizationDetail.all
  end

  def show
    @personalization_detail = PersonalizationDetail.find(params[:id])
  end

  def create
    @personalization_detail = PersonalizationDetail.create(answers: params[:answers], user_id: current_user.id, createdAt: params[:createdAt], updatedAt: params[:updatedAt])
    render :show
  end

  def update
    @personalization_detail = PersonalizationDetail.find(params[:id])
    @personalization_detail.update(answers: params[:answers], user_id: current_user.id, createdAt: params[:createdAt], updatedAt: params[:updatedAt])
    render :show
  end

  def destroy
    PersonalizationDetail.find(params[:id]).destroy
    format.json {render json: "Details Removed"}
  end
end
