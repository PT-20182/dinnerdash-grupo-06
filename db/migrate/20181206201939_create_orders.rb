class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.float :subtotal
      t.float :total
      t.string :status
      t.float :shipping
      t.integer :user_id
      # t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
