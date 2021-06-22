class UsersController < ApplicationController
    def register
        # TODO: 例外処理を書く
        registered_user = User.create!(uuid: SecureRandom.uuid, name: params[:name])
        render json: { data: registered_user }
    end
end
