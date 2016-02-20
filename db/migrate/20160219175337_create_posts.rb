class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :objectId
      t.integer :awesome_account
      t.string :description
      t.string :eventId
      t.string :featureId
      t.string :photo
      t.string :userId
      t.date :createdAt
      t.date :updatedAt

      t.timestamps null: true
    end
  end
end
