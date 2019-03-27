class CreatePodcasts < ActiveRecord::Migration[5.2]
  def change
    create_table :podcasts do |t|
      t.string :title
      t.string :podcast_id
      t.timestamps
    end
  end
end
