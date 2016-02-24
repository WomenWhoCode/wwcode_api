class Api::V1::PersonalizationAnswersController < ApplicationController

  def index
    @personalization_answers = PersonalizationAnswer.all
  end

  def show
    @personalization_answer = PersonalizationAnswer.find(params[:id])
  end

  def create 
    @personalization_answer = PersonalizationAnswer.create(objectId: params[:objectId], personalization_question_id: params[:personalization_question_id], detail: params[:detail], createdAt: params[:createdAt], updatedAt: params[:updatedAt])
    render :show
  end

  def update
    @personalization_answer = PersonalizationAnswer.find(params[:id])
    @personalization_answer.update(objectId: params[:objectId], personalization_question_id: params[:personalization_question_id], detail: params[:detail], createdAt: params[:createdAt], updatedAt: params[:updatedAt])
    render :show
  end

  def destroy
    PersonalizationAnswer.find(params[:id]).destroy
    format.json {render json: "Answer Removed"}
  end
  
end
