class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user1_chatrooms, class_name: "Chatroom", foreign_key: :user1_id
  has_many :user2_chatrooms, class_name: "Chatroom", foreign_key: :user2_id
  has_many :messages
  has_many :bookmarks
  has_many :workspaces # mes workspaces
  has_many :favorites_workspaces, through: :bookmarks, source: :workspaces
  has_many :bookings_workspaces, through: :workspaces, source: :bookings # bookings que j'ai reçus pour mes workspaces
  has_many :bookings # les bookings que j'ai fait
  has_many_attached :photos

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  scope :all_except, ->(user) { where.not(id: user.id) }
  after_create_commit -> { broadcast_append_to "users" }
end
