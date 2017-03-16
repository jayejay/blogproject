class Post < ApplicationRecord
  belongs_to :user
  belongs_to :section
  has_many :comments

  mount_uploader :image_url, ImageUploader
end
