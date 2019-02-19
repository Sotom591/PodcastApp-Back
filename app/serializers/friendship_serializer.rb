class FriendshipSerializer < ActiveModel::Serializer
  attributes :id, :user, :friend, :confirmed
end
