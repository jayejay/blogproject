# frozen_string_literal: true

class RenameColumnSectionIdFromPosts < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :section_id, :category_id
  end
end
