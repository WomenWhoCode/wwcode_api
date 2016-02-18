class ChangeNetworkToNetworkIdInEvents < ActiveRecord::Migration
  def change
    rename_column :events, :network, :network_id
  end
end
