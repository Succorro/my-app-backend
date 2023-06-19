class ChangeProductCategoryToProductCategories < ActiveRecord::Migration[6.1]
  def change
    rename_table :product_category, :product_categories
  end
end
