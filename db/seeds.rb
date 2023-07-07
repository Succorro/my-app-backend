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
  category: "Hat"
)
Product.create(
  name: Faker::Superhero.suffix,
  desc: "High Quality",
  image_url: "/Images/Hat.jpg",
  price: 20,
  category: "Hat"
)
Product.create(
  name: Faker::Superhero.suffix,
  desc: "High Quality",
  image_url: "/Images/Hat.jpg",
  price: Faker::Number.between(from: 10, to: 30),
  category: "Hat"
)
Product.create(
  name: Faker::Superhero.suffix,
  desc: "High Quality",
  image_url: "/Images/Beanie.jpg",
  price: Faker::Number.between(from: 10, to: 30),
  category: "Beanie"
)
Product.create(
  name: Faker::Superhero.suffix,
  desc: "High Quality",
  image_url: "/Images/Beanie.jpg",
  price: 10,
  category: "Beanie"
)
Product.create(
  name: Faker::Superhero.suffix,
  desc: "High Quality",
  image_url: "/Images/Beanie.jpg",
  price: Faker::Number.between(from: 10, to: 30),
  category: "Beanie"
)
Product.create(
  name: Faker::Superhero.suffix,
  desc: "High Quality",
  image_url: "/Images/BucketHat.jpeg",
  price: Faker::Number.between(from: 10, to: 30),
  category: "Bucket Hat"
)
Product.create(
  name: Faker::Superhero.suffix,
  desc: "High Quality",
  image_url: "/Images/BucketHat.jpeg",
  price: Faker::Number.between(from: 10, to: 30),
  category: "Bucket Hat"
)
Product.create(
  name: Faker::Superhero.suffix,
  desc: "High Quality",
  image_url: "/Images/BucketHat.jpeg",
  price: Faker::Number.between(from: 10, to: 30),
  category: "Bucket Hat"
)

Cart.create(
  product_id: 5,
  qty: 3,
  total: 30
)
Cart.create(
  product_id: 2,
  qty: 1,
  total: 20
)
puts "✅ Done seeding!"
