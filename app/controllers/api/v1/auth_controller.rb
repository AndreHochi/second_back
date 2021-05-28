class Api::V1::AuthController < ApplicationController
    
    skip_before_action :authorized, only: [:login]

    def login
        user = User.find_by(name: auth_param[:name])
        if user && user.authenticate(auth_param[:password])
            render json: {user: user, token: JWT.encode({user_id: user.id}, ENV['SECRET'])}
        else 
            render json: {token: "Incorrect name or password"}
        end
    end

    private

    def auth_param
        params.require(:auth).permit(:name, :password)
    end

end
