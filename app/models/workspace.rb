class Workspace < ApplicationRecord
  belongs_to :user
  has_many :bookmarks
  has_many :bookings
  has_many :favorites_users, through: :bookmarks, source: :user
  has_many :bookings_users, through: :bookings, source: :user
  has_many_attached :photos

  validates :name, presence: true
  validates :address, presence: true
  validates :capacity, presence: true
  validates :internet_connexion, inclusion: [true, false]
  # validates :internet_connexion, presence: true
  # validates :smoking, presence: true
  validates :smoking, inclusion: [true, false]
  validates :animals, presence: true
end
