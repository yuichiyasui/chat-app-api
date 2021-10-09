class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_#{params[:id]}"
    puts "ルームID:#{params[:id]}が購読されました"
    enter
  end

  def enter
    user = User.find_by(uuid: params[:uuid])
    ActionCable.server.broadcast "room_#{params[:id]}", "#{user.name}さんが入室しました"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
