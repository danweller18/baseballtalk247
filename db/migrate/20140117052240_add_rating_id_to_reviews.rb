class AddRatingIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :rating_id, :integer
  end
end
