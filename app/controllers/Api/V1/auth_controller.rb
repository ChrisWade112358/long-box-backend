class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        user = User.find_by(email: params[:user][:email])
        if user && user.authenticate(params[:user][:password])
            token = encode_token({user_id: user.id})
            render json: {user: user, jwt: token }, status: :accepted
        else
            render json: {message: 'Invalid username or password'}, status: :unauthorized
        end
    end

    

end