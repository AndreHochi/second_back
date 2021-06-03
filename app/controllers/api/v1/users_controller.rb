class Api::V1::UsersController < ApplicationController

    skip_before_action :authorized, only: [:create]
    
    def create
        User.create(name: params[:name], password: params[:password])
    end

    def update
        user = current_user
        user.update(name: params[:name], password: params[:password])
        render json: {user: user}
    end

    def delete
        user = current_user
        user.destroy
    end

end
