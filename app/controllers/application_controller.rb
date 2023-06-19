class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/categories" do 
    categories = ProductCategory.all
    categories.to_json
  end

  get "/products" do 
    products = Product.all
    products.to_json
  end

  get '/products/:id' do
    products = Product.find(params[:id])

    # include associated reviews in the JSON response
    products.to_json(include: :reviews)
  end

  get "/reviews" do 
    reviews = Review.all 
    reviews.to_json
  end 

  get "/cart_products" do 
    cartProducts = CartProduct.all 
    cartProducts.to_json
  end

  get "/cart" do 
    cart = ShoppingCart.find(1)
    cart.to_json(include: { cart_products: { include: :product} })
  end

 

end
