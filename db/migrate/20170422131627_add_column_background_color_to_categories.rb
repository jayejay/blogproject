# frozen_string_literal: true

class AddColumnBackgroundColorToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :background_color, :string
  end
end
