class CreateBats < ActiveRecord::Migration
  def change
    create_table :bats do |t|
      t.string :manufacturer
      t.string :model_name
      t.string :model_number
      t.integer :model_year
      t.string :image_path
      t.string :image_path1

      t.timestamps
    end
  end
end
