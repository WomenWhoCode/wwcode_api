class ChangeQuestionToPersonalizationQuestionIdToPersonalizationAnswers < ActiveRecord::Migration
  def change
    rename_column :personalization_answers, :question, :personalization_question_id
  end
end
