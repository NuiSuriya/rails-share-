# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

user1 = User.first_or_create!(email: "nico@test.com", password: "123456")
user2 = User.first_or_create!(email: "hakan@test.com", password: "123456")
user3 = User.first_or_create!(email: "nui@test.com", password: "123456")

puts "Updating products..."
Product.destroy_all

puts "Creating new products..."

file = URI.open("https://southernvintagetable.com/wp-content/uploads/2020/01/Assorted-Brass-Candleholders-1024x652.jpeg")
product = Product.create!(
  user: user1,
  name: 'Antique candle holder',
  category: 'Decorations',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  price: 1
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://cdn.thewirecutter.com/wp-content/media/2020/12/powerdrills-2048px-0601.jpg")
product = Product.create!(
  user: user1,
  name: 'power drill',
  category: 'Households',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  price: 2
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://specials-images.forbesimg.com/imageserve/6303a8336dfadc7d74f3e7ef/LoveSac-SuperSac/960x0.jpg?fit=scale")
product = Product.create!(
  user: user1,
  name: 'Bean bag',
  category: 'Households',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  price: 3
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://fierytrippers.com/wp-content/uploads/2022/06/Best-Swim-Floaties-For-Kids.webp")
product = Product.create!(
  user: user1,
  name: 'Floties',
  category: 'Entertainment',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  price: 3
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://cdn.pocket-lint.com/r/s/1200x630/assets/images/140007-games-review-nintendo-switch-review-image1-lp6zy9awm0.jpg")
product = Product.create!(
  user: user2,
  name: 'nintendo switch',
  category: 'Entertainment',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  price: 5
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://cdn.thewirecutter.com/wp-content/uploads/2017/08/ladders-0361-goup-testing-630.jpg?auto=webp&quality=60&width=570")
product = Product.create!(
  user: user2,
  name: 'ladders',
  category: 'Household',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  price: 2
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://i.guim.co.uk/img/media/772cb65ae4951bc005dbd273372f65afe437f5af/498_239_2259_1356/master/2259.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=05b8def782dc3b3929021f94317d4bef")
product = Product.create!(
  user: user2,
  name: 'Harry Potter Boxset',
  category: 'Books',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  price: 2
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://futuroboats.com/wp-content/uploads/2021/07/Vaartlander-Topshot-futuro-Groot-2-scaled-1.jpg")
product = Product.create!(
  user: user2,
  name: 'Boat',
  category: 'Entertainment',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  price: 20
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://www.burnside.nl/wp-content/uploads/2022/04/Burnside-store-47.jpg")
product = Product.create!(
  user: user3,
  name: 'Sketboards',
  category: 'Sport',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  price: 3
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://asianinspirations.com.au/wp-content/uploads/2018/08/R01241_Chinese-Hot-Pot.jpg")
product = Product.create!(
  user: user3,
  name: 'Chinese hotpot',
  category: 'Household',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  price: 2
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!

file = URI.open("https://cdn.thewirecutter.com/wp-content/media/2021/05/kiddiepool-2048px-playday120.jpg?auto=webp&quality=75&width=1024")
product = Product.create!(
  user: user3,
  name: 'Kid pool',
  category: 'Sport',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  price: 2
)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save!



# User.all.each do |user|``
#   rand(3..5).times do
#     product = Product.create!(
#       user: user,
#       name: Faker::Beer.name,
#       category: Faker::Beer.style,
#       description: Faker::TvShows::BigBangTheory.quote,
#       price: Faker::Number.number(digits: 2)
#     )

#     puts "Your product #{product.name}: #{product.category}. Was updated..."
#   end
# end
