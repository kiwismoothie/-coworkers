class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user1_chatrooms, class_name: "Chatroom", foreign_key: :user1_id
  has_many :user2_chatrooms, class_name: "Chatroom", foreign_key: :user2_id
  has_many :messages
  has_many :bookmarks
  has_many :workspaces
  has_many :favorites_workspaces, through: :bookmarks, source: :workspace
  has_many :bookings_workspaces, through: :bookings, source: :workspace
  has_many :bookings

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :avatar, presence: true

end
