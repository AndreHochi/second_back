class Api::V1::ObjectivesController < ApplicationController
    
    before_action :authorized

    def getUserObjectives
        user = current_user
        render json: {objectives: user.objectives}
    end

end
