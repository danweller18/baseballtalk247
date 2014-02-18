class Removecolumn < ActiveRecord::Migration
  def self.up
    remove_column :reviews, :bats_id
  end
end
