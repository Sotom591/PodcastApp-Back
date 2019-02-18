class CreatePodcastPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :podcast_posts do |t|
      t.string :content
      t.integer :podcast_id
      t.integer :user_id
      t.timestamps
    end
  end
end
