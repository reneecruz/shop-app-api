# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Order.destroy_all 
Item.destroy_all

renee = User.create(first_name: "Renée", last_name: "Cruz", email: "reneebasscruz@gmail.com", password: "123", username: 
"renee", img_url: "https://bgp-palembang.com/assets/img/avatar/avatar-2.png")

coffee = Item.create(name: "Coffee", price: 12, description: "Fair Trade dark roast organic coffee from Guatemala.", img_url: "https://goodeggs2.imgix.net/product_photos/mvgGguzuQK2Cg3qKvsMK_2018_0613_BlueBottle_GiantSteps%20%288de1ccc420e411c8bbfb2f4bd51c2668fce47873%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop")
candle = Item.create(name: "Candle", price: 16, description: "Handpoured candle made with soy wax.", img_url: "http://cdn.shopify.com/s/files/1/0048/8475/8631/files/homepage_image_blue_2662bcd8-b054-4354-a0b4-c68baf821460_1200x1200.jpg?v=1560357859")
vitamins = Item.create(name: "Vitamins", price: 26, description: "One month supply of adaptogenic vitamins.", img_url: "https://www.2knowandvote.com/wp-content/uploads/2018/10/Best-Picks-Of-12-Potent-Supplements-Moon-Juice-SuperYou-Daily-Stress-Supplement.jpg")
# coffee = Item.create(name: "Coffee", price: 12, description: "Fair Trade dark roast organic coffee from Guatemala.")
# coffee = Item.create(name: "Coffee", price: 12, description: "Fair Trade dark roast organic coffee from Guatemala.")
# coffee = Item.create(name: "Coffee", price: 12, description: "Fair Trade dark roast organic coffee from Guatemala.")

# order = Order.create(user: renee, status: "cart")

# OrderItem.create(order: order, item: coffee, quantity: 2)

puts "It has been seeded. 🦄"