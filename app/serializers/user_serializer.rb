class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :lastName, :username, :avatar, :email, :friends, :friendships, :inverse_friendships, :pending_friendships, :friend_requests
  has_many :podcasts
  has_many :genres
  has_many :episode_posts
  has_many :podcast_posts

end
