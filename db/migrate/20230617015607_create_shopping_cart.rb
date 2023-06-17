class CreateShoppingCart < ActiveRecord::Migration[6.1]
  def change
    create_table :shopping_cart do |t| 
      t.integer :total
    end
  end
end
