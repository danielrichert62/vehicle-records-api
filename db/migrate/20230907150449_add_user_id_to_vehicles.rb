class AddUserIdToVehicles < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :user_id, :integer
  end
end
