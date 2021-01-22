# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all 
Item.destroy_all
Category.destroy_all

melissa = User.create(name: "Melissa", username: "Melissa123", bio: "Hi, I'm a baker!")
bek = User.create(name: "Bek", username: "Bek123", bio: "I make the freshest food.")
jon = User.create(name: "Jon", username: "ChefJ26", bio: "I love to farm and cook anything and everything.")


baked_goods = Category.create(name: "Baked Goods")
produce = Category.create(name: "Produce")
beverages = Category.create(name: "Beverages")
dairy = Category.create(name: "Dairy")
specialty = Category.create(name: "Specialty")

croissant = Item.create(name: "Croissant", description: "The butter and flakiness is to die for.", quantity: 24, price: 2.50, image: "https://wpcdn.us-east-1.vip.tn-cloud.net/www.channel3000.com/content/uploads/2019/12/le-croissant_1522178196499_10827988_ver1-0.jpg", user_id: melissa.id, category_id: baked_goods.id)
chocolate_cake = Item.create(name: "Chocolate Cake", description: "For all chocolate lovers, this is the cake for you!", quantity: 3, price: 14.99, image: "https://www.atablefullofjoy.com/wp-content/uploads/2020/02/German-Chocolate-Cake-Recipe-SQUARE.jpg", user_id: melissa.id, category_id: baked_goods.id)
homemade_pizza = Item.create(name: "Homemade Pizza", description: "The most organic pizza ever!", quantity: 4, price: 13.99, image: "https://i2.wp.com/thecookinchicks.com/wp-content/uploads/2020/04/IMG_1885.jpg", user_id: bek.id, category_id: specialty.id)
green_juice = Item.create(name: "Organic Green Juice", description: "Kale, cucumber, celery, lemon and apple all organically grown and made fresh daily!", quantity: 10, price: 8.99, image: "https://i2.wp.com/thepeacheepear.com/wp-content/uploads/2019/07/11CBEC72-62DC-4F8B-94E5-F17DB17AE6D9.jpeg?fit=2048%2C1365&ssl=1", user_id: jon.id, category_id: beverages.id)
mozzarella = Item.create(name: "Fresh Mozzarella", description: "Homemade fresh mozzarella for you to enjoy.", quantity: 8, price: 7.99, image: "https://static.toiimg.com/thumb/75296834.cms?imgsize=1585767&width=800&height=800", user_id: jon.id, category_id: dairy.id)
