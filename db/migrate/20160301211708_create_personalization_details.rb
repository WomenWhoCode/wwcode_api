class CreatePersonalizationDetails < ActiveRecord::Migration
  def change
    create_table :personalization_details do |t|
      t.text :answers
      t.integer :user_id
      t.date :createdAt
      t.date :updatedAt

      t.timestamps null: true
    end
  end
end
