class AddManufacturerIdToBats < ActiveRecord::Migration
  def change
    add_column :bats, :manufacturer_id, :integer
  end
end
