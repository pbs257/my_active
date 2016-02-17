class CreateProduct < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.float :price
    end
  end
end
