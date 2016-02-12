class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :objectId
      t.boolean :featured
      t.string :network
      t.date :updatedAt
      t.string :url
      t.string :event_date
      t.string :location
      t.string :title
      t.integer :subscribe_count
      t.date :createdAt
      t.string :description
      t.string :meetup_event_id
      t.string :time_zone
      t.string :hex_color

      t.timestamps null: true
    end
  end
end
