class AddColumnTextColorToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :text_color, :string
  end
end
