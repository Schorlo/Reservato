# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "yaml"

User.destroy_all
Restaurant.destroy_all
Review.destroy_all
Reservation.destroy_all

user = User.new(first_name: "Hans", last_name: "user1", email: 'user1@ab.com', password: "123456")
user.save!

user2 = User.new(first_name: "Hans", last_name: "user2", email: 'user2@ab.com', password: "123456")
user2.save!

user3 = User.new(first_name: "Hans", last_name: "user3", email: 'user3@ab.com', password: "123456")
user3.save!

user4 = User.new(first_name: "Hans", last_name: "user4", email: 'user4@ab.com', password: "123456")
user4.save!


restaurant = Restaurant.new(email: 'restaurant1@xyz.com', name: "Tim Raue", category: "french", phone: "08156666666", country: "Germany", city: "Berlin", address: "Rudi Dutschkestr.26")
restaurant.save!

restaurant2 = Restaurant.new(email: 'restaurant2@xyz.com', name: "McD Ostbahnhof", category: "Burger", phone: "081573223", country: "Germany", city: "Berlin", address: "Am Ostbahnhof 9")
restaurant2.save!

restaurant3 = Restaurant.new(email: 'restaurant3@xyz.com', name: "McD Hermannplatz", category: "Burger", phone: "081573223", country: "Germany", city: "Berlin", address: "Hermannpl. 2-3")
restaurant3.save!

restaurant4 = Restaurant.new(email: 'restaurant4@xyz.com', name: "McD Alexanderplatz", category: "Burger", phone: "081573223", country: "Germany", city: "Berlin", address: "Karl-Liebknecht-Str. 13")
restaurant4.save!



reservation = Reservation.new(datetime: DateTime.new(2018,8,27), user: user, seats: 1, comment: "i am allergic", restaurant: restaurant)
reservation.save!

reservation2 = Reservation.new(datetime: DateTime.new(2018,8,27), user: user2, seats: 2, comment: "Great!", restaurant: restaurant2)
reservation2.save!

reservation3 = Reservation.new(datetime: DateTime.new(2018,8,27), user: user3, seats: 3, comment: "Shit!", restaurant: restaurant3)
reservation3.save!

reservation4 = Reservation.new(datetime: DateTime.new(2018,8,27), user: user4, seats: 4, comment: "Nice!", restaurant: restaurant4)
reservation4.save!



review = Review.new(rating: 3, content: "Great!", user: user, restaurant: restaurant)
review.save!

review2 = Review.new(rating: 3, content: "Great!", user: user2, restaurant: restaurant)
review2.save!

review3 = Review.new(rating: 2, content: "Average!", user: user3, restaurant: restaurant3)
review3.save!

review4 = Review.new(rating: 3, content: "Awesome!", user: user4, restaurant: restaurant4)
review4.save!
