puts "🌱 Seeding spices..."

5.times do
    Review.create(
      product_id: Faker::Number.between(from: 1, to: 9),
      name: Faker::Name.name,
      rating: Faker::Number.between(from: 1, to: 5),
      created_at: Faker::Date.between(from: 100.days.ago, to: 5.days.ago),
      updated_at: Faker::Date.between(from: 4.days.ago, to: Date.today)
    )
  end
Product.create(
  name: Faker::Superhero.suffix,
  desc: "High Quality",
  image_url: "/Images/Hat.jpg",
  price: Faker::Number.between(from: 10, to: 30),
  product_category_id: 1
)
Product.create(
  name: Faker::Superhero.suffix,
  desc: "High Quality",
  image_url: "/Images/Hat.jpg",
  price: Faker::Number.between(from: 10, to: 30),
  product_category_id: 1
)
Product.create(
  name: Faker::Superhero.suffix,
  desc: "High Quality",
  image_url: "/Images/Hat.jpg",
  price: Faker::Number.between(from: 10, to: 30),
  product_category_id: 1
)
Product.create(
  name: Faker::Superhero.suffix,
  desc: "High Quality",
  image_url: "/Images/Beanie.jpg",
  price: Faker::Number.between(from: 10, to: 30),
  product_category_id: 2
)
Product.create(
  name: Faker::Superhero.suffix,
  desc: "High Quality",
  image_url: "/Images/Beanie.jpg",
  price: Faker::Number.between(from: 10, to: 30),
  product_category_id: 2
)
Product.create(
  name: Faker::Superhero.suffix,
  desc: "High Quality",
  image_url: "/Images/Beanie.jpg",
  price: Faker::Number.between(from: 10, to: 30),
  product_category_id: 2
)
Product.create(
  name: Faker::Superhero.suffix,
  desc: "High Quality",
  image_url: "/Images/BucketHat.jpeg",
  price: Faker::Number.between(from: 10, to: 30),
  product_category_id: 3
)
Product.create(
  name: Faker::Superhero.suffix,
  desc: "High Quality",
  image_url: "/Images/BucketHat.jpeg",
  price: Faker::Number.between(from: 10, to: 30),
  product_category_id: 3
)
Product.create(
  name: Faker::Superhero.suffix,
  desc: "High Quality",
  image_url: "/Images/BucketHat.jpeg",
  price: Faker::Number.between(from: 10, to: 30),
  product_category_id: 3
)


ProductCategory.create(name: "Hats")
ProductCategory.create(name: "Beanies")
ProductCategory.create(name: "Bucket Hats")

CartProduct.create(
    product_id: 5,
    shopping_cart_id: 1,
    qty: 3,
  )
CartProduct.create(
    product_id: 2,
    shopping_cart_id: 1,
    qty: 1,
  )
ShoppingCart.create(total: 0)
puts "✅ Done seeding!"
