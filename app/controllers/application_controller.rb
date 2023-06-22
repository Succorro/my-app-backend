class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/categories" do 
    categories = ProductCategory.all
    categories.to_json(include: {products:{include: {reviews:{only: [:rating, :name, :created_at]}}}})
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
    cartProducts.to_json(include: :product)
  end

  

  get "/cart" do 
    cart = ShoppingCart.find(1)
    cart.to_json(include: { cart_products: { include: :product} })
  end

  patch '/cart_products/:id' do 
    cartProduct = CartProduct.find(params[:id])
    cartProduct.update(
      qty: params[:qty]
    )
    cartProduct.to_json 
  end

end
