class Podcast < ApplicationRecord
  has_many :subscriptions
  has_many :podcast_posts
  has_many :episodes
end
