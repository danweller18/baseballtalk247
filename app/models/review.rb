class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :bats
  default_scope -> { order('created_at DESC') }
  validates :bats_id, presence: true
  validates :pros, presence: true
  validates :cons, presence: true
  validates :user_id, presence: true
end
