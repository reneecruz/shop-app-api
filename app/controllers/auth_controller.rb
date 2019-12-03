  class AuthController < ApplicationController 

    def login
        user = User.find_by(username: login_params[:username])
        
        if user && user.authenticate(login_params[:password])
            payload = {user_id: user.id} 
            token = JWT.encode(payload, secret, "HS256")
            render json: {user: user, token: token}
        else 
            render json: {errors: user.errors.full_messages}
        end
    end 

    def persist
        encoded_token = request.headers['Authorization']
        decoded_token = JWT.decode(encoded_token, secret, true, { algorithm: 'HS256' })
        user_id = decoded_token[0]["user_id"]
        user = User.find(user_id)
        if user 
            render json: user, include: '**'
        end
    end

    private 

    def login_params
        params.permit(:username, :password)
    end 

end