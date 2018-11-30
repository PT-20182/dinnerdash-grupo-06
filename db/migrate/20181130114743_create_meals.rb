class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :description
      t.float :price
      t.binary :image
      t.string :available
      t.string :category
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
