class CreateEpisodePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :episode_posts do |t|

      t.timestamps
    end
  end
end
