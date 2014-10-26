class CreateOrderLines < ActiveRecord::Migration
  def change
    create_table :order_lines do |t|
      t.integer :amount
      t.belongs_to :product, index: true
      t.belongs_to :placed_order, index: true

      t.timestamps
    end
  end
end
