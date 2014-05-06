require 'file_size_validator'

class Post < ActiveRecord::Base
  belongs_to :note
  validates :content, presence: true

  mount_uploader :picture, PictureUploader
  validates :picture, file_size: { maximum: 500.kilobytes.to_i }
end
