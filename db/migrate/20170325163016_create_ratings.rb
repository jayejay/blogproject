class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.integer :post_id
      t.integer :gameplay
      t.integer :graphics
      t.integer :sound
      t.integer :price_performance
      t.integer :total

      t.timestamps
    end
  end
end
