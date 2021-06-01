class Api::V1::ObjectivesController < ApplicationController
    
    before_action :authorized

    def getUserObjectives
        user = current_user
        render json: {objectives: user.objectives}
    end

    def createNoLink
        user = current_user
        newObj = Objective.create(name: params[:name], user: user, description: params[:description], duration: params[:duration], seconds: params[:seconds], minutes: params[:minutes], hours: params[:hours], days: params[:days], months: params[:months], years: params[:years])
        render json: {objective: newObj}
    end

    def newObjLink
        user = current_user
        newObj = Objective.create(name: params[:name], user: user, description: params[:description], duration: params[:duration], seconds: params[:seconds], minutes: params[:minutes], hours: params[:hours], days: params[:days], months: params[:months], years: params[:years])
        newlink = Link.create(before_id: params[:linkedObjectiveid], after_id: newObj.id, delay: params[:delay])
        render json: {objective: newObj, link: newlink}

    end


end
