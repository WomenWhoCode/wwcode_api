class ChangeUserIdToString < ActiveRecord::Migration
  def change
    change_column :profiles, :user_id, :string
  end
end
