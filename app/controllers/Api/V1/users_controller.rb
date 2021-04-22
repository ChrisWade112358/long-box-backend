class Api::V1::UsersController < ApplicationController
    
    def index
        render json: { status: "It's working" }
    end
end
