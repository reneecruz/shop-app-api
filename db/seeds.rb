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

# renee = User.create(first_name: "Renée", last_name: "Cruz", email: "reneebasscruz@gmail.com", password: "123", username: 
# "renee", img_url: "https://bgp-palembang.com/assets/img/avatar/avatar-2.png")

# coffee = Item.create(name: "Coffee", price: 12, description: "Fair Trade dark roast organic coffee from Guatemala.", img_url: "https://goodeggs2.imgix.net/product_photos/mvgGguzuQK2Cg3qKvsMK_2018_0613_BlueBottle_GiantSteps%20%288de1ccc420e411c8bbfb2f4bd51c2668fce47873%29.jpg?w=840&h=525&fm=jpg&q=80&fit=crop")
# candle = Item.create(name: "Candle", price: 16, description: "Handpoured candle made with soy wax.", img_url: "http://cdn.shopify.com/s/files/1/0048/8475/8631/files/homepage_image_blue_2662bcd8-b054-4354-a0b4-c68baf821460_1200x1200.jpg?v=1560357859")
# vitamins = Item.create(name: "Vitamins", price: 26, description: "One month supply of adaptogenic vitamins.", img_url: "https://www.2knowandvote.com/wp-content/uploads/2018/10/Best-Picks-Of-12-Potent-Supplements-Moon-Juice-SuperYou-Daily-Stress-Supplement.jpg")
# coffee1 = Item.create(name: "Coffee", price: 12, description: "Fair Trade dark roast organic coffee from Guatemala.", img_url: "https://blue-bottle-cms.global.ssl.fastly.net/hbhhv9rz9/image/upload/c_thumb,h_576,w_576/v1551138095/iy69rfgek69st7sxp5hn.jpg")
# coffee2 = Item.create(name: "Coffee", price: 12, description: "Fair Trade medium roast organic coffee from Mexico.", img_url: "https://blue-bottle-cms.global.ssl.fastly.net/hbhhv9rz9/image/upload/c_thumb,h_576,w_576/v1551728387/rihalpo5o0mwf4w5li8u.jpg")
# coffee3 = Item.create(name: "Coffee", price: 12, description: "Fair Trade light roast organic coffee from Nicaragua.", img_url: "https://www.drinkpreneur.com/wp-content/uploads/2019/05/www.drinkpreneur.com-blue-bottle-coffee-recalls-whole-bean-coffee-cans-oikugyrgry1jgrxfknu6-2018-0613-bluebottle-nightlightdecaf-9b19d08824310c62e2f3c9da11dfaea85178ea64.jpg")

# order = Order.create(user: renee, status: "cart")

# OrderItem.create(order: order, item: coffee, quantity: 2)

puts "Starting to seed. 🦄"

ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
  end
  require "rest-client"
  require "dotenv"
response = RestClient::Request.execute(
    method: :get,
    url: "https://apidojo-hm-hennes-mauritz-v1.p.rapidapi.com/products/list",
    headers: {"X-RapidAPI-Host": "apidojo-hm-hennes-mauritz-v1.p.rapidapi.com",
      "x-rapidapi-key": ENV["NYT_API_KEY"]}
  )
  product_data = JSON.parse(response)["results"]
  
  product_data.each do |dataInfo|
    
      Item.create(
          name: dataInfo["name"],
          price: dataInfo["price"]["value"],
        #   description: dataInfo["CustomerNote"],
          img_url: dataInfo["images"][0]["url"]
      )
  end
  
  puts "It has been seeded. 🦄"