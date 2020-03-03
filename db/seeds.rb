# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# WORKING!!!!! PRAISE THE LORD!!!
# 4.times do
#   stand = StandUp.new(
#     date: Time.now,
#     scrum_master: Faker::FunnyName.name,
#     pod_id: Faker::Number.number(digits: 8),
#   )
#   stand.save

#   Note.create!(
#     employee: stand.scrum_master,
#     kind: Faker::Number.within(range: 0..2),
#     body: Faker::TvShows::StrangerThings.quote,
#     stand_up_id: stand.id
#   )
# end

# 4.times do
#   stand = StandUp.new(
#     date: Time.now,
#     scrum_master: Faker::FunnyName.name,
#     pod_id: Faker::Number.number(digits: 8),
#   )
#   stand.save

#   Note.create!(
#     employee: Faker::TvShows::Community.characters,
#     kind: Faker::Number.within(range: 0..2),
#     body: Faker::TvShows::Community.quotes,
#     stand_up_id: stand.id
#   )
# end

# created Stand up with a single note for each (3) different employees
# 4.times do
#   stand = StandUp.new(
#     date: Time.now,
#     scrum_master: Faker::FunnyName.name,
#     pod_id: Faker::Number.number(digits: 8),
#   )
#   stand.save

#   3.times do
#     Note.create!(
#       employee: Faker::TvShows::Community.characters,
#       kind: Faker::Number.within(range: 0..2),
#       body: Faker::TvShows::Community.quotes,
#       stand_up_id: stand.id
#     )
#   end
# end
5.times do
stand = StandUp.new(
    date: Time.now,
    scrum_master: Faker::FunnyName.name,
    pod_id: Faker::Number.number(digits: 8),
  )
  stand.save

  3.times do
    Note.create!(
      employee: Faker::TvShows::NewGirl.character,
      # Faker::TvShows::Community.characters,
      kind: Faker::Number.within(range: 0..2),
      body: Faker::TvShows::NewGirl.quote
      # Faker::TvShows::Community.quotes,
      stand_up_id: stand.id
    )
  end
end