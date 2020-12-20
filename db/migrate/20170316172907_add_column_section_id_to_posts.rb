# frozen_string_literal: true

class AddColumnSectionIdToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :section_id, :integer
  end
end
