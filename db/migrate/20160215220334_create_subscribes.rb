class CreateSubscribes < ActiveRecord::Migration
  def change
    create_table :subscribes do |t|
      t.string :objectId
      t.integer :event_id
      t.integer :feature_id
      t.integer :network_id
      t.boolean :subscribed
      t.integer :user_id
      t.date :createdAt
      t.date :updatedAt

      t.timestamps null: true
    end
  end
end
