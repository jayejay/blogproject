class Post < ApplicationRecord
  validates :image_url, :title, :content, presence: true
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_and_belongs_to_many :tags
  has_one :rating
  accepts_nested_attributes_for :rating

  mount_uploader :image_url, ImageUploader

  def short_preview_of_content(original_text, n)
    str = original_text
    return str.split(/\s+/, n+1)[0...n].join(' ')
  end


  def get_rating_total
    unless rating.nil?
      total = rating.gameplay + rating.graphics + rating.sound + rating.price_performance + rating.innovation
      total = total / 5
    else
      total = 0
    end

  end

end
