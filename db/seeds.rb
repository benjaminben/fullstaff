# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Lesson.create(
  video_link: "https://www.youtube.com/embed/ue9Twt7PHm0",
  title: "real Fast",
  description: "so fast!!",
  )

Lesson.create(
  video_link: "https://www.youtube.com/embed/pMzbMJUPIoA",
  title: "BETCHA BETCH",
  description: "incredible. wow",
  )

Lesson.create(
  video_link: "https://www.youtube.com/embed/1eHZMv_XwF8",
  title: "OMFG where begin???",
  description: "Intro to Ableton Live for the n00bs & nubs",
  )

Lesson.create(
  video_link: "https://www.youtube.com/embed/GPPhmyBIi6k",
  title: "mic drums",
  description: "reverb did it first i know i know i know..."
  )

Lesson.create(
  video_link: "https://www.youtube.com/embed/gBsC1saQCFE",
  title: "how to synth",
  description: "how to synth"
  )

User.create(
  name: "First Guy",
  email: "first@guy.coo",
  password: "firstguy",
  handle: "firstguy"
  )
