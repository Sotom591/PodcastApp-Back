require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

#Users (have a name, username, password, avatar, and emal)
User.create(
  name: 'Sean',
  username: 'sean2019',
  password: 'password',
  avatar: Faker::Avatar.image,
  email: 'sean@gmail.com'
)

User.create(
  name: 'Marissa',
  username: 'Sotom591',
  password: 'password',
  avatar: Faker::Avatar.image,
  email: 'marissa@gmail.com'
)

User.create(
  name: 'Mike',
  username: 'mkim4247',
  password: 'password',
  avatar: Faker::Avatar.image,
  email: 'mike@gmail.com'
)

User.create(
  name: 'Beth',
  username: 'bethwilson07',
  password: 'password',
  avatar: Faker::Avatar.image,
  email: 'beth@gmail.com'
)

User.create(
  name: 'Jenny',
  username: 'jennyjean8675309',
  password: 'password',
  avatar: Faker::Avatar.image,
  email: 'jenny@gmail.com'
)

50.times do
  User.create(
    name: Faker::FunnyName.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password(8, 16),
    avatar: Faker::Avatar.image,
    email: Faker::Internet.email
  )
