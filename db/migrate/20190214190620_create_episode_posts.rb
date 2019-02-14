class CreateEpisodePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :episode_posts do |t|
      t.integer :episode_id
      t.integer :user_id
      t.string :content
      t.timestamps
    end
  end
end
