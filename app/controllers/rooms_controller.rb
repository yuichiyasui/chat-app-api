class RoomsController < ApplicationController
    def create
        room = Room.new(name: params[:name])
        room.save
    end

    def show
        rooms = Room.all
        render json: { data: rooms }
    end

    def fetch
        room = Room.find(params[:id])
        render json: { data: room }
    end
end
