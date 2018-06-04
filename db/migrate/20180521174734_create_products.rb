class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :merchant
      t.string :name, null: false
      t.text :description, null: false
      t.integer :suggested_price

      t.timestamps
    end
  end
end