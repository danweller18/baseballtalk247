class FixColumnManufacturer < ActiveRecord::Migration
  def change
    rename_column :manufacturers, :manufacturer, :name
  end
end
