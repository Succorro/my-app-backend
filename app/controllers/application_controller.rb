class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/categories" do 
    categories = ProductCategory.all
    categories.to_json(include: {products:{include: {reviews:{only: [:id, :rating, :name, :created_at]}}}})
  end

  get '/products/:id' do
    products = Product.find(params[:id])
    products.to_json(include: :reviews)
  end

  get "/reviews" do 
    reviews = Review.all 
    reviews.to_json
  end 

  post '/reviews' do 
    reviews = Review.create(
      product_id: params[:product_id],
      name: params[:name],
      rating: params[:rating],
    )
    reviews.to_json 
  end


  get "/cart_products" do 
    cartProducts = CartProduct.all 
    cartProducts.to_json(include: :product)
  end

  post "/cart_products" do 
    cartProduct = CartProduct.create(
      product_id: params[:product_id],
      shopping_cart_id: params[:shopping_cart_id],
      qty: params[:qty],
      product_price: params[:product_price]
    )
    cartProduct.to_json
  end

  patch '/cart_products/:id' do 
    cartProduct = CartProduct.find(params[:id])
    cartProduct.update(
      qty: params[:qty]
    )
    cartProduct.to_json 
  end

  delete "/cart_products/:id" do 
    cartProduct = CartProduct.find(params[:id])
    cartProduct.destroy
    cartProduct.to_json
  end


end
