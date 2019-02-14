class CreatePodcastPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :podcast_posts do |t|
      t.integer :user_id
      t.integer :podcast_id
      t.string :content
      t.timestamps
    end
  end
end
