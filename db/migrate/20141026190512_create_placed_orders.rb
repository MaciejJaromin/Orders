class CreatePlacedOrders < ActiveRecord::Migration
  def change
    create_table :placed_orders do |t|
      t.datetime :time_placed
      t.belongs_to :customer, index: true

      t.timestamps
    end
  end
end
