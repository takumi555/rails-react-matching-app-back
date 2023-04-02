class ChatRoom < ApplicationRecord
  has_many :chat_room_users
  has_many :users, through: :chat_room_users  # chat_room_usersを介してusersを取得
end
