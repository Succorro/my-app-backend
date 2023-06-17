class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :product do |t| 
      t.string :name 
      t.string :desc
      t.string :color
      t.string :size 
      t.string :type
      t.integer :price
      t.integer :product_category_id
    end
  end
end
