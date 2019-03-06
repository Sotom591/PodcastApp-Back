class AddParentIdToGenres < ActiveRecord::Migration[5.2]
  def change
    add_column :genres, :parent_id, :integer
  end
end
