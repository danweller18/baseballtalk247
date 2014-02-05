class Review < ActiveRecord::Base
  has_many :ratings
  belongs_to :user
  belongs_to :bats
  default_scope -> { order('created_at DESC') }
  validates :bats_id, presence: true
  validates :pros, presence: true
  validates :cons, presence: true
  validates :user_id, presence: true

  def average_rating
    return ratings.sum(:score) / ratings.length
  end
end
