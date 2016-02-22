class CreateUserAccessCodes < ActiveRecord::Migration
  def change
    create_table :user_access_codes do |t|
      t.string :objectId
      t.string :email
      t.string :token
      t.date :createdAt
      t.date :updatedAt

      t.timestamps null: true
    end
  end
end
