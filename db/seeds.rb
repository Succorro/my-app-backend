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
  price: 20,
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
  price: 10,
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

Cart.create(
  product_id: 5,
  qty: 3,
  total: 0
)
Cart.create(
  product_id: 2,
  qty: 1,
  total: 0
)
puts "✅ Done seeding!"
