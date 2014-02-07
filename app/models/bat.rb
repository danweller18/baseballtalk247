class Bat < ActiveRecord::Base
  has_many :reviews
  belongs_to :manufacturer
end
