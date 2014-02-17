class AddManufacturerIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :manufacturer_id, :integer
  end
end
