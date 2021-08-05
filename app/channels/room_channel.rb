class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_#{params[:id]}"
  end

  def enter
    broadcast_to('message', 'テストさんが入室しました')
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
