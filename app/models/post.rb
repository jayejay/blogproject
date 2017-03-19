class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_and_belongs_to_many :tags

  mount_uploader :image_url, ImageUploader
end
