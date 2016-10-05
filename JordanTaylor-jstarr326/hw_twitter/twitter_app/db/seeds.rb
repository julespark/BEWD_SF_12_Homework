# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create name: "jstarr", premium_member: 0
Tweet.create text: "What up World"
Hashtag.create name: "sup"
User.create name: "annelies", premium_member: 1
Tweet.create text: "go warriors"
Hashtag.create name: "chefcurry"
User.create name: "phil", premium_member: 0
Tweet.create text: "tahoe is sick"
Hashtag.create name: "ski"


