class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_and_belongs_to_many :tags

  mount_uploader :image_url, ImageUploader

  def short_preview_of_content(original_text, n)
    str = original_text
    return str.split(/\s+/, n+1)[0...n].join(' ')
  end

end
