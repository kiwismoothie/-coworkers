# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
Workspace.destroy_all

user1 = User.new(
  first_name: "Test1",
  last_name: "test1",
  email: "test1@test.com",
  password: "test123456"
)
user.save!
user2 = User.new(
  first_name: "Test2",
  last_name: "test2",
  email: "test2@test.com",
  password: "test123456"
)
user.save!
user3 = User.new(
  first_name: "Test3",
  last_name: "test3",
  email: "test3@test.com",
  password: "test123456"
)
user.save!
worspace1 = Workspace.new(
  ambiance:"calme",
  address:"rue de la paix",
)
