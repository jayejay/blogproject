# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.string :author_name
      t.string :author_email
      t.text :content
      t.string :author_ip
      t.datetime :created_at
      t.boolean :approved
      t.integer :parent_id
      t.integer :user_id

      t.timestamps
    end
  end
end
