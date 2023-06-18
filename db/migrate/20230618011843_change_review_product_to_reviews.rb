class ChangeReviewProductToReviews < ActiveRecord::Migration[6.1]
  def change
    rename_table :review_product, :reviews
  end
end
