class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :objectId
      t.string :child_post_id
      t.date :createdAt
      t.string :parent_post_id
      t.date :updatedAt

      t.timestamps null: true
    end
  end
end
