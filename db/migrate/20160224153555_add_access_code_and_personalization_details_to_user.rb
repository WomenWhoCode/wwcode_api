class AddAccessCodeAndPersonalizationDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :access_code, :string
    add_column :users, :personalization_details, :string
  end
end
