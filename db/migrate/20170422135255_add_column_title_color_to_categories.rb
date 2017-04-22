class AddColumnTitleColorToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :title_color, :string
  end
end
