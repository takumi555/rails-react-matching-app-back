class Api::V1::MessagesController < ApplicationController
  def create
    message = message.new(message_params)

    if message.save
      render json: { status: 200, message: message }
    else
      # messageではない方がいいかも?error_messageなど
      render json: { status: 500, message: '作成に失敗しました' }
    end
  end

  private
  
  def message_params
    pparams.permit(:chat_room_id, :user_id, :content)
  end
end
