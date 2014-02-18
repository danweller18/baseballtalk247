class RemoveBatsIdFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :bats_id, :integer
  end
end
