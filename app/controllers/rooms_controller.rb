class RoomsController < ApplicationController
    def show
        rooms = Room.all
        render json: { data: rooms }
    end
end
