class Api::V1::LinksController < ApplicationController
    
    before_action :authorized

    def getUserLinks
        user = current_user
        render json: {links: user.objectives.map{|objective| objective.afters_links[0]}.filter{|link| link != nil}}
    end

end