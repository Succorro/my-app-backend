class Product < ActiveRecord::Base 
    belongs_to :product_category
    has_many :reviews
    has_many :cart_products
end