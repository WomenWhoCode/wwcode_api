class AddNetworkIdToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :network_id, :integer
  end
end
