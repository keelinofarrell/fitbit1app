# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(title: 'Flex',
description: %{Stay focused on your goals and get motivated to be more active with Flex—a slim, 
stylish device that tracks all-day activity like steps taken, distance traveled, calories burned and active minutes. 
},
poster: 'flexb.jpg',
price: 79.95,
quantity: 10)

Product.create(title: 'Surge',
description: %{Don’t just start. Surge—with run time, distance, pace and elevation stats on display. 
See split times real time. Scroll through workout summaries and review routes after you run them to stay on track while you train.},
poster: 'surge.jpg',
price: 232.95,
quantity: 10)

Product.create(title: 'Zip',
description: %{Turn everyday life into a path to fitness with Fitbit Zip, 
a simple device that tracks all-day activity like steps taken, distance traveled and calories burned.},
poster: 'zip.jpg',
price: 49.95,
quantity: 10)

Product.create(title: 'One',
description: %{ Fitbit One monitors every move of your fitness journey, 
so you can dive deeper into the data you create with each step you take, floor you climb and calorie you burn.},
poster: 'fitbitone.jpg',
price: 89.95,
quantity: 10)

Product.create(title: 'Alta',
description: %{With metal, leather and classic accessory bands,
 and collections from the world's leading fashion designers, Fitbit Alta makes it easy to create a look that fits the occasion.,
poster: 'alta.jpg',
price: 120.50,
quantity: 0)

Customer.create(name: 'Mary Regan',
email: 'mary.regan@dit.ie',
address: 'Aungier St.')

Customer.create(name: 'Keelin O''Farrell',
email: 'keelin@dit.ie',
address: 'Dublin 12')

Customer.create(name: 'Sarah',
email: 'sarah@dit.ie',
address: 'Laois')

