class AddCategoryIdToGenres < ActiveRecord::Migration[5.2]
  def change
    add_column :genres, :category_id, :integer
  end
end
