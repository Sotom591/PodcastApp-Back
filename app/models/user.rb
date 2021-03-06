class User < ApplicationRecord
  has_secure_password
  has_many :episode_posts
  has_many :podcast_posts
  has_many :subscriptions
  has_many :podcasts, through: :subscriptions
  has_many :user_genres
  has_many :genres, through: :user_genres
  has_many :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"

  #remember to add in password validations towards the end of production
  validates :username, :uniqueness => {:case_sensitive => false}



  # Once friends confirmed, return all users who are connected to the given user
  def friends
    friends_array = friendships.map{ |friendship|
      friendship.friend if friendship.confirmed
     }

     friends_array += inverse_friendships.map{ |friendship|
       friendship.user if friendship.confirmed
     }
     friends_array.compact
  end

  # Users who stil need to confirm a friend request
  def pending_friendships
    friendships.map{ |friendship|
      friendship.friend if !friendship.confirmed
    }.compact
  end

  # Users who have requested other users as friends
  def friend_requests
    inverse_friendships.select { |friendship|
      !friendship.confirmed
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
