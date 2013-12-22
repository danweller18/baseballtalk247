class AddImagePathToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :image_path, :string
  end
end
