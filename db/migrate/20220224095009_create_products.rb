class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :ProductName
      t.string :ProductDescription
      t.integer :ProductPrice
      t.string :ProductCategory

      t.timestamps
    end
  end
end
