class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :comment
      t.datetime :datetime
      t.integer :seats
      t.references :users, foreign_key: true
      t.references :restaurants, foreign_key: true

      t.timestamps
    end
  end
end
