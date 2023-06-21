class MoveColumn < ActiveRecord::Migration[6.1]
  def change
    change_table :product_categories do |t| 
      t.remove :image_url 
    end
    change_table :products do |t| 
      t.remove :color
      t.string :image_url
    end
  end
end
