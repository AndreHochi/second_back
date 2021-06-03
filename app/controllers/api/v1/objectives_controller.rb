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

    def deleteObj
        user = current_user
        obj = Objective.all.find_by(id: params[:id])
        obj.afters_links.destroy_all
        obj.befores_links.destroy_all
        obj.destroy
    end

    def editObj
        user = current_user
        objectives = params[:data]
        allObjectives = Objective.all
        objectives.each{|objective| allObjectives.find{|objectivea| objectivea["id"] == objective["id"].to_i}.update(name: objective["name"], description: objective["description"], duration: objective["duration"].to_i, years: objective["years"], months: objective["months"], days: objective["days"], hours: objective["hours"], minutes: objective["minutes"], seconds: objective["seconds"])}
    end

end
