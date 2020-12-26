# frozen_string_literal: true

class RemoveColumnImageFromPosts < ActiveRecord::Migration[6.1]
  def change
    if column_exists?(:posts, :image)
      remove_column :posts, :image
    elsif column_exists?(:posts, :image_url)
      remove_column :posts, :image_url
    end
  end
end
