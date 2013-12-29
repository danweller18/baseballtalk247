class AddImagePath1ToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :image_path1, :string
  end
end
