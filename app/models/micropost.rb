class Micropost < ActiveRecord::Base
  belongs_to :listener
  default_scope -> { order(created_at: :desc)}
  validates :listener_id, presence: true
  validates :content, presence: true, length: { maximum: 500}
end
