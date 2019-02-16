class User < ApplicationRecord
  has_many :episode_posts
  has_many :podcast_posts
  has_many :podcasts, through: :podcast_posts
  has_many :subscriptions
  has_many :podcasts, through: :subscriptions
  has_many :user_genres
  has_many :genres, through: :user_genres
  ###pragma mark: Friends
  ###(we can delete this comment after replacing Friends Model on master branch)
  ###Because friendships will have equal weight, friendships will connect with inverse_friendships
  has_many :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"

  # Once friends confirmed, return all users who are connected to the given user
  def friends
    friends_array = friendships.map{ |friendship|
      friendship.friend if friendship.confirmed
     }

     friends_array += inverse_friendships.map{ |friendship|
       frienship.user if friendship.confirmed
     }
     friends_array.compact
  end

  # Users who stil need to confirm a friend request
  def pending_friendships
    friendships.map{ |frienship|
      friendship.friend if !friendshi.confirmed
    }.compact
  end

  # Users who have requested other users as friendshi
  def friend_requests
    inverse_friendships.map{|friendship|
      if !friendship.confirmed
    }.compact
  end

  # Confirming friend request method
  def confirm_friend(user)
    friendship = inverse_friendships.find{ |friendship|
      friendship.user == user
    }
    friendship.confirmed = true
    friendship.save
  end

  # Given another user, checks to see if that user is friend
  def friend?(user)
    friends.include?(user)
  end

end
