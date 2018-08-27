class AddRestaurantRefToReservations < ActiveRecord::Migration[5.2]
  def change
    add_reference :reservations, :restaurants, foreign_key: true
  end
end
