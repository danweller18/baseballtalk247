class Removecolumn < ActiveRecord::Migration
  def self.up
    remove_column :review, :bat_id
  end
end
