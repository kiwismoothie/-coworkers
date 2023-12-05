# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Booking.destroy_all
Workspace.destroy_all
User.destroy_all

user1 = User.new(
  first_name: "kevin",
  last_name: "falck",
  email: "test1@test.com",
  password: "test123456"
)
user1.save!

user2 = User.new(
  first_name: "debora",
  last_name: "morchipont",
  email: "test2@test.com",
  password: "test123456"
)
user2.save!

user3 = User.new(
  first_name: "laura",
  last_name: "berretta",
  email: "test3@test.com",
  password: "test123456"
)
user3.save!

workspace1 = Workspace.new(
  ambiance: "calme",
  address: "paris",
  user: user1,
  internet_connexion: true,
  smoking: false,
  animals: "chien",
  air_conditioning: true,
  desired_skill: "fullstack",
  capacity: 1,
  name: "office parisien"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701785333/Coworkers/toulouse.jpg")
workspace1.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace1.save!

workspace2 = Workspace.new(
  ambiance: "festif",
  address: "toulouse",
  user: user1,
  internet_connexion: true,
  smoking: false,
  animals: "chien",
  air_conditioning: true,
  desired_skill: "fullstack",
  capacity: 1,
  name: "tout pour la fete"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701785333/Coworkers/toulouse.jpg")
workspace2.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace2.save!

workspace3 = Workspace.new(
  ambiance: "bureau",
  address: "lyon",
  user: user1,
  internet_connexion: true,
  smoking: false,
  animals: "chien",
  air_conditioning: true,
  desired_skill: "fullstack",
  capacity: 1,
  name: "ici on travaille"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701785332/Coworkers/paris2.jpg")
workspace3.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace3.save!

workspace4 = Workspace.new(
  ambiance: "appero",
  address: "nantes",
  user: user1,
  internet_connexion: true,
  smoking: false,
  animals: "chien",
  air_conditioning: true,
  desired_skill: "fullstack",
  capacity: 1,
  name: "a maison de la biere"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701785332/Coworkers/nantes.jpg")
workspace4.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace4.save!

workspace5 = Workspace.new(
  ambiance: "bruyant",
  address: "paris",
  user: user2,
  internet_connexion: true,
  smoking: false,
  animals: "chien",
  air_conditioning: true,
  desired_skill: "fullstack",
  capacity: 1,
  name: "workspace5"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701785332/Coworkers/paris2.jpg")
workspace5.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace5.save!

workspace6 = Workspace.new(
  ambiance: "calme",
  address: "versaille",
  user: user2,
  internet_connexion: true,
  smoking: true,
  animals: "chien",
  air_conditioning: true,
  desired_skill: "fullstack",
  capacity: 2,
  name: "la maison du bonheur"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701785332/Coworkers/paris2.jpg")
workspace6.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace6.save!

booking1 = Booking.new(
  workspace: workspace3,
  user: user1,
  rating: 5,
  start_date: "Thu, 30 Nov 2023",
  end_date: "Tue, 12 Dec 2023",
  status: "accepted"
)
booking1.save!

booking2 = Booking.new(
  workspace: workspace6,
  user: user1,
  rating: 5,
  start_date: "Thu, 30 Nov 2023",
  end_date: "Tue, 12 Dec 2023",
  status: "accepted"
)
booking2.save!

booking3 = Booking.new(
  workspace: workspace2,
  user: user2,
  rating: 5,
  start_date: "Thu, 30 Nov 2023",
  end_date: "Tue, 12 Dec 2023",
  status: "accepted"
)
booking3.save!

booking4 = Booking.new(
  workspace: workspace1,
  user: user3,
  rating: 5,
  start_date: "Thu, 30 Nov 2023",
  end_date: "Tue, 12 Dec 2023",
  status: "accepted"
)
booking4.save!
