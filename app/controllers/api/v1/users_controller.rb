class Api::V1::UsersController < ApplicationController

    skip_before_action :authorized, only: [:create]
    
    def create
        User.create(name: params[:name], password: params[:password])
    end


end
