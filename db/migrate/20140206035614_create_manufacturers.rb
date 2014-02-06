class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :manufacturer

      t.timestamps
    end
  end
end
