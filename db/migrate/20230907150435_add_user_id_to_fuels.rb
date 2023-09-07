class AddUserIdToFuels < ActiveRecord::Migration[7.0]
  def change
    add_column :fuels, :user_id, :integer
  end
end
