# frozen_string_literal: true

class AddColumnFunctionToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :function, :string
  end
end
