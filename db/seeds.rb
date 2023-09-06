# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb
require 'faker'
# Seed Users
  user1 = User.create!(
    username: "john_doe",
    email: Faker::Internet.unique.email,
    password: "password123",
    first_name: "John",
    last_name: "Doe"
  )

  user2 = User.create!(
    username: "jane_smith",
    email: Faker::Internet.unique.email,
    password: "securepwd456",
    first_name: "Jane",
    last_name: "Smith"
)

# Seed Events
event1 = Event.create!(
  event_type: "Birthday",
  event_title: "John's Birthday Party",
  user: user1,
  event_description: "A fun birthday party for John.",
  from_datetime: DateTime.now + 1.week,
  to_datetime: DateTime.now + 1.week + 4.hours,
  event_location: "123 Main St, City"
)

event2 = Event.create!(
  event_type: "Wedding",
  event_title: "Jane and Mark's Wedding",
  user: user2,
  event_description: "A beautiful wedding ceremony.",
  from_datetime: DateTime.now + 2.weeks,
  to_datetime: DateTime.now + 2.weeks + 6.hours,
  event_location: "456 Elm St, Town"
)

# Seed Lists
list1 = List.create!(
  user: user1,
  list_type: "Guest List",
  envent_status: "Confirmed"
)

list2 = List.create!(
  user: user2,
  list_type: "Guest List",
  envent_status: "Pending"
)

# Associate Events with Lists
list1.events << event1
list2.events << event2
