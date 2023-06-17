class CreateReviewProduct < ActiveRecord::Migration[6.1]
  def change
    create_table :review_product do |t| 
      t.integer :product_id
      t.string :name
      t.integer :rating
      t.timestamps
    end
  end
end
