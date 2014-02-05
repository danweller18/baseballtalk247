class FixReviewColumnName < ActiveRecord::Migration
  def self.up
    rename_column :reviews, :bats_id, :bat_id
  end
end
