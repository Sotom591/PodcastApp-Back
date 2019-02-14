class CreatePodcastPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :podcast_posts do |t|

      t.timestamps
    end
  end
end
