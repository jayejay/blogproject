class Tag < ApplicationRecord
  has_and_belongs_to_many :posts
  validates :name, :color, presence: true
end
