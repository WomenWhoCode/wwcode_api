class Api::V1::PersonalizationQuestionsController < ApplicationController

  def index
    @personalization_questions = PersonalizationQuestion.all
  end

  def show
    @personalization_question = PersonalizationQuestion.find(params[:id])
  end

  def create
    @personalization_question = PersonalizationQuestion.create(personalization_questions_params)
    render :show
  end

  def update
    @personalization_question = PersonalizationQuestion.find(params[:id])
    @personalization_question.update(personalization_questions_params)
    render :show
  end

  def destroy
    PersonalizationQuestion.find(params[:id]).destroy
    format.json {render json: "Question Removed"}
  end

  private

  def personalization_questions_params
    params.permit(:detail, :createdAt, :updatedAt)
  end 

end
