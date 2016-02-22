class RenameIdColumns < ActiveRecord::Migration
  def change
    rename_column :posts, :eventId, :event_id
    rename_column :posts, :featureId, :feature_id
    rename_column :posts, :userId, :user_id
  end
end
