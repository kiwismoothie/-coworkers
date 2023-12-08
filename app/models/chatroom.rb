class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :user1, class_name: "User"
  belongs_to :user2, class_name: "User"
  after_create_commit -> { broadcast_append_to "chatrooms" }
end
