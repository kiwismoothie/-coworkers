class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user

  validates :content, presence: true
  after_create_commit -> { broadcast_append_to chatroom }
end
