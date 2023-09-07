class AddVehicleIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :vehicle_id, :integer
  end
end
