class Episode < ApplicationRecord
  belongs_to :podcast
  has_many :episode_posts
end
