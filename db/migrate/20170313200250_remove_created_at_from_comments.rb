# frozen_string_literal: true

class RemoveCreatedAtFromComments < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :created_at, :datetime
  end
end
