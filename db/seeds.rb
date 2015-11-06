# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Lesson.delete_all
User.delete_all

admin = User.create(
  name: "Admin",
  email: "admin@fullstaff.io",
  password: "admin",
  handle: "admin"
  )

u1 = User.create(
  name: "First Guy",
  email: "first@guy.coo",
  password: "firstguy",
  handle: "firstguy",
  avatar: ""
  )

u2 = User.create(
  name: "Redfox",
  email: "redfox@gmail.com",
  password: "redfox",
  handle: "redfox",
  avatar: "https://i.imgur.com/h8kZ2NL.jpg"
  )

bearman = User.create(
  name: "Bear Man",
  email: "bearman@bearman.ban",
  password: "bearman",
  handle: "bearman",
  avatar: "http://coolwildlife.com/wp-content/uploads/galleries/post-1593/Brown%20Bear%20Picture%20001.jpg"
  )

u3 = User.create(
  name: "Z$chory",
  email: "zach@munny.com",
  password: "zachmunny",
  handle: "$zach$",
  avatar: "http://vignette4.wikia.nocookie.net/villains/images/7/78/Illuminati-Logo.png/revision/latest?cb=20150529234113"
  )

u3.uploads.create(
  video_link: "https://www.youtube.com/embed/2bU5oA4Kkss",
  title: "Metro",
  description: "Crazy ish y'all. Focus on the groovular impact of different frequencies playing at different times"
  )

u1.uploads.create(
  video_link: "https://www.youtube.com/embed/1eHZMv_XwF8",
  title: "Where to begin???",
  description: "Intro to Ableton Live for the n00bs & nubs"
  )

u1.uploads.create(
  video_link: "https://www.youtube.com/embed/ue9Twt7PHm0",
  title: "Real Fast",
  description: "so fast!!"
  )

u2.uploads.create(
  video_link: "https://www.youtube.com/embed/GPPhmyBIi6k",
  title: "mic drums",
  description: "reverb did it first i know i know i know..."
  )

u2.uploads.create(
  video_link: "https://www.youtube.com/embed/gBsC1saQCFE",
  title: "how to synth",
  description: "how to synth"
  )

u3.uploads.create(
  video_link: "https://www.youtube.com/embed/tzJ6oCgA1uY",
  title: "how to make a beat",
  description: "make beats!"
  )

bearman.uploads.create(
  video_link: "https://www.youtube.com/embed/RuV3YMEhAB8",
  title: "BEARS",
  description: "YAY BEARS!!"
  )

u3.uploads.create(
  video_link: "https://www.youtube.com/embed/lGDCoU9vKJU",
  title: "Mixing Hip-Hop Vocals",
  description: "Uuuuuuhhhhhhh yea how to mix hip-hop vocals ^^^"
  )
