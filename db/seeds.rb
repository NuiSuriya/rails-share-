# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.first_or_create!(email: "nico@test.com", password: "123456")
User.first_or_create!(email: "hakan@test.com", password: "123456")
User.first_or_create!(email: "nui@test.com", password: "123456")


puts "Updating products..."
Product.destroy_all

puts "Creating new products..."

User.all.each do |user|
  rand(3..5).times do
    product = Product.create!(
      user: user,
      name: Faker::Beer.name,
      category: Faker::Beer.style,
      description: Faker::TvShows::BigBangTheory.quote,
      price: Faker::Number.number(digits: 2)
    )

    puts "Your product #{product.name}: #{product.category}. Was updated..."
  end
end
