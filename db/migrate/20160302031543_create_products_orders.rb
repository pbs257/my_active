class CreateProductsOrders < ActiveRecord::Migration
  def change
    create_table :products_orders do |t|
      t.integer :product_id
      t.integer :order_id
    end
  end
end
