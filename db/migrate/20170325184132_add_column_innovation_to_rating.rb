class AddColumnInnovationToRating < ActiveRecord::Migration[5.0]
  def change
    add_column :ratings, :innovation, :integer
  end
end
