class RenameUserIdColumn < ActiveRecord::Migration
  def change
    rename_column :profiles, :userId, :user_id
  end
end
