# frozen_string_literal: true

class RenameColumnAuthorIdFromPosts < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :author_id, :user_id
  end
end
