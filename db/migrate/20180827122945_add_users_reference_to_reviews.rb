class AddUsersReferenceToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :users, foreign_key: true
  end
end
