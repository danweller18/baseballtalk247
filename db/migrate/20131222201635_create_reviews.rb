class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :manufacturer
      t.string :model_name
      t.string :model_number

      t.timestamps
    end
  end
end
