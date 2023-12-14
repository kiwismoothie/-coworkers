class Workspace < ApplicationRecord
  belongs_to :user
  has_many :bookings # bookings pour réserver un workspace
  has_many :bookmarks
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, presence: true
  validates :address, presence: true

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
