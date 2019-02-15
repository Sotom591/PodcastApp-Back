class User < ApplicationRecord
  has_many :friends
  has_many :episode_posts
  has_many :podcast_posts
  has_many :podcasts, through: :podcast_posts
  has_many :subscriptions
  has_many :podcasts, through: :subscriptions
  has_many :user_genres
  has_many :genres, through: :user_genres
end
