# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "yaml"

Reservation.destroy_all
Review.destroy_all
Restaurant.destroy_all
User.destroy_all

user = User.new(first_name: "Hans", last_name: "user1", email: 'user1@ab.com', password: "123456")
user.save!

user2 = User.new(first_name: "Hans", last_name: "user2", email: 'user2@ab.com', password: "123456")
user2.save!

user3 = User.new(first_name: "Hans", last_name: "user3", email: 'user3@ab.com', password: "123456")
user3.save!

user4 = User.new(first_name: "Hans", last_name: "user4", email: 'user4@ab.com', password: "123456")
user4.save!


restaurant = Restaurant.new(email: 'restaurant1@xyz.com',
                            name: "Tim Raue",
                            category: "french",
                            phone: "08156666666",
                            country: "Germany",
                            city: "Berlin",
                            address: "Rudi Dutschkestr.26",
                            remote_photo_url: "https://www.top10berlin.de/sites/top10berlin.de/files/list/2016/06/17/restaurant_le_faubourg1.jpg")
restaurant.save!

restaurant2 = Restaurant.new(email: 'restaurant2@xyz.com', name: "McD Ostbahnhof", category: "Burger", phone: "081573223", country: "Germany", city: "Berlin", address: "Am Ostbahnhof 9", remote_photo_url: "https://www.top10berlin.de/sites/top10berlin.de/files/styles/juicebox/public/location/slider/2017/11/02/top10berlin_brasserie-colette-tim-raue_nils-hasenau001.jpg?itok=3dgweDNz")
restaurant2.save!

restaurant3 = Restaurant.new(email: 'restaurant3@xyz.com', name: "McD Hermannplatz", category: "Burger", phone: "081573223", country: "Germany", city: "Berlin", address: "Hermannpl. 2-3", remote_photo_url: "https://www.top10berlin.de/sites/top10berlin.de/files/list/2016/06/17/restaurant_le_faubourg1.jpg")
restaurant3.save!

restaurant4 = Restaurant.new(email: 'restaurant4@xyz.com', name: "McD Alexanderplatz", category: "Burger", phone: "081573223", country: "Germany", city: "Berlin", address: "Karl-Liebknecht-Str. 13", remote_photo_url: "https://www.top10berlin.de/sites/top10berlin.de/files/list/2016/06/17/restaurant_le_faubourg1.jpg")
restaurant4.save!



reservation = Reservation.new(datetime: DateTime.new(2018,8,27), user: user, seats: 1, comment: "i am allergic", restaurant: restaurant)
reservation.save!

reservation2 = Reservation.new(datetime: DateTime.new(2018,8,27), user: user2, seats: 2, comment: "No Fish!", restaurant: restaurant2)
reservation2.save!

reservation3 = Reservation.new(datetime: DateTime.new(2018,8,27), user: user3, seats: 3, comment: "I am in a Wheelchair!", restaurant: restaurant3)
reservation3.save!

reservation4 = Reservation.new(datetime: DateTime.new(2018,8,27), user: user4, seats: 4, comment: "I stink!", restaurant: restaurant4)
reservation4.save!



review = Review.new(rating: 2, content: "Great!", user: user, restaurant: restaurant)
review.save!

review2 = Review.new(rating: 1, content: "Great!", user: user2, restaurant: restaurant)
review2.save!

review3 = Review.new(rating: 3, content: "Average!", user: user3, restaurant: restaurant3)
review3.save!

review4 = Review.new(rating: 5, content: "Awesome!", user: user4, restaurant: restaurant4)
review4.save!

# url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
# restaurant.remote_photo_url = url
# restaurant.save!
