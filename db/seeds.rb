# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Bookmark.destroy_all
Booking.destroy_all
Workspace.destroy_all
User.destroy_all

Kevin = User.new(
  first_name: "Kevin",
  last_name: "Falck",
  email: "test1@test.com",
  password: "test123456"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701953711/Kevin_nlbsrz.jpg")
Kevin.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
Kevin.save!

Deborah = User.new(
  first_name: "Deborah",
  last_name: "Morchipont",
  email: "test2@test.com",
  password: "test123456"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701953712/Deborah_och7ml.jpg")
Deborah.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
Deborah.save!


Laura = User.new(
  first_name: "Laura",
  last_name: "Berretta",
  email: "test3@test.com",
  password: "test123456"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701953712/Laura_okhnel.jpg")
Laura.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
Laura.save!


Valerian = User.new(
  first_name: "Valérian",
  last_name: "Barreau",
  email: "test4@test.com",
  password: "test123456"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701953712/Valerian_wcdbst.jpg")
Valerian.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
Valerian.save!

workspace1 = Workspace.new(
  ambiance: "Calme",
  address: "Paris",
  user: Kevin,
  internet_connexion: true,
  smoking: false,
  animals: "chien",
  air_conditioning: true,
  desired_skill: "fullstack",
  capacity: 1,
  name: "Office parisien"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701785333/Coworkers/toulouse.jpg")
workspace1.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace1.save!

workspace2 = Workspace.new(
  ambiance: "Festive",
  address: "2 avenue Charles de gaulle, Toulouse",
  user: Kevin,
  internet_connexion: true,
  smoking: false,
  animals: "chien",
  air_conditioning: true,
  desired_skill: "fullstack",
  capacity: 1,
  name: "Tout pour la fete"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701785333/Coworkers/toulouse.jpg")
workspace2.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace2.save!

workspace3 = Workspace.new(
  ambiance: "Bureau",
  address: "4 place Carnot, Lyon",
  user: Kevin,
  internet_connexion: true,
  smoking: false,
  animals: "chien",
  air_conditioning: true,
  desired_skill: "fullstack",
  capacity: 1,
  name: "Ici on travaille"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701785332/Coworkers/paris2.jpg")
workspace3.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace3.save!


workspace4 = Workspace.new(
  ambiance: "Apéro",
  address: "3 Rue de la soif, Nantes",
  user: Valerian,
  internet_connexion: true,
  smoking: false,
  animals: "chien",
  air_conditioning: true,
  desired_skill: "fullstack",
  capacity: 1,
  name: "A maison de la biere"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701785332/Coworkers/nantes.jpg")
workspace4.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace4.save!

workspace5 = Workspace.new(
  ambiance: "Bruyant",
  address: "4 rue Leconte de Lisle, Paris",
  user: Deborah,
  internet_connexion: true,
  smoking: false,
  animals: "chien",
  air_conditioning: true,
  desired_skill: "fullstack",
  capacity: 1,
  name: "La maison des chiens"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701785332/Coworkers/paris2.jpg")
workspace5.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace5.save!

workspace6 = Workspace.new(
  ambiance: "calme",
  address: "2 route de la reine, Versailles",
  user: Laura,
  internet_connexion: true,
  smoking: true,
  animals: "chien",
  air_conditioning: true,
  desired_skill: "fullstack",
  capacity: 2,
  name: "La maison du bonheur"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701785332/Coworkers/paris2.jpg")
workspace6.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace6.save!

booking1 = Booking.new(
  workspace: workspace3,
  user: Kevin,
  rating: 5,
  start_date: "Thu, 30 Nov 2023",
  end_date: "Tue, 12 Dec 2023",
  status: "accepted"
)
booking1.save!

booking2 = Booking.new(
  workspace: workspace6,
  user: Valerian,
  rating: 5,
  start_date: "Thu, 30 Nov 2023",
  end_date: "Tue, 12 Dec 2023",
  status: "accepted"
)
booking2.save!

booking3 = Booking.new(
  workspace: workspace2,
  user: Deborah,
  rating: 5,
  start_date: "Thu, 30 Nov 2023",
  end_date: "Tue, 12 Dec 2023",
  status: "accepted"
)
booking3.save!

booking4 = Booking.new(
  workspace: workspace1,
  user: Laura,
  rating: 5,
  start_date: "Thu, 30 Nov 2023",
  end_date: "Tue, 12 Dec 2023",
  status: "accepted"
)
booking4.save!
