# frozen_string_literal: true

class RenameTableSectionsToCategories < ActiveRecord::Migration[5.0]
  def change
    rename_table :sections, :categories
  end
end
