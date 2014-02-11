class Bat < ActiveRecord::Base
  has_many :reviews
  belongs_to :manufacturer

  def model_year_and_name
    "#{model_year} #{model_name}"
  end

  def manufacturer_model_year_and_name
    "#{self.manufacturer.manufacturer}: #{self.model_year_and_name}"
  end
end
