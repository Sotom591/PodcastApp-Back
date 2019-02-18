class CreateEpisodePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :episode_posts do |t|
      t.string :content
      t.integer :episode_id
      t.integer :user_id
      t.timestamps
    end
  end
end
