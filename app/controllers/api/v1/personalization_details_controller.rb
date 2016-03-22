class Api::V1::PersonalizationDetailsController < ApplicationController

  def index
    @personalization_details = PersonalizationDetail.all
  end

  def show
    @personalization_detail = PersonalizationDetail.find(params[:id])
  end

  def create
    @personalization_detail = PersonalizationDetail.create(personalizations_details_params)
    render :show
  end

  def update
    @personalization_detail = PersonalizationDetail.find(params[:id])
    @personalization_detail.update(personalizations_details_params)
    render :show
  end

  def destroy
    PersonalizationDetail.find(params[:id]).destroy
    format.json {render json: "Details Removed"}
  end

  private

  def personalizations_details_params
    params.permit(:answers, :user_id, :createdAt, :updatedAt)
  end
  
end
