class CreatePersonalizationQuestions < ActiveRecord::Migration
  def change
    create_table :personalization_questions do |t|
      t.string :objectId
      t.string :detail
      t.date :createdAt
      t.date :updatedAt

<<<<<<< HEAD
      t.timestamps null: false
=======
      t.timestamps null: true
>>>>>>> 3b66ce485b782af4aba0c14478d8f314fa29b142
    end
  end
end
