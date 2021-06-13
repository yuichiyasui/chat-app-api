class RoomsController < ApplicationController
    def show
        rooms = Room.all
        render json: { data: rooms }
    end

    def create
        room = Room.new(name: params[:name])
        room.save
    end
end
