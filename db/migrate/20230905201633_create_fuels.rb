class CreateFuels < ActiveRecord::Migration[7.0]
  def change
    create_table :fuels do |t|
      t.date :fill_date
      t.integer :mileage
      t.decimal :cost_per_gallon
      t.string :location
      t.decimal :gallons
      t.references :vehicle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
