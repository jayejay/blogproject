# frozen_string_literal: true

class RemoveColumnImageFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :image_url
  end
end
