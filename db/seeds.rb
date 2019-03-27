require 'faker'

User.destroy_all

jenny = User.create(firstName: "Jenny", lastName: "I", email:"jenny@qmail.com", username: "Jenny1", password: "pw", avatar: Faker::Avatar.image)
mike = User.create(firstName: "Mike", lastName: "K", email:"mike@qmail.com", username: "Mike1", password: "pw", avatar: Faker::Avatar.image)
beth = User.create(firstName: "Beth", lastName: "W", email:"beth@qmail.com", username: "Beth1", password: "pw", avatar: Faker::Avatar.image)
sean = User.create(firstName: "Sean", lastName: "S", email:"sean@qmail.com", username: "Sean1", password: "pw", avatar: Faker::Avatar.image)
marissa = User.create(firstName: "Marissa", lastName: "M", email:"marissa@qmail.com", username: "Marissa1", password: "pw", avatar: Faker::Avatar.image)

friend1 = Friendship.create(user_id: 1, friend_id: 2, confirmed: true)
friend2 = Friendship.create(user_id: 2, friend_id: 3, confirmed: true)
friend4 = Friendship.create(user_id: 3, friend_id: 4, confirmed: false)
friend3 = Friendship.create(user_id: 4, friend_id: 5, confirmed: true)

# ONLY Allowed to save Podcast ID in the backend per RapidAPI

#podcast_id here is the API ID
podcast1 = Podcast.create(podcast_id: "c3f4c4e9c0f64fe9a58b6a7fe8114582")
podcast2 = Podcast.create(podcast_id: "5590cb1318054bceb942564a4f067eb6")
podcast3 = Podcast.create(podcast_id: "da0716a7ca82435c81ae9534836da9c9")
podcast4 = Podcast.create(podcast_id: "b9721d03e791414aa885733391f5c01f")
podcast5 = Podcast.create(podcast_id: "8cb941141a7c434d945397cfd8b12e58")

#podcast_id is the foreign key ID from our backend API
sub1 = Subscription.create(user_id: 2, podcast_id: podcast1.id)
sub2 = Subscription.create(user_id: 2, podcast_id: podcast2.id)
sub3 = Subscription.create(user_id: 2, podcast_id: podcast4.id)
