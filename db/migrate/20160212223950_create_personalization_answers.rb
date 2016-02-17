class CreatePersonalizationAnswers < ActiveRecord::Migration
  def change
    create_table :personalization_answers do |t|
      t.string :objectId
      t.string :question
      t.string :detail
      t.date :createdAt
      t.date :updatedAt

      t.timestamps null: true
    end
  end
end
