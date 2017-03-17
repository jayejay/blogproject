class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments

  mount_uploader :image_url, ImageUploader
end
