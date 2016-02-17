class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :objectId
      t.string :full_name
      t.string :image_url
      t.string :job_title
      t.decimal :latitude, precision: 15, scale: 10
      t.decimal :longitude, precision: 15, scale: 10
      t.string :network
      t.string :photo
      t.integer :theme_type
      t.integer :userId
      t.timestamp :createdAt
      t.timestamp :updatedAt

      t.timestamps null: true
    end
  end
end
