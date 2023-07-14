class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/products" do 
    products = Product.all
    products.to_json(include: :reviews)
  end

  post "/products" do 
    product = Product.create(
      name: params[:name],
      desc: params[:desc],
      price: params[:price], 
      image_url: params[:image_url],
      category: params[:category]
    )
    product.to_json
  end

  post '/reviews' do 
    reviews = Review.create(
      product_id: params[:product_id],
      name: params[:name],
      rating: params[:rating],
    )
    reviews.to_json 
  end

  patch '/reviews/:id' do 
    review = Review.find(params[:id])
    review.update(
      rating: params[:rating]
    )
    review.to_json
  end

  delete "/reviews/:id" do 
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

end
