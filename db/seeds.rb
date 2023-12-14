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
  desired_skills: ["Entrepreneuriat", "Développement", "Marketing"],
  skills: ["Développement", "Entrepreneuriat"],
  description: "Je suis un développeur web fullstack, j'ai 28 ans et je suis passionné par le code et les nouvelles technologies. Je voudrais rencontrer d'autres développeurs apprendre de nouveaux langages ou partager mes connaissances.",
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
  desired_skills: ["Management","Comptabilité"],
  skills: ["Développement", "Recrutement", "Comptabilité"],
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
  skills: ["Marketing","Développement","Entrepreneuriat"],
  desired_skills: ["Consultant","Marketing","Entrepreneuriat"],
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
  skills: ["Développement","Entrepreneuriat","Marketing"],
  desired_skills: ["Rédacteur","Graphiste", "Entrepreneuriat"],
  linkedin_url: "https://www.linkedin.com/in/val%C3%A9rian-barreau-abb9a4250/",
  description: "Je suis responsable qualité dans le secteur de l'agroalimentaire, j'ai 28 ans et je suis passionné par la cuisine et la gastronomie. Je souhaite rencontrer des professionels de l'entreprenariat afin de valider une idée de projet.",
  email: "test4@test.com",
  password: "test123456"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701953712/Valerian_wcdbst.jpg")
Valerian.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
Valerian.save!

Cid = User.new(
  first_name: "Cid",
  last_name: "Martin",
  skills: ["freelance","graphisme"],
  description: "Graphiste depuis plus de 10 ans, je suis passionné par le design et la création.",
  email: "test5@test.com",
  password: "test123456"
)
file = URI.open("PHOTO A METTRE ICI")
Cid.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
Cid.save!

Isabelle = User.new(
  first_name: "Isabelle",
  last_name: "Jouanneau",
  skills: ["Coomptable"],
  description: "Comptable, j'aime travailler avec des gens et partager mon expérience.",
  email: "test6@test.com",
  password: "test123456"
)
file = URI.open("PHOTO A METTRE ICI")
Isabelle.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
Isabelle.save!

Justin = User.new(
  first_name: "Justin",
  last_name: "Bridou",
  skills: ["Réparateur"],
  description: "Je répare chez moi, j'ai un bureau de libre au calme",
  email: "test6@test.com",
  password: "test123456"
)
file = URI.open("PHOTO A METTRE ICI")
Justin.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
Justin.save!

Murielle = User.new(
  first_name: "Murielle",
  last_name: "Noel",
  skills: ["Assistante"],
  description: "Je suis assistante de direction",
  email: "test7@test.com",
  password: "test123456"
)
file = URI.open("PHOTO A METTRE ICI")
Murielle.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
Murielle.save!

workspace_cid = Workspace.new(
  parking: true,
  ambiance: "calme",
  address: "23 rue du sentier, Paris",
  user: Cid,
  internet_connexion: true,
  smoking: true,
  animals: "chat",
  description: "Un espace de travail calme et agréable au centre de Paris",
  capacity: 3,
  name: "Chez Cid"
)
file = URI.open("PHOTO DE BUREAU A METTRE ICI")
workspace_cid.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace_cid.save!

workspace_isabelle = Workspace.new(
  parking: false,
  ambiance: "animé",
  address: "8 rue du Niger, Paris",
  user: Isabelle,
  internet_connexion: true,
  smoking: true,
  animals: "non",
  description: "Bureau dans une petite cité au dernier étage d'un immeuble",
  air_conditioning: true,
  desired_skill: "comptabilité",
  capacity: 1,
  name: "Grand immeuble, petit bureau, grande vue"
)
file = URI.open("PHOTO DE BUREAU A METTRE ICI")
workspace_isabelle.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace_isabelle.save!

workspace_justin = Workspace.new(
  parking: false,
  ambiance: "calme",
  address: "2 boulevard Delessert, Paris",
  user: Justin,
  internet_connexion: false,
  smoking: false,
  animals: "chien",
  description: "Vue sur la tour Eiffel",
  capacity: 2,
  name: "Belle vue"
)
file = URI.open("PHOTO DE BUREAU A METTRE ICI")
workspace_justin.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace_justin.save!

workspace_murielle = Workspace.new(
  parking: true,
  ambiance: "animé",
  address: "9 avenue Montaigne, Paris",
  user: Murielle,
  internet_connexion: true,
  smoking: false,
  animals: "chien",
  description: "Sur les champs Elysées",
  capacity: 1,
  name: "Très bien situé"
)
file = URI.open("PHOTO DE BUREAU A METTRE ICI")
workspace_murielle.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace_murielle.save!

