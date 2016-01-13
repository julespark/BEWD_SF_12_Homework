# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "just setting up my twttr"

User.create(name: "@jack", premium_member: 1)
User.create(name: "@biz", premium_member: 1)
User.create(name: "@noah", premium_member: 1)
User.create(name: "@ev", premium_member: 1)

Tweet.create(text: "just setting up my twttr")
Tweet.create(text: "inviting coworkers")
Tweet.create(text: "getting my odeo folks on this deal")
Tweet.create(text: "oh this is going to be addictive")

Hashtag.create(name: "#JeSuisParis")
Hashtag.create(name: "#BlackLivesMatter")
Hashtag.create(name: "#LoveWins")
Hashtag.create(name: "#Election2016")