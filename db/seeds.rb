# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = Article.create([{ title: 'Star Wars', content: '1234567' }, { title: 'Film', content: '789456134' },
  { title: 'Star Wars', content: '1234567' }, { title: 'Film', content: '789456134' },
  { title: 'Star Wars', content: '1234567' }, { title: 'Film', content: '789456134' },
  { title: 'Star Wars', content: '1234567' }, { title: 'Film', content: '789456134' },
  { title: 'Star Wars', content: '1234567' }, { title: 'Film', content: '789456134' }])

u = User.create([{admin: 'true', username: 'user1', email: 'user1@email.com'},
  {admin: 'false', username: 'user2', email: 'user2@email.com'},
  {admin: 'false', username: 'user3', email: 'user3@email.com'}])
