class RemoveReviewFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_index :reviews, :reviews_id
    remove_column :reviews, :reviews_id, :string
  end
end
