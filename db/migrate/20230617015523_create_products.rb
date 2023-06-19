class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t| 
      t.string :name 
      t.string :desc
      t.string :color
      t.integer :price
      t.integer :product_category_id
    end
  end
end
