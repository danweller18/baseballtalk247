class Removecolumn < ActiveRecord::Migration
  def self.up
    remove_column :bats, :manufacturer
  end
end
