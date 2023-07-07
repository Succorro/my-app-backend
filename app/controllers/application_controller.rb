class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/products" do 
    categories = Product.all
    categories.to_json
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

  get "/carts" do 
  carts = Cart.all 
  carts.to_json(include: :product)
  end

  post "/carts" do 
    cartProduct = Cart.create(
      product_id: params[:product_id],
      qty: params[:qty],
      total: params[:total]
    )
    cartProduct.to_json
  end

  patch '/carts/:id' do 
    cartProduct = Cart.find(params[:id])
    cartProduct.update(
      qty: params[:qty]
    )
    cartProduct.to_json 
  end

  delete "/carts/:id" do 
    cartProduct = Cart.find(params[:id])
    cartProduct.destroy
    cartProduct.to_json
  end


end
