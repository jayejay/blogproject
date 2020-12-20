# frozen_string_literal: true

class AddColumnToTags < ActiveRecord::Migration[5.0]
  def change
    add_column :tags, :color, :string
  end
end
