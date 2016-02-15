class CreatePersonalizationQuestions < ActiveRecord::Migration
  def change
    create_table :personalization_questions do |t|
      t.string :objectId
      t.string :detail
      t.date :createdAt
      t.date :updatedAt

      t.timestamps null: true
    end
  end
end
