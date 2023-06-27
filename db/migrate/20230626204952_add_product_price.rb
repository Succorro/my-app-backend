class AddProductPrice < ActiveRecord::Migration[6.1]
  def change
    add_column :cart_products, :product_price, :integer
  end
end
