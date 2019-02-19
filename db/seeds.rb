

jenny = User.create(firstName: "Jenny", lastName: "I", email:"jenny@qmail.com", username: "Jenny1", password: "pw")
mike = User.create(firstName: "Mike", lastName: "K", email:"mike@qmail.com", username: "Mike1", password: "pw")
beth = User.create(firstName: "Beth", lastName: "W", email:"beth@qmail.com", username: "Beth1", password: "pw")
sean = User.create(firstName: "Sean", lastName: "S", email:"sean@qmail.com", username: "Sean1", password: "pw")
marissa = User.create(firstName: "Marissa", lastName: "M", email:"marissa@qmail.com", username: "Marissa1", password: "pw")

friend1 = Friendship.create(user_id: 1, friend_id: 2, confirmed: true)
friend2 = Friendship.create(user_id: 2, friend_id: 3, confirmed: true)
friend4 = Friendship.create(user_id: 3, friend_id: 4, confirmed: false)
friend3 = Friendship.create(user_id: 4, friend_id: 5, confirmed: true)
