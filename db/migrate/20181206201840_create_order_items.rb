class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :meal_id
      t.integer :order_id
      # t.references :meals, foreign_key: true
      # t.references :order, foreign_key: true
      t.float :unit_price
      t.integer :quantity
      t.float :total_price

      t.timestamps
    end
  end
end
