class AddModelYearToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :model_year, :integer
  end
end
