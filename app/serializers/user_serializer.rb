class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :lastName :username, :avatar, :email
  has_many :podcasts
  has_many :genres
  has_many :friends
  has_many :episode_posts
  has_many :podcast_posts

end
