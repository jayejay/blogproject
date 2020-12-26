# frozen_string_literal: true

class AddColumnImageUrlToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :image.url, :string
  end
end
