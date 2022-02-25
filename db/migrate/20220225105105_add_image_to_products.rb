class AddImageToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :ImageName, :string
  end
end
