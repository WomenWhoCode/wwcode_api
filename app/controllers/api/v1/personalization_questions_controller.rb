class Api::V1::PersonalizationQuestionsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @personalization_questions = PersonalizationQuestion.all
  end

  def show
    @personalization_question = PersonalizationQuestion.find(params[:id])
  end

  def create
    @personalization_question = PersonalizationQuestion.create(objectId: params[:objectId], detail: params[:detail], createdAt: params[:createdAt], updatedAt: params[:updatedAt])
    render :show
  end

  def update
    @personalization_question = PersonalizationQuestion.find(params[:id])
<<<<<<< HEAD
    @personalization_question.updated(objectId: params[:objectId], detail: params[:detail], createdAt: params[:createdAt], updatedAt: params[:updatedAt])
=======
    @personalization_question.update(objectId: params[:objectId], detail: params[:detail], createdAt: params[:createdAt], updatedAt: params[:updatedAt])
>>>>>>> 3b66ce485b782af4aba0c14478d8f314fa29b142
    render :show
  end

  def destroy
    PersonalizationQuestion.find(params[:id]).destroy
    format.json {render json: "Question Removed"}
  end

end
