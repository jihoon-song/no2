# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(email: 'test@likelion.com', password: "12345678")

Post.create(user_id: 1 , title: 'This is a post title', content: "This is a post content")

Comment.create(user_id: 1, post_id: 1 , content: "This is a comment")