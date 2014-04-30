class Note < ActiveRecord::Base
  belongs_to :room
  validates :room_id, presence: true
  validates :title, presence: true
end
