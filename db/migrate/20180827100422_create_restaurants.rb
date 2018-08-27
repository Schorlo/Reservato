class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.string :email
      t.string :category
      t.string :country
      t.string :city
      t.integer :rating

      t.timestamps
    end
  end
end
