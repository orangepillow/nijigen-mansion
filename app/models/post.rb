class Post < ActiveRecord::Base
  belongs_to :note
  validates :content, presence: true 
end
