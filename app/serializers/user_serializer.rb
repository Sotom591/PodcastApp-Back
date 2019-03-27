class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :lastName, :username, :avatar, :email, :friends, :friendships, :inverse_friendships, :pending_friendships, :friend_requests
  has_many :podcasts
  has_many :genres
  has_many :episode_posts
  has_many :podcast_posts

  # Creating Custom Serializer to get to User's Podcast 3rd-Party API ID's
  # Otherwise, have to go through User.podcasts to get array of Backend Podcast Objects then get each of their API ID's, so do work here instead of frontend

  def podcasts
    object.podcasts.map do |podcast|
      PodcastSerializer.new(podcast)
    end
  end

end
