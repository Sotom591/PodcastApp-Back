class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.integer :podcast_id
      t.integer :episode_post_id
      t.string :name
      t.timestamps
    end
  end
end
