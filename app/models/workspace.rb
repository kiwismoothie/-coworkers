class Workspace < ApplicationRecord
  belongs_to :user
  has_many :bookings # bookings pour réserver un workspace
  has_many :bookmarks
  has_many_attached :photos
  # mapbox
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  # validation
  validates :name, presence: true
  validates :address, presence: true
  # validates :capacity, presence: true
  # validates :internet_connexion, inclusion: [true, false]
  # # validates :internet_connexion, presence: true
  # # validates :smoking, presence: true
  # validates :smoking, inclusion: [true, false]
  # validates :animals, presence: true
  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :address, :name ],
  associated_against: {
  user: [ :first_name, :last_name ]
  },
  using: {
    tsearch: { prefix: true }
  }
end

# has_many :bookings_users, through: :workspaces, source: :bookings
# has_many :bookmarks_workspaces, through: :bookmarks, source: :workspaces #  retourne les workspaces favoris
# has_many :bookmarks_workspaces, through: :bookmarks, source: :workspaces #  retourne les workspaces favoris
# has_many :favorites_users, through: :bookmarks, source: :user
