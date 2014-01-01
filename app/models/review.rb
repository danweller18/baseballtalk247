class Review < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :pros, presence: true, length: { maximum: 200 }
  validates :cons, presence: true, length: { maximum: 200 }
  validates :user_id, presence: true
end
