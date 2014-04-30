class Note < ActiveRecord::Base
  belongs_to :room
  has_many :posts
  validates :room_id, presence: true
  validates :title, presence: true
end
