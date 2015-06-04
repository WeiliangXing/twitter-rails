class Micropost < ActiveRecord::Base
  belongs_to :user
  # lambda function
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
