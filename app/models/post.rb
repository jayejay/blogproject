class Post < ApplicationRecord
  validates :image_url, :title, :content, presence: true
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_and_belongs_to_many :tags
  has_one :rating
  accepts_nested_attributes_for :rating

  mount_uploader :image_url, ImageUploader

  def get_rating_total
    unless rating.nil?
      total = (rating.gameplay + rating.graphics + rating.sound + rating.price_performance + rating.innovation).to_f
      total = total / 5
    else
      total = 0
    end
  end

  def get_rating(column_value)
    unless column_value.nil?
      column_value
    else
      0
    end
  end

  def self.search(search_term)
    if Rails.env.development?
      Post.where("title LIKE ? AND active = ?", "%#{search_term}%", true)
    else
      Post.where("title ILIKE ? AND active = ?", "%#{search_term}%", true)
    end
  end

end
