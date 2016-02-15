class ChangePersonalizationQuestionIdToInteger < ActiveRecord::Migration
  def change
    change_column :personalization_answers, :personalization_question_id, 'integer USING CAST(personalization_question_id AS integer)'
  end
end
