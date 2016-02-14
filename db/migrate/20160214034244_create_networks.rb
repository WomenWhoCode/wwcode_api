class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :objectId
      t.integer :awesome_count
      t.string :image_url
      t.float :latitude
      t.float :longitude
      t.integer :meetup_group_id
      t.string :meetup_url
      t.string :time_zone
      t.string :title
      t.date :createdAt
      t.date :updatedAt

      t.timestamps null: true
    end
  end
end
