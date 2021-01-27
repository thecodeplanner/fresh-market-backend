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

melissa = User.create(name: "Melissa", username: "Melissa123", password:"abc123", bio: "Hi, I'm a baker!")
bek = User.create(name: "Bek", username: "Bek123", password: "1234", bio: "I make the freshest food.")
jon = User.create(name: "Jon", username: "ChefJ26", password: "123", bio: "I love to farm and cook anything and everything.")
ian = User.create(name: "Ian", username: "TestUser", password: "123", bio: "Test bio")


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
avocados = Item.create(name: "Avocados", description: "Fresh organic avocados picked specially for you", quantity: 12, price: 12.99, image: "https://media.self.com/photos/5b43712e4d0c3c282a8878d1/3:4/w_2340,h_3120,c_limit/avocado.jpg", user_id: bek.id, category_id: produce.id)
tomatoes = Item.create(name: "Tomatoes", description: "Freshly grown tomatoes", quantity: 12, price: 7.99, image: "https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/articles/health_tools/tomato_health_benefits_slideshow/493ss_thinkstock_rf_tomatoes_ripening_on_the_vine.jpg", user_id: bek.id, category_id: produce.id)
orange_juice = Item.create(name: "Orange Juice", description: "Freshly squeezed organic orange juice", quantity: 15, price: 6.99, image: "https://static.toiimg.com/thumb/msid-68562297,width-800,height-600,resizemode-75,imgsize-950123,pt-32,y_pad-40/68562297.jpg", user_id: bek.id, category_id: beverages.id)
smoothie = Item.create(name: "Smoothies", description: "Amazing fruit smoothies made from fresh organic products", quantity: 15, price: 8, image: "https://www.fivestarhomefoods.com/hs-fs/hubfs/social-suggested-images/smoothies-2253423_1920.jpg?width=592&height=333&name=smoothies-2253423_1920.jpg", user_id: bek.id, category_id: beverages.id)
apple_pie = Item.create(name: "Apple Pie", description: " The best homemade apple pie baked for you", quantity: 10, price: 13.99, image: "https://i.ytimg.com/vi/RoHWiA6pogg/maxresdefault.jpg", user_id: bek.id, category_id: baked_goods.id)


cupcake = Item.create(name:"Red Velvet Cupcakes (6Pack)", description: "Freshly baked and topped with cream cheese frosting!", quantity: 6, price: 6.99, image: "https://www.biggerbolderbaking.com/wp-content/uploads/2020/08/Red-Velvet-Cupcakes-WS-Thumbnail.jpg", user_id: melissa.id, category_id: baked_goods.id )
chocolate_chip_cookie = Item.create(name: "Gourmet Sea Salt Chocolate Chip Cookies", description: "The best cookies around. Who doesn't love freshly baked cookies sprinkled with sea salt?!", quantity: 24, price: 1.99, image: "https://www.cakenknife.com/wp-content/uploads/2020/01/Sea-Salt-Dark-Chocolate-Pistachio-Cookies_thumbnail-2-480x480.jpg", user_id: melissa.id, category_id: baked_goods.id)

milk = Item.create(name: "Fresh Whole Organic Milk", description: "Fresh whole milk by the gallon from my organic farm!", quantity: 5, price: 4.99, image: "https://images.squarespace-cdn.com/content/v1/5b59eaadb98a787b7218776c/1549849946528-ME37F9GPAZPI9UD2ZXII/ke17ZwdGBToddI8pDm48kGrfW1S35uWnIbj-xRk3UP1Zw-zPPgdn4jUwVcJE1ZvWhcwhEtWJXoshNdA9f1qD7Xj1nVWs2aaTtWBneO2WM-uHvEO7xlFjTBRwjrmQGAlm1NuRIER2mqDRXMX5urSAxw/fresh+milk.jpeg?format=300w", user_id: jon.id, category_id: dairy.id)
parfait = Item.create(name: "Homemade Granola Parfait", description: "Yogurt parfait topped with granola, nuts and fresh berries. Additional toppings available upon request.", quantity: 7, price: 6.99, image: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2015/3/2/2/FNM_040115-Granola-Parfaits-Recipe_s4x3.jpg.rend.hgtvcom.616.462.suffix/1425500500897.jpeg", user_id: bek.id, category_id: dairy.id)
pesto_sandwich = Item.create(name: "Grilled Pesto Chicken Panini", description: "Grilled chicken, pesto, mozzarella and tomato pressed to perfection.", quantity: 6, price: 12.99, image: "https://storcpdkenticomedia.blob.core.windows.net/media/recipemanagementsystem/media/recipe-media-files/recipes/retail/desktopimages/15583.jpg?ext=.jpg", user_id: bek.id, category_id: specialty.id)
salad = Item.create(name: "Grab and Go Salad", description: "Tossed salad with freshly picked vegetables. Dressing of choice and addtional toppings upon request.", quantity: 12, price: 11.99, image: "https://images.squarespace-cdn.com/content/v1/53baad0ce4b021fd1bd61f7a/1426607086288-HXA8ML39C30QHN3VKUI1/ke17ZwdGBToddI8pDm48kBZw6jF4_OvU-ddo_vwqGhp7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1Ub61YCrK70I7JIpWiI8ho4Yi1WvVNQtDE81xuRbL1MFKm0sD-Bab7E9MY8W31A7zMQ/salads.jpg", user_id: jon.id, category_id: specialty.id)

cilantro = Item.create(name: "Organic Cilantro", description: "Freshly picked and grown cilantro by the bunch.", quantity: 8, price: 2.99, image: "https://cdn11.bigcommerce.com/s-dlu0if4b8u/images/stencil/500x659/products/705/1374/cilantro__60546.1602279766.PNG?c=2", user_id: jon.id, category_id: produce.id)
zucchini = Item.create(name: "Homegrown Zucchini", description: "Freshly picked zucchini and homegrown from my farm.", quantity: 20, price: 3.99, image: "https://findjerseyfresh.com/wp-content/uploads/2018/04/product-zucchini.jpg", user_id: bek.id, category_id: produce.id)
carrots = Item.create(name: "Fresh Grown Baby Carrots", description: "Bunch of baby carrots with a perfect crunch.", quantity: 25, price: 5.50, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5zeiF_6vFtQ8oCcKWQeyqKushiWBiDBqHAQ&usqp=CAU", user_id: jon.id, category_id: produce.id)
