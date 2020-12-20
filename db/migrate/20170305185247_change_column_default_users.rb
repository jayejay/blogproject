# frozen_string_literal: true

class ChangeColumnDefaultUsers < ActiveRecord::Migration[5.0]
  def change
    change_column_default :users, :admin, false
    change_column_default :users, :moderator, false
  end
end
