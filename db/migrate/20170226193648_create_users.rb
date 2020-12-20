# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :nick_name
      t.string :activation_key
      t.string :status
      t.boolean :admin
      t.boolean :moderator
      t.timestamps
    end

    add_index :users, :nick_name
    add_index :users, :activation_key
  end
end
