class AddColumnTextColorToTags < ActiveRecord::Migration[5.0]
  def change
    add_column :tags, :text_color, :string
  end
end
