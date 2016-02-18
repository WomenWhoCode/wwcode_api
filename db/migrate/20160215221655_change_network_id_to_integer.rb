class ChangeNetworkIdToInteger < ActiveRecord::Migration
  def change
    change_column :events, :network_id, 'integer USING CAST(network_id AS integer)'
  end
end
