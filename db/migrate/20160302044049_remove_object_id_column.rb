class RemoveObjectIdColumn < ActiveRecord::Migration
  def change
    remove_column :events, :objectId
    remove_column :networks, :objectId
    remove_column :personalization_answers, :objectId
    remove_column :personalization_questions, :objectId
    remove_column :posts, :objectId
    remove_column :profiles, :objectId
    remove_column :replies, :objectId
    remove_column :subscribes, :objectId
    remove_column :user_access_codes, :objectId
  end
end
