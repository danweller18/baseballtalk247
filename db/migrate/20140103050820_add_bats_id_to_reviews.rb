class AddBatsIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :bats_id, :integer
  end
end
