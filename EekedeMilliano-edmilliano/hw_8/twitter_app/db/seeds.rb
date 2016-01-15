puts "Adding a Whole bunch of users, tweets and hashtags"

User.create [
	{
		name: "fluffy_cat", 
		premium_member: 0
	},
	{
		name: "eekedm", 
		premium_member: 1
	},
	{
		name: "panda576", 
		premium_member: 1
	},
	{
		name: "wolverine", 
		premium_member: 0
	}]

Hashtag.create [
	{
		name: "#cats"
	},
	{
		name: "#fail"
	},
	{
		name: "#nofilter"
	},
	{
		name: "#soml"
	}]

Tweet.create [
	{
		text: "Twitter releases Buy Now Button"
	},
	{
		text: "Click here for Obama's final SOTU"
	},
	{
		text: "Top 52 places to visit in 2016"
	},
	{
		text: "I'm so fluffy!"
	}]