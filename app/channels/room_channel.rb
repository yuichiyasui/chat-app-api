class RoomChannel < ApplicationCable::Channel

  def subscribed
    stream_from "room_#{params[:id]}"
    logger.info "ルームID:#{params[:id]}の購読が開始されました"
    enter(params[:uuid])
  end

  def enter(uuid)
    user = User.find_by(uuid: uuid)
    res = { 
      "type": "notification",
      "message": "#{user.name}さんが入室しました", 
      "createdAt": Time.now
    }
    ActionCable.server.broadcast "room_#{params[:id]}", res
  end

  def submit(data)
    user = User.find_by(uuid: params[:uuid])
    res = { 
      "type": "message",
      "name": user.name,
      "userId": user.id,
      "message": data["message"],
      "createdAt": Time.now
    }
    ActionCable.server.broadcast "room_#{params[:id]}", res
  end

  def unsubscribed
    logger.info "ルームID:#{params[:id]}の購読が終了されました"
  end
end
