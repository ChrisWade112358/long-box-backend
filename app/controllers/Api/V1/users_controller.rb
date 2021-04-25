class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]
    
    def index
        render json: { status: "It's working" }
    end

    def create
        user = User.create!(
            firstName: params[:user][:firstname],
            lastName: params[:user][:lastName],
            email: params[:user][:email],
            address: params[:user][:address],
            city: params[:user][:city],
            state: params[:user][:state],
            zip: params[:user][:zip],
            password: params[:user][:password],
            password_confirmation: params[:user][:password],
        )

        if user
            @token = encode_token(user_id: user.id)
            render json: {
                user: user, jwt: @token
            }, status: :created
        else
            render json: { status: 500 }
        end
    end


end
