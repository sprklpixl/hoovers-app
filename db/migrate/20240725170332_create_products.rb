class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :product_id
      t.string :title
      t.string :image
      t.decimal :price
      t.decimal :sale_price
      t.integer :inventory
      t.references :category, null: false, foreign_key: true
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
