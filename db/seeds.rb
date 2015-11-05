# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Lesson.delete_all
User.delete_all

u = User.create(
  name: "First Guy",
  email: "first@guy.coo",
  password: "firstguy",
  handle: "firstguy"
  )

u.uploads.create(
  video_link: "https://www.youtube.com/embed/ue9Twt7PHm0",
  title: "real Fast",
  description: "so fast!!",
  )

u.uploads.create(
  video_link: "https://www.youtube.com/embed/pMzbMJUPIoA",
  title: "BETCHA BETCH",
  description: "incredible. wow",
  )

u.uploads.create(
  video_link: "https://www.youtube.com/embed/1eHZMv_XwF8",
  title: "OMFG where begin???",
  description: "Intro to Ableton Live for the n00bs & nubs",
  )

u.uploads.create(
  video_link: "https://www.youtube.com/embed/GPPhmyBIi6k",
  title: "mic drums",
  description: "reverb did it first i know i know i know..."
  )

u.uploads.create(
  video_link: "https://www.youtube.com/embed/gBsC1saQCFE",
  title: "how to synth",
  description: "how to synth"
  )

u.uploads.create(
  video_link: "https://www.youtube.com/embed/tzJ6oCgA1uY",
  title: "how to make a beat",
  description: "make beats!"
  )
