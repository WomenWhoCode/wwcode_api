class Api::V1::PersonalizationAnswersController < ApplicationController

  def index
    @personalization_answers = PersonalizationAnswer.all
  end

  def show
    @personalization_answer = PersonalizationAnswer.find(params[:id])
  end

  def create 
    @personalization_answer = PersonalizationAnswer.create(personalization_answers_params)
    render :show
  end

  def update
    @personalization_answer = PersonalizationAnswer.find(params[:id])
    @personalization_answer.update(personalization_answers_params)
    render :show
  end

  def destroy
    PersonalizationAnswer.find(params[:id]).destroy
    format.json {render json: "Answer Removed"}
  end

  private 

  def personalization_answers_params
    params.permit(:personalization_question_id, :detail, :created_at, :updated_at)
  end
  
end