workspace1 = Workspace.new(
  parking: true,
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
  parking: true,
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
  name: "Bureau de la fête"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1702481482/bureau-e_pzjbmg.jpg")
workspace2.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace2.save!
workspace3 = Workspace.new(
  parking: false,
  ambiance: "Calme",
  address: "4 place Carnot, Lyon",
  user: Kevin,
  internet_connexion: true,
  description: "Une ambiance de travail studieuse, à la maison comme au bureau",
  smoking: false,
  animals: "autre",
  air_conditioning: true,
  desired_skill: "fullstack",
  capacity: 1,
  name: "Ici on travaille"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701785332/Coworkers/paris2.jpg")
workspace3.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace3.save!
workspace4 = Workspace.new(
  parking: true,
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
  name: "La maison de la biere"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701785332/Coworkers/nantes.jpg")
workspace4.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace4.save!
workspace5 = Workspace.new(
  parking: false,
  ambiance: "Animé",
  address: "4 rue Leconte de Lisle, Paris",
  description: "Un espace de travail animé. Venez avec votre bonne humeur !",
  user: Deborah,
  internet_connexion: true,
  smoking: false,
  animals: "chat",
  air_conditioning: true,
  desired_skill: "fullstack",
  capacity: 3,
  name: "La maison des chats"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1701785332/Coworkers/paris2.jpg")
workspace5.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace5.save!
workspace6 = Workspace.new(
  parking: true,
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
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1702481471/bureau-b_hgd6fv.jpg")
workspace6.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace6.save!
<<<<<<< HEAD



workspace7 = Workspace.new(
  ambiance: "Calme",
  address: "5 rue de belleville, Paris",
  user: Laura,
  description: "Dans le coeur du quartier de Belleville, un espace de travail calme et agréable",
  internet_connexion: true,
  smoking: true,
  air_conditioning: true,
  desired_skill: "fullstack",
  capacity: 2,
  name: "A Belleville"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1702481472/bureau-d_bbissx.png")
workspace7.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace7.save!



workspace8 = Workspace.new(
  ambiance: "Calme",
  address: "6 rue de vaugirard, Paris",
  user: Valerian,
  description: "Dans le coeur du quartier de Vaugirard, un espace de travail calme et agréable",
  internet_connexion: true,
  smoking: true,
  air_conditioning: true,
  desired_skill: "Marketing",
  capacity: 1,
  name: "Joli espace dans le 15ème"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1702481483/bureau-f_jxqrjb.jpg")
workspace8.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace8.save!


workspace9 = Workspace.new(
  ambiance: "Animé",
  address: "5 rue des petits carreaux, Paris",
  user: Valerian,
  description: "En plein coeur de Paris, un espace de travail animé. Venez avec votre bonne humeur !",
  internet_connexion: true,
  smoking: true,
  air_conditioning: true,
  desired_skill: "Marketing",
  capacity: 3,
  name: "Espace de travail dans le 2ème"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1702481471/bureau-c_q8fyxd.jpg")
workspace9.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace9.save!


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
=======
workspace7 = Workspace.new(
  ambiance: "Calme",
  address: "5 rue de belleville, Paris",
>>>>>>> f0faea48352b18f37ffb8b302688596fa3053752
  user: Laura,
  description: "Dans le coeur du quartier de Belleville, un espace de travail calme et agréable",
  internet_connexion: true,
  smoking: true,
  air_conditioning: true,
  desired_skill: "fullstack",
  capacity: 2,
  name: "A Belleville"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1702481472/bureau-d_bbissx.png")
workspace7.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace7.save!
workspace8 = Workspace.new(
  ambiance: "Calme",
  address: "6 rue de vaugirard, Paris",
  user: Valerian,
  description: "Dans le coeur du quartier de Vaugirard, un espace de travail calme et agréable",
  internet_connexion: true,
  smoking: true,
  air_conditioning: true,
  desired_skill: "Marketing",
  capacity: 1,
  name: "Joli espace dans le 15ème"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1702481483/bureau-f_jxqrjb.jpg")
workspace8.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace8.save!
workspace9 = Workspace.new(
  ambiance: "Animé",
  address: "5 rue des petits carreaux, Paris",
  user: Valerian,
  description: "En plein coeur de Paris, un espace de travail animé. Venez avec votre bonne humeur !",
  internet_connexion: true,
  smoking: true,
  air_conditioning: true,
  desired_skill: "Marketing",
  capacity: 3,
  name: "Espace de travail dans le 2ème"
)
file = URI.open("https://res.cloudinary.com/dpuyx30vh/image/upload/v1702481471/bureau-c_q8fyxd.jpg")
workspace9.photos.attach([{io: file, filename: "nes.jpg", content_type: "image/jpg"}])
workspace9.save!

chatroom1 = Chatroom.create!(user1_id: Kevin.id, user2_id: Deborah.id)
chatroom2 = Chatroom.create!(user1_id: Laura.id, user2_id: Valerian.id)

# Création de messages fictifs pour la première chatroom
Message.create!(chatroom_id: chatroom1.id, user_id: Kevin.id, content: "Salut, comment ça va ?")
Message.create!(chatroom_id: chatroom1.id, user_id: Deborah.id, content: "Ça va bien, merci ! Et toi ?")

# Création de messages fictifs pour la deuxième chatroom
Message.create!(chatroom_id: chatroom2.id, user_id: Laura.id, content: "Hello ! On se voit demain ?")
Message.create!(chatroom_id: chatroom2.id, user_id: Valerian.id, content: "Oui, à quelle heure ?")
