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
Message.destroy_all
Chatroom.destroy_all
Booking.destroy_all
Workspace.destroy_all
User.destroy_all

Kevin = User.new(
  first_name: "Kevin",
  last_name: "Falck",
  desired_skills: ["entrepreneuriat", "react"],
  description: "Je suis un développeur web fullstack, j'ai 32 ans et je suis passionné par le code et les nouvelles technologies. Je voudrais rencontrer d'autres développeurs apprendre de nouveaux langages et partager mes connaissances.",
  email: "test1@test.com",
  linkedin_url: "https://www.linkedin.com/in/k%C3%A9vin-falck-b03672296/",
  password: "test123456"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701953711/Kevin_nlbsrz.jpg")
Kevin.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
Kevin.save!

Deborah = User.new(
  first_name: "Deborah",
  last_name: "Morchipont",
  desired_skills: ["management","recrutement","paie"],
  skills: ["ressources humaines","recrutement","paie"],
  description: "Je suis responsable des ressources humaines, passionnée par le recrutement et la paie. Je souhaite rencontrer d'autres professionnels RH pour échanger sur nos pratiques et nos expériences.",
  email: "test2@test.com",
  password: "test123456"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701953712/Deborah_och7ml.jpg")
Deborah.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
Deborah.save!


Laura = User.new(
  first_name: "Laura",
  last_name: "Berretta",
  skills: ["e-commerce","marketing","entrepreneuriat"],
  desired_skills: ["e-commerce","marketing","communication"],
  linkedin_url: "https://www.linkedin.com/in/laura-berretta/",
  description: "Je suis directrice commerciale en e-commerce, j'ai 38 ans et je suis passionnée par l'écriture, le théatre... et la création d'entreprise. Je souhaite rencontrer d'autres professionnels du e-commerce pour échanger sur nos pratiques et nos expériences.",
  email: "test3@test.com",
  password: "test123456"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701953712/Laura_okhnel.jpg")
Laura.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
Laura.save!


Valerian = User.new(
  first_name: "Valérian",
  last_name: "Barreau",
  skills: ["qualité","agroalimentaire","cuisine"],
  desired_skills: ["nucléaire","qualité"],
  linkedin_url: "https://www.linkedin.com/in/val%C3%A9rian-barreau-abb9a4250/",
  description: "Je suis responsable qualité dans le secteur de l'agroalimentaire, j'ai 28 ans et je suis passionné par la cuisine et la gastronomie. Je souhaite rencontrer des professionels dans le secteur du nucléaire afin de valider une idée de projet.",
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
  animals: "chat",
  description: "Un espace de travail calme et agréable",
  air_conditioning: true,
  desired_skill: "fullstack",
  capacity: 1,
  name: "Office parisien"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701785333/Coworkers/toulouse.jpg")
workspace1.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace1.save!

workspace2 = Workspace.new(
  ambiance: "Animé",
  address: "2 avenue Charles de gaulle, Toulouse",
  user: Kevin,
  internet_connexion: true,
  description: "Ici on bosse dans un esprit de fiesta ! Venez avec votre bonne humeur !",
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
  ambiance: "Calme",
  address: "4 place Carnot, Lyon",
  user: Kevin,
  internet_connexion: true,
  description: "Une ambiance de travail studieuse, à la maison comme au bureau",
  smoking: false,
  animals: "tortue",
  air_conditioning: true,
  desired_skill: "fullstack",
  capacity: 1,
  name: "Ici on travaille"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701785332/Coworkers/paris2.jpg")
workspace3.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace3.save!


workspace4 = Workspace.new(
  ambiance: "Animé",
  address: "3 Rue de la soif, Nantes",
  description: "Pas de travail sans apéro !",
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
  ambiance: "Animé",
  address: "4 rue Leconte de Lisle, Paris",
  description: "Un espace de travail animé. Venez avec votre bonne humeur !",
  user: Deborah,
  internet_connexion: true,
  smoking: false,
  animals: "chat",
  air_conditioning: true,
  desired_skill: "fullstack",
  capacity: 1,
  name: "La maison des chiens"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701785332/Coworkers/paris2.jpg")
workspace5.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace5.save!

workspace6 = Workspace.new(
  ambiance: "Calme",
  address: "2 route de la reine, Versailles",
  user: Laura,
  description: "Un espace de travail calme et agréable",
  internet_connexion: true,
  smoking: true,
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
  status: "en cours"
)
booking1.save!

booking2 = Booking.new(
  workspace: workspace6,
  user: Valerian,
  rating: 5,
  start_date: "Thu, 30 Nov 2023",
  end_date: "Tue, 12 Dec 2023",
  status: "acceptée"
)
booking2.save!

booking3 = Booking.new(
  workspace: workspace2,
  user: Deborah,
  rating: 5,
  start_date: "Thu, 30 Nov 2023",
  end_date: "Tue, 12 Dec 2023",
  status: "en cours"
)
booking3.save!

booking4 = Booking.new(
  workspace: workspace1,
  user: Laura,
  rating: 5,
  start_date: "Thu, 30 Nov 2023",
  end_date: "Tue, 12 Dec 2023",
  status: "acceptée"
)
booking4.save!

chatroom1 = Chatroom.create!(user1_id: Kevin.id, user2_id: Deborah.id)
chatroom2 = Chatroom.create!(user1_id: Laura.id, user2_id: Valerian.id)

# Création de messages fictifs pour la première chatroom
Message.create!(chatroom_id: chatroom1.id, user_id: Kevin.id, content: "Salut, comment ça va ?")
Message.create!(chatroom_id: chatroom1.id, user_id: Deborah.id, content: "Ça va bien, merci ! Et toi ?")

# Création de messages fictifs pour la deuxième chatroom
Message.create!(chatroom_id: chatroom2.id, user_id: Laura.id, content: "Hello ! On se voit demain ?")
Message.create!(chatroom_id: chatroom2.id, user_id: Valerian.id, content: "Oui, à quelle heure ?")
