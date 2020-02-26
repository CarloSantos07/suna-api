# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# WORKING!!!!! PRAISE THE LORD!!!
4.times do
  stand = StandUp.new(
    date: Time.now,
    scrum_master: Faker::FunnyName.name,
    pod_id: Faker::Number.number(digits: 8),
  )
  stand.save

  Note.create!(
    employee: stand.scrum_master,
    kind: Faker::Number.within(range: 0..2),
    body: Faker::TvShows::StrangerThings.quote,
    stand_up_id: stand.id
  )
end