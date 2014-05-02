class Post < ActiveRecord::Base
  belongs_to :note
  validates :content, presence: true 

  mount_uploader :picture, PictureUploader
end
