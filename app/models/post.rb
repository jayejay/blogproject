# frozen_string_literal: true

class Post < ApplicationRecord
  validates :title, :content, presence: true
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_and_belongs_to_many :tags
  has_one :rating
  accepts_nested_attributes_for :rating

  # mount_uploader :image.url, ImageUploader
  has_one_attached :image

  has_rich_text :content

  def get_rating_total
    if rating.nil?
      total = 0
    else
      total = (rating.gameplay + rating.graphics + rating.sound + rating.price_performance + rating.innovation).to_f
      total /= 5
    end
  end

  def get_rating(column_value)
    if column_value.nil?
      0
    else
      column_value
    end
  end

  def self.search(search_term)
    if Rails.env.development?
      Post.where('title LIKE ? AND active = ?', "%#{search_term}%", true)
    else
      Post.where('title ILIKE ? AND active = ?', "%#{search_term}%", true)
    end
  end
end
