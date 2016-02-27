class RemoveColumnsFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :event_id
    remove_column :posts, :feature_id
    remove_column :posts, :user_id
  end
end
