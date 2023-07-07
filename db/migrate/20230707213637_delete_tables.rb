class DeleteTables < ActiveRecord::Migration[6.1]
  def change
    drop_table :cart_products
    drop_table :shopping_carts
  end
end
