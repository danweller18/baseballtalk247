class AddBatIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :bat_id, :integer
  end
end
