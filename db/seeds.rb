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

baked_goods = Category.create(name: "Baked Goods")

chocolate_cake = Item.create(name: "Chocolate Cake", description: "For all chocolate lovers, this is the cake for you!", quantity: 3, price: 14.99, image: "https://www.atablefullofjoy.com/wp-content/uploads/2020/02/German-Chocolate-Cake-Recipe-SQUARE.jpg", user_id: melissa.id, category_id: baked_goods.id)