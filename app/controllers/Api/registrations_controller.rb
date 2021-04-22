class Api::V1::RegistrationsController < ApplicationController


    def create
        user = User.create!(
            firstName: params['user']['firstName'],
            lastName: params['user']['lastName'],
            email: params['user']["email"],
            address: params['user']['address'],
            city: params['user']['city'],
            state: params['user']['state'],
            zip: params['user']['zip'],
            uuid: params['user']['uuid']
            password: params['user']['password']
            password_confirmation: params['user']['password']

        )

        if user
            session[:user_id] = user.index
            render json: {
                status: created,
                user: user,
            }
        else
            render json: { status: 500 }
        end
    end

end