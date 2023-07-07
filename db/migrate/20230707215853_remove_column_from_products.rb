class RemoveColumnFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :product_category_id
  end
end
