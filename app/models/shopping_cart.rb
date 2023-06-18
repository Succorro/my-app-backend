class ShoppingCart < ActiveRecord::Base 
    has_many :cart_products
end