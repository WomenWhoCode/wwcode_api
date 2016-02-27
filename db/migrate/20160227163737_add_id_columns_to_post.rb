class AddIdColumnsToPost < ActiveRecord::Migration
  def change
    add_column :posts, :event_id, :integer
    add_column :posts, :feature_id, :integer
    add_column :posts, :user_id, :integer

  end
end
