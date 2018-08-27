class RemoveUserFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_index :reviews, :user_id
    remove_column :reviews, :user_id, :string
  end
end
