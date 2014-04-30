class Post < ActiveRecord::Base
  belongs_to :note
  validates :content, presence: true
  validates :note_id, presence: true
end
