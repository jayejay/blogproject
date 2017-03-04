class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :image_url
      t.integer :tag_id
      t.integer :author_id
      t.datetime :published_at
      t.datetime :created_at
      t.datetime :last_edit_at
      t.timestamps
    end
  end
end
