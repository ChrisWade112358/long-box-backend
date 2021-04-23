class Api::V1::RegistrationsController < ApplicationController


    def create
        user = User.create!(
            firstName: params[:tempUser][:firstname],
            lastName: params[:tempUser][:lastName],
            email: params[:tempUser][:email],
            address: params[:tempUser][:address],
            city: params[:tempUser][:city],
            state: params[:tempUser][:state],
            zip: params[:tempUser][:zip],
            uuid: params[:tempUser][:uuid],
            password: params[:tempUser][:password],
            password_confirmation: params[:tempUser][:password],
        )

        if user
            session[:user_id] = user.id
            render json: {
                status: :created,
                user: user
            }
        else
            render json: { status: 500 }
        end
    end

    

end