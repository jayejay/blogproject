# frozen_string_literal: true

class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.string :name
    end
  end
end
