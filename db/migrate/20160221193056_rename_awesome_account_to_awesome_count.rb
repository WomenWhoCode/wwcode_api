class RenameAwesomeAccountToAwesomeCount < ActiveRecord::Migration
  def change
    rename_column :posts, :awesome_account, :awesome_count
  end
end
