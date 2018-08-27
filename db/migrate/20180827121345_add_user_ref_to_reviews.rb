class AddUserRefToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :reviews, foreign_key: true
  end
end
